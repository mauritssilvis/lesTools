function stats = flowStats(fun, precision, nSamples, nGrads, gradsFun, ...
    spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg ...
)

% DESCRIPTION %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Determine the average behavior of a physical quantity that depends on the
% velocity gradient of a turbulent flow.
%
% INPUT %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Required input arguments:
%
% fun           function file name or handle -- A function of the velocity
%                   gradient.
%                   This function should accept between 1 and 9 
%                   arguments. The first argument should be 
%                   - the velocity gradient G (a matrix).
%                   The next arguments, if present, are assumed to be
%                   - the rate-of-strain tensor S (a matrix),
%                   - the rate-of-rotation tensor W (a matrix),
%                   and the following scalar combined invariants of the 
%                   rate-of-strain and rate-of-rotation tensors:
%                   - I1 = trace(S^2),
%                   - I2 = trace(W^2),
%                   - I3 = trace(S^3),
%                   - I4 = trace(S W^2),
%                   - I5 = trace(S^2 W^2),
%                   - I6 = trace(S^2 W^2 S W).
%                   Examples:
%                       ...
%
% Optional input arguments:
%
% precision     nonnegative double -- Desired minimal relative standard 
%                   deviation of the statistical data.
%                   Examples: 10^-2, 10^-4, ...
%                   Default: 10^-4.
%                   If set to zero, the number of velocity gradients per sample, 
%                   'nGrads', is not adaptively increased. In this case, 
%                   'nGrads' has to be specified manually.
%
% nSamples      positive int -- Desired number of samples.
%                   Examples: 10, 100, 1000, ...
%                   Default: 100.
%
% nGrads        positive int -- Desired number of velocity gradients per sample.
%                   Examples: 10^2, 10^4, 10^6, ...
%                   Default: 10^6.
%                   If 'precision' is zero, 'nGrads' is not adaptively 
%                   increased. If 'precision' is nonzero, the value of 'nGrads'  
%                   represents the initial number of velocity gradients per 
%                   sample.
%
% gradsFun      function name or handle -- Generator of velocity gradients.
%                   Examples: 'unifMats', 'normMats', a custom function reading 
%                       velocity gradients from a file, etc.
%                   Default: 'unifMats'.
%
% spaceDims     positive int -- Number of spatial dimensions.
%                   Examples: 2 or 3.
%                   Default: 3.
%
% flowDims      vector of positive ints -- Flow dimensions.
%                   Examples: [1, 2], [1, 2, 3], ...
%                   Default: [1, 2, 3].
%
% makeIncompr   bool -- Make the velocity gradients incompressible (traceless)
%                   or not.
%                   Default: true.
%
% checkIncompr  bool -- Check the incompressibility of the velocity gradients
%                   or not.
%                   Default: false.
%
% shiftAvg      double -- Shift to apply to averages.
%                   Examples: 0, 1, 10, ...
%                   Default: 1.
%                   If averages of the physical quantity of interest are small, 
%                   their relative standard deviation may not reach the desired
%                   precision. The averages will then be shifted by 'shiftAvg'.
%
% OUTPUT %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% stats         struct -- Statistical data about the physical quantity of
%                   interest.
%                   This structure contains all the provided input arguments, 
%                   the default values of any unspecified input arguments and 
%                   the following statistical data:
%                   - avgs: sample averages of the physical quantity,
%                   - avg: average of the sample averages,
%                   - dev: standard deviation of the sample averages,
%                   - relDev: relative standard deviation of the sample 
%                       averages,
%                   - relDevShift: relative standard deviation of the shifted  
%                       sample averages,
%                   - hasPrecision: flag that tells if the desired precision has
%                       been reached.
%
% LICENSE %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Copyright (c) 2016-2019 Maurits H. Silvis
%
% This file is subject to the terms and conditions defined in
% the MIT License, which can be found in the file 'license.txt'
% that is part of this source code package.
%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Add path to auxiliary functions
% Obtain script path
scriptPath = fileparts( which(mfilename) );
% Add path
addpath( fullfile(scriptPath, 'auxiliary') );

%% Check input arguments
% Check if 'fun' is provided
if nargin < 1 || isempty(fun)
    % No, error
    error( ...
        ['Please provide a file name or handle of a valid function of the ', ...
         'velocity gradient for ''fun''.'] ...
    );
end

% Check if 'fun' represents a valid function of the velocity gradient
% See below

% Check if 'precision' is provided
if nargin < 2 || isempty(precision)
    % No, set the default value
    precision = 10^-4;
end

% Check if 'precision' is set to zero
if precision == 0
    % Yes, fix the number of velocity gradients per sample
    fixNGrads = true;
else
    % No, do not fix the number of velocity gradients per sample
    fixNGrads = false;
end

% Check if 'precision' is either a positive double or zero
if ( ~isa(precision, 'double') || numel( size(precision) ) ~= 2 || ...
      any( size(precision) ~= [1 1] ) || precision <= 0 ) && ...
    precision ~= 0

    % No, error
    error( ...
        ['Please provide a nonnegative double for ''precision'' or leave ', ...
         'empty for the default value.'] ...
    );
end

% Check if 'nSamples' is provided
if nargin < 3 || isempty(nSamples)
    % No, set the default value
    nSamples = 100;
end

% Check if 'nSamples' is a positive integer
if ~isa(nSamples, 'double') || numel( size(nSamples) ) ~= 2 || ...
    any( size(nSamples) ~= [1 1] ) || nSamples < 1 || ...
    mod(nSamples, 1) ~= 0

    % No, error
    error( ...
        ['Please provide a positive integer for ''nSamples'' or leave ', ...
         'empty for the default value.'] ...
    );
