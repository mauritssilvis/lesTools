function nue = nueQR(~, ~, ~, I1, ~, I3)

% DESCRIPTION %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Compute the reduced eddy viscosity of the QR model.
%
% INPUT %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% I1    double -- Combined invariant of the rate-of-strain and rate-of-
%           rotation tensors given by I1 = trace(S^2).
%
% I3    double -- Combined invariant of the rate-of-strain and rate-of-
%           rotation tensors given by I2 = trace(S^3).
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
% Compute the denominator
den = I1;

% Compute the numerator
num = -I3;

% Analytically, the denominator is nonnegative, while the numerator is sign
% indefinite
% Check if the numerator and denominator are positive numerically
if num > 0 && den > 0
    % Yes, compute the reduced eddy viscosity, i.e., compute the eddy viscosity
    % without model constant and length scale
    nue = 2 / 3 / 3 * num / den;
else
    % No, set the reduced eddy viscosity to zero (applying clipping for positive
    % I3)
    nue = 0;
end

end
