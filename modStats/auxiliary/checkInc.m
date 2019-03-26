function checkInc(grad)

% DESCRIPTION %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Checks if a velocity gradient is incompressible (traceless).
%
% INPUT %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% grad      matrix of doubles -- Velocity gradient.
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

% Check whether the trace of the velocity gradients is small w.r.t. the machine
% precision
if trace(grad) > 10 * eps
    warning( ...
        ['The trace of a velocity gradient is more than ten times larger ', ...
         'than the machine precision: ', newline, ...
         'trace(grad) = ', num2str(trace(grad)), ' > 10 * eps = ', ...
         num2str(10 * eps), '.'] ...
    );
end

end
