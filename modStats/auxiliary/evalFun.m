function funVals = evalFun(fun, gradsQts)

% DESCRIPTION %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Compute the values of a function, given a set of velocity-gradient-based
% quantities.
%
% INPUT %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% fun       function name or handle -- A function of the velocity gradient.
%               This function should should accept between 1 and 9 arguments.
%               The first argument should be 
%               - the velocity gradient G (a 3 x 3 matrix).
%               The next arguments, if present, are assumed to be
%               - the rate-of-strain tensor S (a 3 x 3 matrix),
%               - the rate-of-rotation tensor W (a 3 x 3 matrix),
%               and the following scalar combined invariants of the 
%               rate-of-strain and rate-of-rotation tensors:
%               - I1 = trace(S^2),
%               - I2 = trace(W^2),
%               - I3 = trace(S^3),
%               - I4 = trace(S W^2),
%               - I5 = trace(S^2 W^2),
%               - I6 = trace(S^2 W^2 S W).
%               Examples:
%                   ...
%
% gradsQts  cell of array of matrices -- Quantities derived from the velocity 
%               gradient.
%
% OUTPUT %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% funVals   array of scalars/vectors/matrices -- Function values.
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
% Number of required input arguments
nArgs = nargin(fun);

% Size of matrices
sQt = [ size( gradsQts{1}, 1 ), size( gradsQts{1}, 2 ) ];

% Test quantities
testQts = [
    repmat( { ones( sQt ) } , 1, 3), ...
    repmat( {1}, 1, 6)
];

% Size of values
sVals = size(feval(fun, testQts{1 : nArgs}))

% Number of values
nVals = size(gradsQts{1}, 3)

% Output
funVals = zeros( [ sVals(1), sVals(2), nVals ] );

%% Compute function values
for ix = 1 : nVals

    % funVals(:, :, ix) = feval(fun);

end
