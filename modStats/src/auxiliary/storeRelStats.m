function relStats = storeRelStats(fun1, fun2, precision, nSamples, nGrads, ...
    gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, ...
    shiftAvg2, relAvg, relDev, hasPrecision ...
)

% DESCRIPTION %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Store 'relative' statistical data in a struct.
%
% INPUT %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% fun1          function file name or handle -- A function of the velocity
%                   gradient.
%
% fun2          function file name or handle -- Another function of the velocity
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
% shiftAvg1     double -- Shift to apply to averages of the first function.
%
% shiftAvg2     double -- Shift to apply to averages of the second function.
%
% relAvg        scalar/vector/matrix of doubles -- Average of the first physical
%                   quantity relative to the second physical quantity.
%
% relDev        scalar/vector/matrix of doubles -- Relative standard deviation
%                   of the computed ratio of averages.
%
% hasPrecision  bool -- True if the desired precision has been reached.
%
% OUTPUT %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% relStats         struct -- Stored 'relative' statistical data.
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
relStats = struct( ...
    'fun1',         fun1, ...
    'fun2',         fun2, ...
    'precision',    precision, ...
    'nSamples',     nSamples, ...
    'nGrads',       nGrads, ...
    'gradsFun',     gradsFun, ...
    'spaceDims',    spaceDims, ...
    'flowDims',     flowDims, ...
    'makeIncompr',  makeIncompr, ...
    'checkIncompr', checkIncompr, ...
    'shiftAvg1',    shiftAvg1, ...
    'shiftAvg2',    shiftAvg2, ...
    'relAvg',       relAvg, ...
    'relDev',       relDev, ...
    'hasPrecision', hasPrecision ...
);

end
