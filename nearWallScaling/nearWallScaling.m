function [scal, expn] = nearWallScaling(fun, ord)

% DESCRIPTION %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Determine the near-wall scaling behavior of a physical quantity that depends 
% on the velocity field and/or the velocity gradient of an incompressible 
% turbulent flow.
%
% INPUT %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% fun   function name or handle -- A function of the velocity field and/or the
%           velocity gradient.
%           This function should accept between 1 and 10 arguments.
%           The first argument should be
%           - the velocity field (which will be inserted as a 3 x 1 vector).
%           The next arguments, if present, are assumed to be
%           - the velocity gradient G (a 3 x 3 matrix),
%           - the rate-of-strain tensor S (a 3 x 3 matrix),
%           - the rate-of-rotation tensor W (a 3 x 3 matrix),
%           and the following scalar combined invariants of the rate-of-strain
%           and rate-of-rotation tensors:
%           - I1 = trace(S^2),
%           - I2 = trace(W^2),
%           - I3 = trace(S^3),
%           - I4 = trace(S W^2),
%           - I5 = trace(S^2 W^2),
%           - I6 = trace(S^2 W^2 S W).
%           Note that fractions, fractional powers and special functions of the
%           velocity field and/or gradient are not accepted.
%           Examples:
%               @(vel) vel(1) % The x-component of the velocity field
%               @(vel, G, S) S % The rate-of-strain tensor
%               @(vel, G, S, W, I1, I2) I1 + I2 % Invariants 1 + 2
%               ...
%
% ord   int -- Polynomial order of the expansion of the velocity field in terms
%           of a wall-normal coordinate y.
%           Default: 1
%
% OUTPUT %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% scal  syms -- Near-wall scaling behavior of the given function in terms of a
%           wall-normal coordinate y.
%
% expn  syms -- Near-wall expansion of the given function in terms of a
%           wall-normal coordinate y.
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
% Check if the first input argument represents a(n existing) function
if nargin < 1 || ( ( ~isa(fun, 'char') || exist(fun, 'file') ~= 2 ) && ...
    ~isa(fun, 'function_handle') )

    error( ...
        ['Please provide the provide the name of an existing funtion (in ', ...
         'the form of a character array) or a function handle for ''fun''.'] ...
    );
end

% Check if the second argument is provided
if nargin < 2 || isempty(ord)
    % Empty, set default value
    ord = 1;
% Check if the second argument is a positive integer
elseif ~isa(ord, 'double') || mod(ord, 1) ~= 0 || ord < 0
    error( ...
        ['Please provide a positive integer for ''ord'' ', ...
         'or leave empty for the default value.'] ...
    );
end

%% Add path to auxiliary functions
scriptPath = fileparts(which(mfilename));
addpath([scriptPath, '/', 'auxiliary']);

%% Preparations
% Obtain an expansion (of the desired order) of an incompressible velocity field 
% in terms of a wall-normal coordinate y
vel = velExpand(ord);

% Determine the required number of velocity-dependent quantities
nQuants = nargin(fun);

% Compute quantities derived from the velocity field
velQts = velQuants(vel, nQuants);

% Compute the near-wall expansion of the given function
expn = nearWallExpand(fun, velQts);

% Determine the lowest power of the wall-normal coordinate y in the expansion
scal = expnScaling(expn);

end
