function scal = expnScaling(expn)

% DESCRIPTION %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Determine the lowest power of a wall-normal coordinate y in the given 
% expansion.
%
% INPUT %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% expn  syms -- Near-wall expansion, as obtained from the function 
%           nearWallExpand().
%
% OUTPUT %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% scal  syms -- Near-wall scaling powers.
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
if nargin < 1 || isempty(expn)
    error('Please provide a near-wall expansion ''expn''.');
end

%% Initialize symbols
syms y % Coordinate (y is assumed to be the wall-normal coordinate)
syms O(y) % Order symbol

%% Initialize variables
% Output
scal = expn;

%% Determine near-wall scaling
for ix = 1 : numel(expn)
    % Select the current expression
    expr = expn(ix);

    % Determine if the expression is zero
    if isequal(expr, sym(0))
        % Zero, set result manually
        scal(ix) = 0;
    else
        % Expand expression to ensure cancellation of terms
        expr = expand(expr, 'ArithmeticOnly', true);

        % Initialize error state
        state = 0;

        try
            % Let Matlab determine the powers of y
            [coeff, term] = coeffs(expr, y);

            % Check the determined powers of y
            if checkCoeff(coeff)
                % Checks failed
                state = 1;
            end
        catch
            % The 'coeffs' function threw an error
            state = 2;
        end

        % Check if errors occured
        if ~state
            % No errors occured, store the found power
            scal(ix) = O(term(end));
        else
            warning( ...
                ['Matlab cannot determine the powers of the wall-normal ', ...
                 'coordinate y in the provided expression:', newline, ...
                 '    ', char(expr), newline, ...
                 'Did you supply a function containing fractions, ', ...
                 'fractional powers or special functions?', newline, ...
                 'Please supply a polynomial function of the velocity ', ...
                 'field/gradient.'] ...
            );
            scal(ix) = NaN;
        end

    end

end

end
