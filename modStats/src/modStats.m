function stats = modStats(fun, precision, nSamples, nGrads, gradsFun, ...
    spaceDims, flowDims, makeIncompr, checkIncompr ...
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
%                   This function should should accept between 1 and 9 
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
%                   If set to 0, nGrads has to be set.
%
% nSamples      positive int -- Desired number of samples.
%                   Examples: 10, 100, 1000, ...
%                   Default: 100.
%
% nGrads        positive int -- Desired number of velocity gradients per sample.
%                   Examples: 10^2, 10^4, 10^6, ...
%                   Default: 10^6.
%                   If precision is nonzero, the value of nGrads represents the
%                   initial number of velocity gradients per sample.
%
% gradsFun      function name or handle -- Generator of the velocity gradients.
%                   Examples: 'unifMats', 'normMats', a custom function reading 
%                       velocity gradients from a file, etc.
%                   Default: 'unifMats'.
%
% spaceDims     positive int -- Number of spatial dimensions.
%                   Examples: 2 or 3.
%                   Default: 3.
%
% flowDims      vector of positive ints -- Flow dimensions.
%                   Examples: [1, 2] or [1, 2, 3].
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
% OUTPUT %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% stats         struct -- Statistical data about the physical quantity of
%                   interest.
%                   This structure has fields:
%                   - fun: file name or handle of a function of the velocity 
%                       gradient,
%                   - nSamples: number of samples,
%                   - nGrads: number of velocity gradients per sample,
%                   - gradsFun: name or handle of the function generating
%                       velocity gradients,
%                   - spaceDims: number of spatial dimensions,
%                   - flowDims: flow dimensions,
%                   - avgs: averages of function value samples,
%                   - avg: average of sample averages,
%                   - stdDev: standard deviation of sample averages,
%                   - relStdDev: relative standard deviation of sample averages.
%
% LICENSE %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
            ['If ''precision'' is explicitly set as empty, ''nGrads'' has ', ...
             'to be provided.'] ...
        );
    else
        % No, set the default value
        nGrads = 10^6;
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
    flowDims = [1, 2, 3];
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
if ~isa(makeIncompr, 'logical')
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
if ~isa(checkIncompr, 'logical')
    % No, error
    error( ...
        ['Please provide a bool for ''checkIncompr'' or leave empty for ', ...
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

%% Initialize output variables
% Statistics
stats = [];

end
