function [state, msg] = checkFun(fun, spaceDims)

% DESCRIPTION %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Check if the supplied variable represents a valid function of the velocity
% gradient.
%
% INPUT %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% fun           function name or handle -- Alleged function of the velocity 
%                   gradient.
%
% spaceDims     int -- Number of spatial dimensions.
%                   Examples: 2 or 3.
%
% OUTPUT %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% state         int -- Zero if the supplied variable represents a valid function
%                   of the velocity gradient.
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
% Check if 'fun' is provided
if nargin < 1
    error('Please provide a function file name or handle for ''fun''.');
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

%% Check if 'fun' is nonempty
if isempty(fun)
    state = 1;
    msg = 'The variable ''fun'' is empty.';
    return;
end

%% Check if 'fun' represents an existing file name or a function handle
if ( ~isa(fun, 'char') || exist(fun, 'file') ~= 2 ) && ...
    ~isa(fun, 'function_handle')

    state = 2;
    msg = ...
        ['The variable ''fun'' does not represent an existing file name ', ...
        'or function handle.'];
    return;
end

%% Check if 'fun' represents an evaluable function
% Try
try
    nargin(fun);
    fail = false;
catch
    fail = true;
end

% Check
if fail
    state = 3;
    msg = 'The variable ''fun'' does not represent an evaluable function.';
    return;
end

%% Check argument number
% Check if 'fun' has the proper number of input arguments

% Number of arguments
nArgs = nargin(fun);

% Check
if nArgs < 1 || nArgs > 9
    state = 4;
    msg = ...
        ['The function ''fun'' does not have the proper number of input ', ...
         'arguments.'];
    return;
end

%% Check input size
% Check if 'fun' allows for input of the right size

% Define parameters
nGrads = 1;
grads = zeros(spaceDims, spaceDims, nGrads);
nQuants = nArgs;
quants = compQuants(grads, nQuants);

% Obtain value
try
    feval( fun, quants{:} );
    fail = false;
catch
    fail = true;
end

% Check
if fail
    state = 5;
    msg = 'The function ''fun'' does not allow for input of the right size.';
    return;
end

%% Check the output type
% Check if 'fun' has the proper output type

% Initialize variables
nChecks = 5;
nQuants = nArgs;

% Loop over all checks
for ix = 1 : nChecks
    % Define parameters
    nGrads = ix;
    grads = zeros(spaceDims, spaceDims, nGrads);
    quants = compQuants(grads, nQuants);

    % Loop over all gradients
    for jx = 1 : nGrads

        % Store current velocity-gradient-based quantities
        qts = [];
        for kx = nQuants : -1 : 1
            qts{kx} = quants{kx}(:, :, ix);
        end

        % Obtain value
        try
            val = feval( fun, qts{:} );
        catch
            state = 6;
            msg = 'The function ''fun'' cannot be evaluated.';
            return;
        end

        % Define expected type
        expType = 'double';

        % Check
        if ~isa(val, expType)
            state = 7;
            msg = ...
                ['The output of ''fun'' is not of the expected type ', ...
                 '''', expType, '''.'];
            return;
        end
    end
end

%% Check the output size
% Check if the output of 'fun' is not empty

% Define parameters
nGrads = 1;
grads = zeros(spaceDims, spaceDims, nGrads);
nQuants = nArgs;
quants = compQuants(grads, nQuants);

% Obtain value
try
    val = feval( fun, quants{:} );
catch
    state = 8;
    msg = 'The function ''fun'' cannot be evaluated.';
    return;
end

% Check
if isempty(val)
    state = 9;
    msg = 'The function ''fun'' has empty output.';
    return;
end

%% Check the output size
% Check if 'fun' returns a scalar, a vector or a matrix

% Obtain actual dimension
actDim = numel( size(val) );

% Define expected dimension
expDim = 2;

% Check
if actDim < expDim
    state = 10;
    msg = 'The output of ''fun'' has an unexpected size.';
    return;
elseif actDim > expDim
    state = 11;
    msg = 'The function ''fun'' returns a tensor of rank higher than 2.';
    return;
end

%% Checks passed
% Set passed state
state = 0;

end
