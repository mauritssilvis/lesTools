function stats = modStats(fun, precision, nSamples, nGrads, gradsFun, ...
    spaceDims, flowDims, makeIncompr, checkIncompr ...
)

% DESCRIPTION %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Determine the average behavior of a physical quantity that depends on the
% velocity gradient of a turbulent flow.
%
% INPUT %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Required input arguments:
%
% fun           function name or handle -- A function of the velocity gradient.
%                   This function should should accept between 1 and 9 
%                   arguments. The first argument should be 
%                   - the velocity gradient G (a matrix).
%                   The next arguments, if present, are assumed to be
%                   - the rate-of-strain tensor S (a matrix),
%                   - the rate-of-rotation tensor W (a matrix),
%                   and the following scalar combined invariants of the 
%                   rate-of-strain and rate-of-rotation tensors:
%                   - I1 = trace(S^2),
%                   - I2 = trace(W^2),
%                   - I3 = trace(S^3),
%                   - I4 = trace(S W^2),
%                   - I5 = trace(S^2 W^2),
%                   - I6 = trace(S^2 W^2 S W).
%                   Examples:
%                       ...
%
% Optional input arguments:
%
% precision     double -- Desired minimal relative standard deviation of the 
%                   statistical data.
%                   Examples: [] (empty), 10^-2, 10^-4, ...
%                   Default: 10^-4
%                   If empty, nGrads has to be set.
%
% nSamples      int -- Desired number of samples.
%                   Examples: 10, 100, 1000, ...
%                   Default: 100.
%
% nGrads        int -- Desired number of velocity gradients per sample.
%                   Examples: 10^2, 10^4, 10^6, ...
%                   Default: 10^6.
%                   If precision is nonempty, the value of nGrads represents the
%                   initial number of velocity gradients per sample.
%
% gradsFun      function name or handle -- Generator of the velocity gradients.
%                   Examples: 'unifMats', 'normMats', a custom function reading 
%                       velocity gradients from a file, etc.
%                   Default: 'unifMats'.
%
% spaceDims     int -- Number of spatial dimensions.
%                   Examples: 2 or 3.
%                   Default: 3.
%
% flowDims      vector of ints -- Flow dimensions.
%                   Examples: [1, 2] or [1, 2, 3].
%                   Default: [1, 2, 3].
%
% makeIncompr   bool -- Make the velocity gradients incompressible (traceless)
%                   or not.
%                   Default: true.
%
% checkIncompr  bool -- Check the incompressibility of the velocity gradients
%                   or not.
%                   Default: false.
%
% OUTPUT %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% stats         struct -- Statistical data about the physical quantity of
%                   interest.
%                   This structure has fields:
%                   - fun: name or handle of function of the velocity gradient,
%                   - nSamples: number of samples,
%                   - nGrads: number of velocity gradients per sample,
%                   - gradsFun: name or handle of the function generating
%                       velocity gradients,
%                   - spaceDims: number of spatial dimensions,
%                   - flowDims: flow dimensions,
%                   - avgs: averages of function value samples,
%                   - avg: average of sample averages,
%                   - stdDev: standard deviation of sample averages,
%                   - relStdDev: relative standard deviation of sample averages.
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

end
