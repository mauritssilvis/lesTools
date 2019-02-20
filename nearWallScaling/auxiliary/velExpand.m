function vel = velExpand(ord)

% DESCRIPTION %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Obtain an expansion of an incompressible velocity field in terms of a
% wall-normal coordinate y.
%
% INPUT %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% ord   int -- Polynomial order of the expansion of the velocity field in terms
%           of a wall-normal coordinate y.
%           Default: 1
%
% OUTPUT %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% vel   syms -- Expansion of an incompressible velocity field in terms of a 
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
% Check if the first argument is provided
if nargin < 2 || isempty(ord)
    % Empty, set default value
    ord = 1;
% Check if the first argument is a positive integer
elseif ~isa(ord, 'double') || mod(ord, 1) ~= 0 || ord < 0
    error( ...
        ['Please provide a positive integer for ''ord'' ', ...
         'or leave empty for the default value.'] ...
    );
end

%% Initialize symbols
% Coordinates (y is taken as the wall-normal coordinate)
syms x y z

% Index of terms
syms k

% Arbitrary functions
syms f(k, x, z) g(k, x, z)

%% Create velocity field variables
% Expansion of the tangential velocity components
u = symsum( f(k, x, z) * y^k , k, 1, ord); % O(y)
w = symsum( g(k, x, z) * y^k , k, 1, ord); % O(y)

% Expansion of the wall-normal component (from the incompressibility constraint)
v = -int(diff(u, x) + diff(w, z), y); % O(y^2)

% Store the velocity field in 3 x 1 vector
vel = [u; v; w];

end
