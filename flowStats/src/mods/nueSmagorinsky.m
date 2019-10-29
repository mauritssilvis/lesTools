function nue = nueSmagorinsky(~, ~, ~, I1)

% DESCRIPTION %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Compute the reduced eddy viscosity of the Smagorinsky model.
%
% INPUT %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% I1    double -- Combined invariant of the rate-of-strain and rate-of-
%           rotation tensors given by I1 = trace(S^2).
%
% OUTPUT %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% nue   double -- Reduced eddy viscosity.
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

%% Compute the reduced eddy viscosity
% Store the needed factor
fact = I1;

% Analytically, this factor is nonnegative
% Check if the factor is positive numerically
if fact > 0
    % Yes, compute the reduced eddy viscosity, i.e., compute the eddy viscosity
    % without model constant and length scale
    nue = sqrt(2 * I1);
else
    % No, set the reduced eddy viscosity to zero
    nue = 0;
end

end
