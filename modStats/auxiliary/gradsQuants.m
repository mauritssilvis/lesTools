function gradsQts = gradsQuants(grads, nQuants)

% DESCRIPTION %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Compute quantities derived from the velocity gradient.
%
% INPUT %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% grads     array of matrices -- Velocity gradient.
%
% nQuants   int -- Number of velocity-gradient-based quantities to compute.
%               The value of this argument should lie between 1 and 9,
%               indicating how many of the following quantities will be
%               computed per supplied velocity gradient:
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
% gradsQts  cell of array of matrices -- Quantities derived from the velocity 
%               gradient.
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

%% Initialize variables
% Size of gradients matrix
sGrads = size(grads);
% Number of gradients
nGrads = size(grads, 3);

% Output storage
gradsQts = cell(1, nQuants);

%% Store velocity gradient
% Velocity gradients
G = grads;

% Add to list of quantities
gradsQts{1} = G;

%% Compute and store derived quantities, if needed
if nQuants >= 2
    % Transposed velocity gradients
    GT = permute(G, [2 1 3]);

    % Rate-of-strain tensors
    S = 1 / 2 * ( G + GT );

    % Add to list of quantities
    gradsQts{2} = S;
end

if nQuants >= 3
    % Rate-of-rotation tensors
    W = 1 / 2 * ( G - GT );

    % Add to list of quantities
    gradsQts{3} = W;
end

if nQuants >= 4
    % Initialize variables
    SS = zeros(sGrads);
    I1 = zeros(1, 1, nGrads);

    for ix = 1 : nGrads
        % Squared rate-of-strain tensor
        SS(:, :, ix) = S(:, :, ix) * S(:, :, ix);
        % Combined invariant of the rate-of-strain and rate-of-rotation tensor
        I1(1, 1, ix) = trace( SS(:, :, ix) );
    end

    % Add to list of quantities
    gradsQts{4} = I1;
end

if nQuants >= 5
    % Initialize variables
    WW = zeros(sGrads);
    I2 = zeros(1, 1, nGrads);

    for ix = 1 : nGrads
        % Squared rate-of-rotation tensor
        WW(:, :, ix) = W(:, :, ix) * W(:, :, ix);
        % Combined invariant of the rate-of-strain and rate-of-rotation tensor
        I2(1, 1, ix) = trace( WW(:, :, ix) );
    end

    % Add to list of quantities
    gradsQts{5} = I2;
end

if nQuants >= 6
    % Initialize variables
    SSS = zeros(sGrads);
    I3 = zeros(1, 1, nGrads);

    for ix = 1 : nGrads
        % Third power of the rate-of-strain tensor
        SSS(:, :, ix) = S(:, :, ix) * SS(:, :, ix);
        % Combined invariant of the rate-of-strain and rate-of-rotation tensor
        I3(1, 1, ix) = trace( SSS(:, :, ix) );
    end

    % Add to list of quantities
    gradsQts{6} = I3;
end

if nQuants >= 7
    % Initialize variables
    SWW = zeros(sGrads);
    I4 = zeros(1, 1, nGrads);

    for ix = 1 : nGrads
        % Product of the rate-of-strain and squared rate-of-rotation tensors
        SWW(:, :, ix) = S(:, :, ix) * WW(:, :, ix);
        % Combined invariant of the rate-of-strain and rate-of-rotation tensor
        I4(1, 1, ix) = trace( SWW(:, :, ix) );
    end

    % Add to list of quantities
    gradsQts{7} = I4;
end

if nQuants >= 8
    % Initialize variables
    SSWW = zeros(sGrads);
    I5 = zeros(1, 1, nGrads);

    for ix = 1 : nGrads
        % Product of the squared rate-of-strain and rate-of-rotation tensors
        SSWW(:, :, ix) = SS(:, :, ix) * WW(:, :, ix);
        % Combined invariant of the rate-of-strain and rate-of-rotation tensor
        I5(1, 1, ix) = trace( SSWW(:, :, ix) );
    end

    % Add to list of quantities
    gradsQts{8} = I5;
end

if nQuants >= 9
    % Initialize variables
    SSWWSW = zeros(sGrads);
    I6 = zeros(1, 1, nGrads);

    for ix = 1 : nGrads
        % Product of the rate-of-strain and rate-of-rotation tensors
        SW(:, :, ix) = S(:, :, ix) * W(:, :, ix);
        % Combined invariant of the rate-of-strain and rate-of-rotation tensor
        I6(1, 1, ix) = trace( SW(:, :, ix) );
    end

    % Add to list of quantities
    gradsQts{9} = I6;
end

end
