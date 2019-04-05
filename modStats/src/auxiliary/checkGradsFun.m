function state = checkGradsFun(gradsFun, spaceDims)

% DESCRIPTION %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Check if the supplied variable represents a valid gradient-generating 
% function.
%
% INPUT %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% gradsFun      function name or handle -- Alleged generator of velocity 
%                   gradients.
%
% spaceDims     int -- Number of spatial dimensions.
%                   Examples: 2 or 3.
%
% OUTPUT %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% state      int -- Zero if the supplied variable represents a valid generator
%               of velocity gradients.
%
% LICENSE %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Copyright (c) 2019 Maurits H. Silvis
%
% This file is subject to the terms and conditions defined in
% the MIT License, which can be found in the file 'license.txt'
% that is part of this source code package.
%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Check input
% Check if 'gradsFun' is provided
if nargin < 1 || isempty(gradsFun)
    % No variable was provided for 'gradsFun'
    state = 1;
    return;
end

% Check if 'gradsFun' represents an existing function or a function handle
if ( ~isa(gradsFun, 'char') || exist(gradsFun, 'file') ~= 2 ) && ...
    ~isa(gradsFun, 'function_handle')
    % The variable 'gradsFun' does not represent an existing function or function 
    % handle
    state = 2;
    return;
end

% Check if 'spaceDims' is provided
if nargin < 2 || isempty(spaceDims)
    error('Please provide the number of spatial dimensions ''spaceDims''.');
end

%% Check argument number
% Check if 'gradsFun' has the proper number of arguments

% Number of arguments
nArgs = nargin(gradsFun);

% Check
if nArgs ~= 3
    % The function 'gradsFun' does not have the proper number of arguments
    state = 3;
    return;
end

%% Check input size
% Check if 'gradsFun' allows for input of the right size

% Define parameters
sampleNr = 1;
nGrads = 1;

% Obtain value
try
    feval( gradsFun, sampleNr, nGrads, spaceDims);
    fail = false;
catch
    fail = true;
end

% Check
if fail
    % The function 'gradsFun' does not allow for input of the right size
    state = 4;
    return;
end

%% Check the output type
% Check if 'gradsFun' has the proper output type
% Initialize variables
sampleNr = 1;
nChecks = 5;

% Loop over all checks
for ix = 1 : nChecks
    % Define parameters
    nGrads = ix;

    % Obtain value
    try
        val = feval( gradsFun, sampleNr, nGrads, spaceDims);
    catch
        state = 5;
        return;
    end

    % Define expected type
    expType = 'double';

    % Check
    if ~isa(val, expType)
        % Output not of expected type
        state = 6;
        return;
    end
end

%% Check the output size
% Check if 'gradsFun' returns a matrix of the proper size

% Define parameters
sampleNr = 1;
nChecks = 5;

% Loop over all checks
for ix = 1 : nChecks
    % Define parameters
    nGrads = ix;

    % Obtain value
    try
        val = feval( gradsFun, sampleNr, nGrads, spaceDims);
    catch
        state = 5;
        return;
    end

    % Obtain actual size
    actSize = [size(val, 1), size(val, 2), size(val, 3)];

    % Define expected size
    expSize = [spaceDims, spaceDims, nGrads];

    % Check
    if numel( size(val) ) > numel(expSize) || any(actSize ~= expSize)
        % Output not of expected size
        state = 6;
        return;
    end
end

%% Checks passed
% Set passed state
state = 0;

end
