function stats = getStats(fun, precision)

% DESCRIPTION %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Obtain statistical information about a velocity-gradient-based quantity.
%
% INPUT %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% fun           function name or handle -- A function of the velocity gradient
%                   This function should have 1, 1 + 2 or 1 + 2 + 5 input
%                   arguments.
%                   The first input argument is assumed to be the velocity
%                   gradient G.
%                   The next two arguments are seen as the rate-of-strain tensor
%                   S and the rate-of-rotation tensor W.
%                   The last five arguments are seen as the following combined
%                   invariants of the rate-of-strain and rate-of-rotation
%                   tensors:
%                   I1 = trace(S^2),
%                   I2 = trace(W^2),
%                   I3 = trace(S^3),
%                   I4 = trace(S W^2),
%                   I5 = trace(S^2 W^2).
% precision     double -- Desired minimal relative standard deviation
%
% OUTPUT %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% stats         struct -- Statistical information about the function of the
%                   velocity gradient
%
% LICENSE %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Copyright (c) 2016-2018 Maurits H. Silvis
%
% This file is subject to the terms and conditions defined in
% the MIT License, which can be found in the file 'license.txt'
% that is part of this source code package.
%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Initialize variables
converged = false;                      % Set the converged flag to false
sumPows = 1;                            % Set the initial number of statistical
                                        % samples to 10^sumPows

while ~converged

    sumPows = sumPows + 1;              % Increase the number of samples

    for expPow = 1 : sumPows - 1
        nExps = 10^expPow;

        samplePow = sumPows - expPow;
        nSamples = 10^samplePow;

        stop;
        % TODO

    end

end

end
