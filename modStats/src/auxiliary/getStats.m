function [avgs, avg, stdDev, relStdDev] = getStats(fun, nSamples, nGrads, ...
    gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr ...
)

% DESCRIPTION %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Obtain statistical information about a velocity-gradient-based quantity.
%
% INPUT %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% fun       function name or handle -- A function of the velocity gradient.
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
% nSamples      int -- Desired number of samples.
%
% nGrads        int -- Desired number of velocity gradients per sample.
%
% gradsFun      function name or handle -- Generator of the velocity gradients.
%                   Examples: 'unifMats', 'normMats', a custom function reading 
%                       velocity gradients from a file, etc.
%
% spaceDims     int -- Number of spatial dimensions.
%                   Examples: 2 or 3.
%
% flowDims      vector of ints -- Flow dimensions.
%                   Examples: [1, 2] or [1, 2, 3].
%
% makeIncompr   bool -- Make the velocity gradients incompressible (traceless)
%                   or not.
%
% checkIncompr  bool -- Check the incompressibility of the velocity gradients
%                   or not.
%
% OUTPUT %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% avgs          array of scalars/vectors/matrices -- Sample averages.
%
% avg           scalar/vector/matrix of doubles -- Sample average.
%
% stdDev        scalar/vector/matrix of doubles -- Sample standard deviation.
%
% relStdDev     scalar/vector/matrix of doubles -- Sample relative standard
%                   deviation.
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

%% Initialize variables
% Number of velocity-gradient-based quantities to compute
nQuants = nargin(fun);

% Test quantities
testQts = compQuants( zeros(spaceDims, spaceDims), nQuants );

% Size of values
sVals = size( evalFun(fun, testQts) );

% Array of averages
avgs = zeros( sVals(1), sVals(2), nSamples );

for ix = 1 : nSamples
    % Set the sample number
    sampleNr = ix;

    % Obtain a sample of velocity gradients
    grads = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

    % Compute velocity-gradient-based quantities
    quants = compQuants(grads, nQuants);

    % Compute function values
    funVals = evalFun(fun, quants);

    % Compute function averages
    avgs(:, :, ix) = compAvg(funVals);

end

% Compute the function statistics
[avg, stdDev, relStdDev] = compStats(avgs);

end
