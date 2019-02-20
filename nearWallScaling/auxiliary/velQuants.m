function velQts = velQuants(vel, nQuants)

% DESCRIPTION %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Compute quantities derived from the velocity field.
%
% INPUT %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% vel       syms -- Expansion of an incompressible velocity field in terms of a 
%               wall-normal coordinate y, as obtained from the function 
%               velExpand().
%
% nQuants   int -- Number of velocity-based quantities to compute.
%               The value of this argument should lie between 1 and 10,
%               indicating how many of the following quantities will be
%               computed:
%               - the velocity field 'vel' (a 3 x 1 vector)
%               - the velocity gradient 'G' (a 3 x 3 matrix),
%               - the rate-of-strain tensor 'S' (a 3 x 3 matrix),
%               - the rate-of-rotation tensor 'W' (a 3 x 3 matrix),
%               - the following scalar combined invariants of the rate-of-strain
%                 and rate-of-rotation tensors:
%                 - I1 = trace(S^2),
%                 - I2 = trace(W^2),
%                 - I3 = trace(S^3),
%                 - I4 = trace(S W^2),
%                 - I5 = trace(S^2 W^2),
%                 - I6 = trace(S^2 W^2 S W).
%
% OUTPUT %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% velQts    cell of syms -- Quantities derived from the velocity field.
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
% Check velocity field
if nargin < 1 || any(size(vel) ~= [3, 1])
    error('Please provide a 3 x 1 velocity vector ''vel''.');
end

% Check number of desired derived quantities
if nargin < 2 || isempty(nQuants) || ~isa(nQuants, 'double') || ...
    mod(nQuants, 1) ~= 0 || nQuants < 1 || nQuants > 10

    error( ...
        ['Please specify the number of desired derived quantities '...
         '''nQuants'' as an integer between 1 and 10.'] ...
    );
end

%% Initialize symbols
syms x y z % Coordinates (y is assumed to be the wall-normal coordinate)

%% Initialize variables
% Velocity field components
u = vel(1);
v = vel(2);
w = vel(3);

% Output storage
velQts = {vel};

%% Compute derived quantities, if needed
if nQuants >= 2
    % Velocity gradient
    G = [
        diff(u, x), diff(u, y), diff(u, z);
        diff(v, x), diff(v, y), diff(v, z);
        diff(w, x), diff(w, y), diff(w, z);
    ];

    % Add to list of quantities
    velQts = [velQts, {G}];
end

if nQuants >=  3
    % Rate-of-strain tensor
    S = 1 / 2 * ( G + G.' );

    % Add to list of quantities
    velQts = [velQts, {S}];
end

if nQuants >= 4
    % Rate-of-rotation tensor
    W = 1 / 2 * ( G - G.' );

    % Add to list of quantities
    velQts = [velQts, {W}];
end

if nQuants >= 5
    % Combined invariant of the rate-of-strain and rate-of-rotation tensors
    SS = S * S;
    I1 = trace( SS );

    % Add to list of quantities
    velQts = [velQts, {I1}];
end

if nQuants >= 6
    % Combined invariant of the rate-of-strain and rate-of-rotation tensors
    WW = W * W;
    I2 = trace( WW );

    % Add to list of quantities
    velQts = [velQts, {I2}];
end

if nQuants >= 7
    % Combined invariant of the rate-of-strain and rate-of-rotation tensors
    SSS = S * SS;
    I3 = trace( SSS );

    % Add to list of quantities
    velQts = [velQts, {I3}];
end

if nQuants >= 8
    % Combined invariant of the rate-of-strain and rate-of-rotation tensors
    SWW = S * WW;
    I4 = trace( SWW );

    % Add to list of quantities
    velQts = [velQts, {I4}];
end

if nQuants >= 9
    % Combined invariant of the rate-of-strain and rate-of-rotation tensors
    SSWW = SS * WW;
    I5 = trace( SSWW );

    % Add to list of quantities
    velQts = [velQts, {I5}];
end

if nQuants >= 10
    % Combined invariant of the rate-of-strain and rate-of-rotation tensors
    SW = S * W;
    SSWWSW = SSWW * SW;
    I6 = trace( SSWWSW );

    % Add to list of quantities
    velQts = [velQts, {I6}];
end

end
