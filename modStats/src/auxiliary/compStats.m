function [avg, dev, relDev, relDevShift] = compStats(vals, avgShift)

% DESCRIPTION %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Compute statistics of an array of values.
%
% INPUT %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% vals          array of scalars/vectors/matrices -- Values.
%
% shiftAvg      double -- Shift to apply to averages.
%
% OUTPUT %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% avg           scalar/vector/matrix -- Average of values.
%
% dev           scalar/vector/matrix -- Standard deviation of values.
%
% relDev        scalar/vector/matrix -- Relative standard deviation of values.
%
% relDevShift   scalar/vector/matrix -- Relative standard deviation of shifted 
%                   values.
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

%% Compute the average value
% avg = mean(vals, 3);
avg = compAvg(vals);

%% Compute the standard deviation
% Weighting scheme
weight = 0;

% Standard deviation
dev = std(vals, weight, 3);

%% Compute the relative standard deviation
relDev = abs( dev ./ avg );

%% Compute the relative standard deviation of the shifted values
relDevShift = abs( dev ./ ( avg + avgShift ) );

end
