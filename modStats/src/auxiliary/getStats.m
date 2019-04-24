function [avgs, avg, dev, relDev, relDevShift] = getStats(fun, nSamples, ...
    nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, ...
    shiftAvg ...
)

% DESCRIPTION %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Obtain statistical information about a velocity-gradient-based quantity.
%
% INPUT %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% fun           function file name or handle -- A function of the velocity 
%                   gradient.
%
% nSamples      int -- Desired number of samples.
%
% nGrads        int -- Desired number of velocity gradients per sample.
%
% gradsFun      function name or handle -- Generator of velocity gradients.
%
% spaceDims     int -- Number of spatial dimensions.
%
% flowDims      vector of ints -- Flow dimensions.
%
% makeIncompr   bool -- Make the velocity gradients incompressible (traceless)
%                   or not.
%
% checkIncompr  bool -- Check the incompressibility of the velocity gradients
%                   or not.
%
% shiftAvg      double -- Shift to apply to averages.
%
% OUTPUT %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% avgs          array of scalars/vectors/matrices -- Sample averages.
%
% avg           scalar/vector/matrix of doubles -- Average of sample averages.
%
% dev           scalar/vector/matrix of doubles -- Standard deviation of sample
%                   averages.
%
% relDev        scalar/vector/matrix of doubles -- Relative standard deviation
%                   of sample averages.
%
% relDevShift   scalar/vector/matrix of doubles -- Relative standard deviation
%                   of shifted sample averages.
%
% LICENSE %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
[avg, dev, relDev, relDevShift] = compStats(avgs, shiftAvg);

end
