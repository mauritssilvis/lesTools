function grads = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, ...
    makeIncompr, checkIncompr ...
)

% DESCRIPTION %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Obtain a sample of possibly incompressible (random) velocity gradients having
% a certain number of spatial dimensions and flow directions.
%
% INPUT %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% gradsFun      function name or handle -- Generator of the velocity gradients.
%                   Examples: 'unifMats', 'normMats', a custom function reading 
%                       velocity gradients from a file, etc.
%
% sampleNr      int -- Sample number.
%
% nGrads        int -- Desired number of velocity gradients.
%
% spaceDims     int -- Number of spatial dimensions.
%                   Examples: 2 or 3.
%
% flowDims      int -- Number of flow dimensions.
%                   Examples: 2 or 3.
%
% makeIncompr   bool -- Make the velocity gradients incompressible (traceless)
%                   or not.
%
% checkIncompr  bool -- Check the incompressibility of the velocity gradients
%                   or not.
%
% OUTPUT %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% grads         array of matrices -- Velocity gradients.
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

%% Get a sample of (random) velocity gradients
grads = feval(gradsFun, sampleNr, nGrads, spaceDims);

%% Restrict the velocity gradients to the number of flow dimensions, if desired
if spaceDims == flowDims
    % Do nothing
elseif spaceDims > flowDims
    % Restrict the velocity gradients to the number of flow dimensions

    % Select the dimensions in which there is no flow
    rmDims = flowDims + 1 : spaceDims;

    % Nullify the corresponding elements
    for ix = 1 : nGrads
        grads(:, :, ix) = rmFlowDims(grads(:, :, ix), rmDims);
    end

else
    error( ...
        ['The number of spatial dimensions has to be at least as large ', ...
        'as the number of flow dimensions.'] ...
    );
end

%% Make the velocity gradients incompressible, if desired
if makeIncompr
    % Make the velocity gradients incompressible
    for ix = 1 : nGrads
        grads(:, :, ix) = makeInc(grads(:, :, ix), flowDims);
    end
end

%% Check the incompressibility of the velocity gradients, if desired
if checkIncompr
    % Check the incompressibility of the velocity gradients
    for ix = 1 : nGrads
        checkInc(grads(:, :, ix));
    end
end

end
