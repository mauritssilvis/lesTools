function state = checkCoeff(coeff)

% DESCRIPTION %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Check if the supplied vector of polynomial coefficients does not contain the
% wall-normal coordinate y.
%
% INPUT %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% coeff     vector of syms -- Alleged grid function
%
% OUTPUT %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% state     int -- Zero if the supplied vector does not contain the wall-normal
%               coordinate y.
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

%% Initialize variables
% Set state
state = -1;

%% Check if 'coeff' is provided
if nargin < 1 || isempty(coeff)
    % No variable was provided for 'coeff'
    state = 1;
    return;
end

%% Check if the wall-normal coordinate y is part of 'coeff'
% Determine which symbols are part of 'coeff'
symbols = symvar(coeff);

% Define the wall-normal coordinate
syms y 

% Determine if the wall-normal coordinate is part of 'coeff'
if any(has(symbols, y))
    % The polynomial coefficients contain the wall-normal coordinate
    state = 2;
    return;
end

%% Tests passed
% The supplied vector of polynomial coefficients does not contain y
state = 0;

end
