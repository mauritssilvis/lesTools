function list = dirList(folder, pattern)

% DESCRIPTION %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% List the contents of the specified folder, with file and folder names possibly 
% matching a certain pattern.
%
% INPUT %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% folder    char -- Folder name.
%               Default: '.' (for the current folder).
%
% pattern   char -- File and folder name pattern.
%               Default: '*' (for all files and folders).
%
% OUTPUT %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% list      cell of chars -- List of file and folder names.
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

% Check the second argument is provided
if nargin < 2 || isempty(pattern)
    % Empty, set the default value
    pattern = '*';
% Check if the provided second argument is a character array
elseif ~isa(pattern, 'char')
    error( ...
        ['Please provide a character array for ''pattern'' or ', ...
         'leave empty for the default value.'] ...
    );
end

%% Create list of file and folder names
% Obtain list of folder contents
contents = dir(fullfile(folder, pattern));

% Initialize list of files
list = {contents.name};

end
