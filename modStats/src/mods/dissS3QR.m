function diss = dissS3QR(~, ~, ~, I1, I2, I3, I4, I5)

% DESCRIPTION %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Compute the reduced dissipation of kinetic energy of the S3PR model.
%
% INPUT %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% I1    double -- Combined invariant of the rate-of-strain and rate-of-
%           rotation tensors given by I1 = trace(S^2).
%
% I2    double -- Combined invariant of the rate-of-strain and rate-of-
%           rotation tensors given by I2 = trace(W^2).
%
% I3    double -- Combined invariant of the rate-of-strain and rate-of-
%           rotation tensors given by I2 = trace(S^3).
%
% I4    double -- Combined invariant of the rate-of-strain and rate-of-
%           rotation tensors given by I2 = trace(S W^2).
%
% I5    double -- Combined invariant of the rate-of-strain and rate-of-
%           rotation tensors given by I5 = trace(S^2 W^2).
%
% OUTPUT %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% diss  double -- Reduced dissipation of kinetic energy.
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

%% Compute the reduced dissipation of kinetic energy
% Store the needed factor
fact = I1;

% Analytically, this factor is nonnegative
% Check if the factor is positive numerically
if fact > 0
    % Yes, compute the reduced dissipation, i.e., compute the dissipation
    % without model constant and length scale
    diss = 2 * I1 * feval('nueS3QR', [], [], [], I1, I2, I3, I4, I5);
else
    % No, set the reduced dissipation to zero
    diss = 0;
end

end
