function expn = nearWallExpand(fun, velQts)

% DESCRIPTION %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Compute the near-wall expansion of a function that depends on the velocity 
% field and/or the velocity gradient.
%
% INPUT %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% fun       function name or handle -- A function of the velocity field and/or 
%               the velocity gradient.
%               This function should accept between 1 and 10 arguments.
%               The first argument should be
%               - the velocity field (which will be inserted as a 3 x 1 vector).
%               The next arguments, if present, are assumed to be
%               - the velocity gradient G (a 3 x 3 matrix),
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
%                   @(vel) vel(1) % The x-component of the velocity field
%                   @(vel, G, S) S % The rate-of-strain tensor
%                   @(vel, G, S, W, I1, I2) I1 - I2 % The (squared) velocity 
%                       gradient magnitude
%                   @(vel, G, S, W, I1, I2) I1 + I2 % Invariants 1 + 2
%                   ...
%               Note that fractions, fractional powers and special functions of 
%               the velocity field and/or gradient are not accepted.
%
% velQts    cell of syms -- Quantities derived from the velocity field, as
%               obtained from the function velQuants().
%
% OUTPUT %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% expn      syms -- Near-wall expansion of the given function in terms of a 
%               wall-normal coordinte y.
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
% Check if the first input argument represents a(n existing) function
if nargin < 1 || ( ( ~isa(fun, 'char') || exist(fun, 'file') ~= 2 ) && ...
    ~isa(fun, 'function_handle') )

    error( ...
        ['Please provide the provide the name of an existing funtion (in ', ...
         'the form of a character array) or a function handle for ''fun''.'] ...
    );
end

% Check if the second argument is a cell of the proper length
if nargin < 2 || ~isa(velQts, 'cell') || numel(velQts) < nargin(fun)
    error( ...
        ['Please specify a cell array of syms ''velQts'' that has a number ' ...
         'of elements that is at least as large as the number of input ' ...
         'arguments of the function ''fun''.'] ...
    );
end

%% Initialize variables
% Number of required input arguments
nArgs = nargin(fun);

%% Compute near-wall expansion
expn = feval(fun, velQts{1 : nArgs});

end
