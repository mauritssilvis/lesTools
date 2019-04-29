function grad = makeInc(grad, flowDims)

% DESCRIPTION %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Make a velocity gradient incompressible (traceless).
%
% INPUT %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% grad          matrix of doubles -- Velocity gradient.
%
% flowDims      vector of ints -- Flow dimensions.
%                   Examples: [1, 2] or [1, 2, 3].
%
% OUTPUT %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% grad      matrix of doubles -- Incompressible (traceless) velocity gradient.
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

% Compute the 'reduced' trace of the velocity gradient
redTr = trace(grad) / numel(flowDims);

% Make the velocity gradient incompressible (traceless)
for ix = flowDims
    grad(ix, ix) = grad(ix, ix) - redTr;
end

end
