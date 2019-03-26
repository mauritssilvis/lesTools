function funVals = evalFun(fun, quants)

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
% quants    cell of array of matrices -- Quantities derived from the velocity 
%               gradient as obtained from compQuants().
%
% OUTPUT %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% funVals   array of scalars/vectors/matrices -- Function values.
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

%% Initialize variables
% Number of required input arguments
nArgs = nargin(fun);

% Size of matrices
sQt = [ size( quants{1}, 1 ), size( quants{1}, 2 ) ];

% Test quantities
testQts = compQuants( zeros(sQt), nArgs );

% Size of values
sVals = size(feval(fun, testQts{1 : nArgs}));

% Check
if numel(sVals) > 2
    error( ...
        ['The function ''fun'' returns a tensor of order higher than 2.', ...
         newline, ...
         'This is not currently supported.'] ...
    );
end

% Number of values
nVals = size(quants{1}, 3);

% Output
funVals = zeros( [ sVals(1), sVals(2), nVals ] );

%% Compute function values
for ix = 1 : nVals
    % Initialize current velocity-gradient-based quantities
    qts = testQts;

    % Store current velocity-gradient-based quantities
    for jx = 1 : nArgs
        qts{jx} = quants{jx}(:, :, ix);
    end

    % Evaluate current function value
    funVals(:, :, ix) = feval(fun, qts{1 : nArgs});
end

end
