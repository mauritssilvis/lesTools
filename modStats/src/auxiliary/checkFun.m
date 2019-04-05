function state = checkFun(fun, spaceDims)

% DESCRIPTION %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Check if the supplied variable represents a valid function of the velocity
% gradient.
%
% INPUT %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% fun       function name or handle -- Alleged function of the velocity 
%               gradient.
%               This function should should accept between 1 and 9 arguments.
%               The first argument should be 
%               - the velocity gradient G (a matrix).
%               The next arguments, if present, are assumed to be
%               - the rate-of-strain tensor S (a matrix),
%               - the rate-of-rotation tensor W (a matrix),
%               and the following scalar combined invariants of the 
%               rate-of-strain and rate-of-rotation tensors:
%               - I1 = trace(S^2),
%               - I2 = trace(W^2),
%               - I3 = trace(S^3),
%               - I4 = trace(S W^2),
%               - I5 = trace(S^2 W^2),
%               - I6 = trace(S^2 W^2 S W).
%               Examples:
%                   ...
%
% spaceDims     int -- Number of spatial dimensions.
%                   Examples: 2 or 3.
%
% OUTPUT %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% state      int -- Zero if the supplied variable represents a valid function
%               of the velocity gradient.
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
if nargin < 1 || isempty(fun)
    % No variable was provided for 'fun'
    state = 1;
    return;
end

% Check if 'fun' represents an existing function or a function handle
if ( ~isa(fun, 'char') || exist(fun, 'file') ~= 2 ) && ...
    ~isa(fun, 'function_handle')
    % The variable 'fun' does not represent an existing function or function 
    % handle
    state = 2;
    return;
end

% Check if 'spaceDims' is provided
if nargin < 2 || isempty(spaceDims)
    error('Please provide the number of spatial dimensions ''spaceDims''.');
end

%% Check argument number
% Check if 'fun' has the proper number of arguments

% Number of arguments
nArgs = nargin(fun);

% Check
if nArgs < 1 || nArgs > 9
    % The function 'fun' does not have the proper number of arguments
    state = 3;
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
    % The function 'fun' does not allow for input of the right size
    state = 4;
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

    % Obtain value
    try
        val = feval( fun, quants{:} );
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
% Check if 'fun' returns a scalar, a vector or a matrix

% Define parameters
nGrads = 1;
grads = zeros(spaceDims, spaceDims, nGrads);
nQuants = nArgs;
quants = compQuants(grads, nQuants);

% Obtain value
try
    val = feval( fun, quants{:} );
catch
    state = 7;
    return;
end

% Obtain actual dimension
actDim = numel( size(val) );

% Define maximum dimension
maxDim = 2;

% Check
if actDim > maxDim
    % The function 'fun' returns a tensor of order higher than 2
    state = 8;
    return;
end

%% Checks passed
% Set passed state
state = 0;

end
