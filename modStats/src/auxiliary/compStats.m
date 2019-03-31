function [avg, stdDev, relStdDev] = compAvg(vals)

% DESCRIPTION %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Compute statistics of an array of values.
%
% INPUT %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% vals          array of scalars/vectors/matrices -- Values.
%
% OUTPUT %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% avg           scalar/vector/matrix -- Average of values.
%
% stdDev        scalar/vector/matrix -- Standard deviation of values.
%
% relStdDev     scalar/vector/matrix -- Relative standard deviation of values.
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

%% Compute the average value
avg = mean(vals, 3);

%% Compute the standard deviation
% Weighting scheme
weight = 0;
stdDev = std(vals, weight, 3);

%% Compute the relative standard deviation
relStdDev = stdDev ./ avg;

end
