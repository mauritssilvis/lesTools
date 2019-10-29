function stats = storeStats(fun, precision, nSamples, nGrads, gradsFun, ...
    spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg, avgs, avg, ...
    dev, relDev, relDevShift, hasPrecision ...
)

% DESCRIPTION %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Store statistical data in a struct.
%
% INPUT %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% fun           function file name or handle -- A function of the velocity
%                   gradient.
%
% precision     nonnegative double -- Desired minimal relative standard 
%                   deviation of the statistical data.
%
% nSamples      positive int -- Desired number of samples.
%
% nGrads        positive int -- Desired number of velocity gradients per sample.
%
% gradsFun      function name or handle -- Generator of velocity gradients.
%
% spaceDims     positive int -- Number of spatial dimensions.
%
% flowDims      vector of positive ints -- Flow dimensions.
%
% makeIncompr   bool -- Make the velocity gradients incompressible (traceless)
%                   or not.
%
% checkIncompr  bool -- Check the incompressibility of the velocity gradients
%                   or not.
%
% shiftAvg      double -- Shift to apply to averages.
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
% hasPrecision  bool -- True if the desired precision has been reached.
%
% OUTPUT %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% stats         struct -- Stored statistical data.
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

%% Store statistical data
stats = struct( ...
    'fun',          fun, ...
    'precision',    precision, ...
    'nSamples',     nSamples, ...
    'nGrads',       nGrads, ...
    'gradsFun',     gradsFun, ...
    'spaceDims',    spaceDims, ...
    'flowDims',     flowDims, ...
    'makeIncompr',  makeIncompr, ...
    'checkIncompr', checkIncompr, ...
    'shiftAvg',     shiftAvg, ...
    'avgs',         avgs, ...
    'avg',          avg, ...
    'dev',          dev, ...
    'relDev',       relDev, ...
    'relDevShift',  relDevShift, ...
    'hasPrecision', hasPrecision ...
);

end
