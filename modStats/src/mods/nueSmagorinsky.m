function coeff = nueSmagorinsky(~, ~, ~, I1)

% DESCRIPTION %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Compute the reduced coefficient of the Smagorinsky model.
%
% INPUT %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% I1        double -- Combined invariant of the rate-of-strain and rate-of-
%               rotation tensors given by I1 = trace(S^2).
%
% OUTPUT %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% coeff     double -- Reduced model coefficient.
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

%% Compute the reduced model coefficient
% Store the needed factor
fact = I1;

% Analytically, this factor is nonnegative
% Check if the factor is positive numerically
if fact > 0
    % Yes, compute the reduced model coefficient, i.e., compute the model
    % coefficient without model constant and length scale
    coeff = sqrt(2 * I1);
else
    % No, set the reduced model coefficient to zero
    coeff = 0;
end

end
