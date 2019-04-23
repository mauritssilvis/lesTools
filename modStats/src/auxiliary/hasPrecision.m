function flag = hasPrecision(rel, shift, precision)

% DESCRIPTION %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Determine if the relative standard deviation (of the shifted data) is smaller 
% than the desired precision.
%
% INPUT %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% rel           scalar/vector/matrix of doubles -- Relative standard deviation
%                   of sample averages.
%
% shift         scalar/vector/matrix of doubles -- Relative standard deviation
%                   of shifted sample averages.
%
% precision     nonnegative double -- Desired minimal relative standard 
%                   deviation of the statistical data.
%                   Examples: 10^-2, 10^-4, ...
%                   If set to 0, this function evaluates to true.
%
% OUTPUT %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% flag          bool -- True if the desired precision has been reached.
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

%% Check if the desired precision has been reached
if precision == 0 || all( all( rel < precision ) ) || ...
    all( all( shift < precision ) )

    % Yes, set the flag to true
    flag = true;
else
    % No, set the flag to false
    flag = false;
end

end
