function list = mFileList(folder)

% DESCRIPTION %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% List the valid .m files in the specified folder.
%
% INPUT %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% folder    char -- Folder name.
%               Default: '.' (for the current folder).
%
% OUTPUT %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% list      cell of chars -- List of valid .m files (without extension).
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

%% Check input
% Check if 'folder' is provided
if nargin < 1 || isempty(folder)
    % Empty, set the default value
    folder = '.';
% Check if 'folder' is a character array
elseif ~isa(folder, 'char')
    error( ...
        ['Please provide a character array for ''folder'' or ', ...
         'leave empty for the default value.'] ...
    );
% Check if a folder with the name 'folder' exists
elseif exist(folder, 'dir') ~= 7
    error('Please provide the name of an existing folder for ''folder''.');
end

%% Create a list of valid .m files
% Obtain .m file names
fileList = dirList(folder, '*.m');

% Initialize empty .m file list
list = cell(size(fileList));

% Initialize valid .m file counter
mNum = 0;

% Store valid .m file names
for ix = 1 : numel(fileList)
    % Store file name without .m extension
    fileName = fileList{ix}(1 : end - 2);

    % Check if valid .m file name
    if ~isempty(regexp(fileName, '^[a-zA-Z][a-zA-Z0-9_]*$', 'ONCE'))
        % Valid, store
        mNum = mNum + 1;
        list{mNum} = fileName;
    end
end

% Crop list of valid .m files
list(mNum + 1 : end) = [];

end
