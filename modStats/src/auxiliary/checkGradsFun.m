function [state, msg] = checkGradsFun(gradsFun, spaceDims)

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
% state         int -- Zero if the supplied variable represents a valid 
%                   generator of velocity gradients.
%
% msg           char -- Error message.
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
if nargin < 1
    error('Please provide a function file name or handle for ''gradsFun''.');
end

% Check if 'spaceDims' is a positive integer
if nargin < 2 || isempty(spaceDims) || ~isa(spaceDims, 'double') || ...
    numel( size(spaceDims) ) ~= 2 || any( size(spaceDims) ~= [1 1] ) || ...
    spaceDims < 1 || mod(spaceDims, 1) ~= 0

    error( ...
        ['Please provide a positive integer for the number of spatial ', ...
         'dimensions ''spaceDims''.'] ...
    );
end

%% Initialize variables
% Error message
msg = '';

%% Check if 'gradsFun' is nonempty
if isempty(gradsFun)
    state = 1;
    msg = 'The variable ''gradsFun'' is empty.';
    return;
end

%% Check if 'gradsFun' represents an existing file name or a function handle
if ( ~isa(gradsFun, 'char') || exist(gradsFun, 'file') ~= 2 ) && ...
    ~isa(gradsFun, 'function_handle')

    state = 2;
    msg = ...
        ['The variable ''gradsFun'' does not represent an existing file ', ...
         'name or function handle.'];
    return;
end

%% Check if 'gradsFun' represents an evaluable function
% Try
try
    nargin(gradsFun);
    fail = false;
catch
    fail = true;
end

% Check
if fail
    state = 3;
    msg = 'The variable ''gradsFun'' does not represent an evaluable function.';
    return;
end

%% Check argument number
% Check if 'gradsFun' has the proper number of input arguments

% Number of arguments
nArgs = nargin(gradsFun);

% Check
if nArgs ~= 3
    state = 4;
    msg = ...
        ['The function ''gradsFun'' does not have the proper number of ', ...
         'input arguments.'];
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
    state = 5;
    msg = ...
        ['The function ''gradsFun'' does not allow for input of the right ', ...
         'size.'];
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
        state = 6;
        msg = 'The function ''gradsFun'' cannot be evaluated.';
        return;
    end

    % Define expected type
    expType = 'double';

    % Check
    if ~isa(val, expType)
        state = 7;
        msg = ...
            ['The output of ''gradsFun'' is not of the expected type ', ...
             '''', expType, '''.'];
        return;
    end
end

%% Check the output size
% Check if the output of 'gradsFun' is not empty

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
        state = 8;
        msg = 'The function ''gradsFun'' cannot be evaluated.';
        return;
    end

    if isempty(val)
        state = 9;
        msg = 'The function ''gradsFun'' has empty output.';
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
        state = 10;
        msg = 'The function ''gradsFun'' cannot be evaluated.';
        return;
    end

    % Obtain actual size
    actSize = [size(val, 1), size(val, 2), size(val, 3)];

    % Define expected size
    expSize = [spaceDims, spaceDims, nGrads];

    % Check
    if numel( size(val) ) > numel(expSize) || any(actSize ~= expSize)
        % Output not of expected size
        state = 11;
        msg = 'The output of ''gradsFun'' is not of the expected size.';
        return;
    end
end

%% Checks passed
% Set passed state
state = 0;

end
