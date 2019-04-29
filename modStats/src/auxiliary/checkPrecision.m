function hasPrecision = checkPrecision(relDev, relDevShift, precision)

% DESCRIPTION %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Determine if the relative standard deviation (of the shifted data) is smaller 
% than the desired precision.
%
% INPUT %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% relDev        scalar/vector/matrix of doubles -- Relative standard deviation
%                   of sample averages.
%
% relDevShift   scalar/vector/matrix of doubles -- Relative standard deviation
%                   of shifted sample averages.
%
% precision     nonnegative double -- Desired minimal relative standard 
%                   deviation of the statistical data.
%                   Examples: 10^-2, 10^-4, ...
%                   If set to 0, this function evaluates to true.
%
% OUTPUT %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% hasPrecision  bool -- True if the desired precision has been reached.
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
if precision == 0 || all( all( relDev < precision ) ) || ...
    all( all( relDevShift < precision ) )

    % Yes, set the flag to true
    hasPrecision = true;
else
    % No, set the flag to false
    hasPrecision = false;
end

end