end

% Check if 'nGrads' is provided
if nargin < 4 || isempty(nGrads)
    % No, check if 'nGrads' should have been provided
    if fixNGrads
        % Yes, error
        error( ...
            ['If ''precision'' is explicitly set to zero, ''nGrads'' has ', ...
             'to be provided.'] ...
        );
    else
        % No, set the default initial value
        nGrads = 10;
    end
end

% Check if 'nGrads' is a positive integer
if ~isa(nGrads, 'double') || numel( size(nGrads) ) ~= 2 || ...
    any( size(nGrads) ~= [1 1] ) || nGrads < 1 || ...
    mod(nGrads, 1) ~= 0

    % No, error
    error( ...
        ['Please provide a positive integer for ''nGrads'' or leave empty ', ...
         'for the default value.'] ...
    );
end

% Check if 'gradsFun' is provided
if nargin < 5 || isempty(gradsFun)
    % No, set the default value
    gradsFun = 'unifMats';
end

% Check if 'gradsFun' represents a valid gradient-generating function
% See below

% Check if 'spaceDims' is provided
if nargin < 6 || isempty(spaceDims)
    % No, set the default value
    spaceDims = 3;
end

% Check if 'spaceDims' is a positive integer
if ~isa(spaceDims, 'double') || numel( size(spaceDims) ) ~= 2 || ...
    any( size(spaceDims) ~= [1 1] ) || spaceDims < 1 || ...
    mod(spaceDims, 1) ~= 0

    % No, error
    error( ...
        ['Please provide a positive integer for ''spaceDims'' or ', ...
         'leave empty for the default value.'] ...
    );
end

% Check if 'flowDims' is provided
if nargin < 7 || isempty(flowDims)
    % No, set the default value
    flowDims = 1 : spaceDims;
end

% Check if 'flowDims' is a vector of positive integers with valid values
if ~isa(flowDims, 'double') || numel( size(flowDims) ) ~= 2 || ...
    ( size(flowDims, 1) ~= 1 && size(flowDims, 2) ~= 1 ) || ...
    any(flowDims < 1) || any(flowDims > spaceDims) || ...
    any( mod(flowDims, 1) ~= 0 )

    % No, error
    error( ...
        ['Please provide a vector of positive integers with valid values ', ...
        'for ''flowDims'' or leave empty for the default value.'] ...
    );
end

% Check if 'makeIncompr' is provided
if nargin < 8 || isempty(makeIncompr)
    % No, set the default value
    makeIncompr = true;
end

% Check if 'makeIncompr' is a bool
if ~isa(makeIncompr, 'logical') || numel( size(makeIncompr) ) ~= 2 || ...
    any( size(makeIncompr) ~= [1 1] )

    % No, error
    error( ...
        ['Please provide a bool for ''makeIncompr'' or leave empty for ', ...
         'the default value.'] ...
    );
end

% Check if 'checkIncompr' is provided
if nargin < 9 || isempty(checkIncompr)
    % No, set the default value
    checkIncompr = false;
end

% Check if 'checkIncompr' is a bool
if ~isa(checkIncompr, 'logical') || numel( size(checkIncompr) ) ~= 2 || ...
    any( size(checkIncompr) ~= [1 1] )

    % No, error
    error( ...
        ['Please provide a bool for ''checkIncompr'' or leave empty for ', ...
         'the default value.'] ...
    );
end

% Check if 'shiftAvg' is provided
if nargin < 10 || isempty(shiftAvg)
    % No, set the default value
    shiftAvg = 1;
end

% Check if 'shiftAvg' is a double
if ~isa(shiftAvg, 'double') || numel( size(shiftAvg) ) ~= 2 || ...
    any( size(shiftAvg) ~= [1 1] )

    % No, error
    error( ...
        ['Please provide a double for ''shiftAvg'' or leave empty for ', ...
         'the default value.'] ...
    );
end

% Check if 'fun' represents a valid function of the velocity gradient
[state, msg] = checkFun(fun, spaceDims);
if nargin < 1 || isempty(fun) || state
    error( ...
        [msg, newline, ...
         'Please provide a file name or handle of a valid function of the ', ...
         'velocity gradient for ''fun''.'] ...
    );
end

% Check if 'gradsFun' represents a valid gradient-generating function
[state, msg] = checkGradsFun(gradsFun, spaceDims);
if state
    error( ...
        [msg, newline, ...
         'Please provide a file name or handle of a valid gradient-', ...
         'generating function for ''gradsFun'' or leave empty for the ', ...
         'default value.'] ...
    );
end

%% Initialize variables
% Loop flag
loop = true;

% Loop index
ix = 1;

% Empty data
emptyData = repmat( {[]}, 1, 16 );

% Storage
stats(20) = storeStats( emptyData{:} );

%% Compute statistics
% Loop until the desired end state has been reached
while loop

    % Obtain statistics
    [avgs, avg, dev, relDev, relDevShift] = getStats(fun, nSamples, nGrads, ...
        gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);

    % Determine if the desired precision has been reached
    hasPrecision = checkPrecision(relDev, relDevShift, precision);

    % Store data
    stats(ix) = storeStats(fun, precision, nSamples, nGrads, gradsFun, ...
        spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg, avgs, avg, ...
        dev, relDev, relDevShift, hasPrecision);

    % Check if the desired precision has been reached
    if hasPrecision
        % Yes, set the loop flag to false
        loop = false;
    else
        % No, increase the number of velocity gradients per sample
        nGrads = nGrads * 10;

        % Increase the loop index
        ix = ix + 1;
    end
end

%% Truncate output variable
stats(ix + 1 : end) = [];

end
