function nFails = test()

% DESCRIPTION %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Test the scripts of the nearWallScaling module.
%
% OUTPUT %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% nFails    int -- The number of failed tests.
%
% LICENSE %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Copyright (c) 2019 Maurits H. Silvis
%
% This file is subject to the terms and conditions defined in
% the MIT License, which can be found in the file 'license.txt'
% that is part of this source code package.
%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Add path to functions
% Determine the current path
scriptPath = fileparts(which(mfilename));

% Test auxiliary directory
addpath([scriptPath, '/', 'auxiliary']);

% Unit test directory
addpath([scriptPath, '/', 'unit']);

% Integration test directory
addpath([scriptPath, '/', 'Integration']);

% Module main directory
addpath([scriptPath, '/../']);

% Module auxiliary directory
addpath([scriptPath, '/../', 'auxiliary']);

%% Preparation
% Initialize fail counter
nFails = 0;

% Obtain a list of .m files in the unit test directory
folder = 'unit';
unitTests = mFileList(folder);

% Obtain a list of .m files in the integration test directory
folder = 'integration';
intTests = mFileList(folder);

%% Run unit tests
disp('Run unit tests:');

% Loop over all unit test files
for ix = 1 : numel(unitTests)
    state = feval(unitTests{ix});

    % Check if test passed
    if ~state
        % Passed
        disp(['Test #', num2str(ix), ' passed.']);
    else
        % Failed
        nFails = nFails + 1;
        disp(['Test #', num2str(ix), ' failed.']);
    end
end

%% Run integration tests
disp('Run integration tests:');

% Loop over all integration test files
for ix = 1 : numel(intTests)
    state = feval(intTests{ix});

    % Check if test passed
    if ~state
        % Passed
        disp(['Test #', num2str(ix), ' passed.']);
    else
        % Failed
        nFails = nFails + 1;
        disp(['Test #', num2str(ix), ' failed.']);
    end
end

end
