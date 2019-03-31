% Test evalFun()

%% Test output type #1
% Define parameters
fun = @(G) G;
spaceDims = 2;
nGrads = 1;
grads = zeros(spaceDims, spaceDims, nGrads);
nQuants = 1;
quants = compQuants(grads, nQuants);

% Obtain value
val = evalFun(fun, quants);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #2
% Define parameters
fun = @(G) G;
spaceDims = 2;
nGrads = 1;
grads = zeros(spaceDims, spaceDims, nGrads);
nQuants = 9;
quants = compQuants(grads, nQuants);

% Obtain value
val = evalFun(fun, quants);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #3
% Define parameters
fun = @(G) G;
spaceDims = 2;
nGrads = 2;
grads = zeros(spaceDims, spaceDims, nGrads);
nQuants = 1;
quants = compQuants(grads, nQuants);

% Obtain value
val = evalFun(fun, quants);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #4
% Define parameters
fun = @(G) G;
spaceDims = 2;
nGrads = 2;
grads = zeros(spaceDims, spaceDims, nGrads);
nQuants = 9;
quants = compQuants(grads, nQuants);

% Obtain value
val = evalFun(fun, quants);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #5
% Define parameters
fun = @(G) G;
spaceDims = 3;
nGrads = 1;
grads = zeros(spaceDims, spaceDims, nGrads);
nQuants = 1;
quants = compQuants(grads, nQuants);

% Obtain value
val = evalFun(fun, quants);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #6
% Define parameters
fun = @(G) G;
spaceDims = 3;
nGrads = 1;
grads = zeros(spaceDims, spaceDims, nGrads);
nQuants = 9;
quants = compQuants(grads, nQuants);

% Obtain value
val = evalFun(fun, quants);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #7
% Define parameters
fun = @(G) G;
spaceDims = 3;
nGrads = 2;
grads = zeros(spaceDims, spaceDims, nGrads);
nQuants = 1;
quants = compQuants(grads, nQuants);

% Obtain value
val = evalFun(fun, quants);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #8
% Define parameters
fun = @(G) G;
spaceDims = 3;
nGrads = 2;
grads = zeros(spaceDims, spaceDims, nGrads);
nQuants = 9;
quants = compQuants(grads, nQuants);

% Obtain value
val = evalFun(fun, quants);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #9
% Define parameters
fun = @(G, S) S;
spaceDims = 2;
nGrads = 1;
grads = zeros(spaceDims, spaceDims, nGrads);
nQuants = 9;
quants = compQuants(grads, nQuants);

% Obtain value
val = evalFun(fun, quants);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #10
% Define parameters
fun = @(G, S) S;
spaceDims = 2;
nGrads = 2;
grads = zeros(spaceDims, spaceDims, nGrads);
nQuants = 9;
quants = compQuants(grads, nQuants);

% Obtain value
val = evalFun(fun, quants);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #11
% Define parameters
fun = @(G, S) S;
spaceDims = 3;
nGrads = 1;
grads = zeros(spaceDims, spaceDims, nGrads);
nQuants = 9;
quants = compQuants(grads, nQuants);

% Obtain value
val = evalFun(fun, quants);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #12
% Define parameters
fun = @(G, S) S;
spaceDims = 3;
nGrads = 2;
grads = zeros(spaceDims, spaceDims, nGrads);
nQuants = 9;
quants = compQuants(grads, nQuants);

% Obtain value
val = evalFun(fun, quants);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #13
% Define parameters
fun = @(G, S, W) W;
spaceDims = 2;
nGrads = 1;
grads = zeros(spaceDims, spaceDims, nGrads);
nQuants = 9;
quants = compQuants(grads, nQuants);

% Obtain value
val = evalFun(fun, quants);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #14
% Define parameters
fun = @(G, S, W) W;
spaceDims = 2;
nGrads = 2;
grads = zeros(spaceDims, spaceDims, nGrads);
nQuants = 9;
quants = compQuants(grads, nQuants);

% Obtain value
val = evalFun(fun, quants);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #15
% Define parameters
fun = @(G, S, W) W;
spaceDims = 3;
nGrads = 1;
grads = zeros(spaceDims, spaceDims, nGrads);
nQuants = 9;
quants = compQuants(grads, nQuants);

% Obtain value
val = evalFun(fun, quants);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #16
% Define parameters
fun = @(G, S, W) W;
spaceDims = 3;
nGrads = 2;
grads = zeros(spaceDims, spaceDims, nGrads);
nQuants = 9;
quants = compQuants(grads, nQuants);

% Obtain value
val = evalFun(fun, quants);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #17
% Define parameters
fun = @(G, S, W, I1) I1;
spaceDims = 2;
nGrads = 1;
grads = zeros(spaceDims, spaceDims, nGrads);
nQuants = 9;
quants = compQuants(grads, nQuants);

% Obtain value
val = evalFun(fun, quants);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #18
% Define parameters
fun = @(G, S, W, I1) I1;
spaceDims = 2;
nGrads = 2;
grads = zeros(spaceDims, spaceDims, nGrads);
nQuants = 9;
quants = compQuants(grads, nQuants);

% Obtain value
val = evalFun(fun, quants);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #19
% Define parameters
fun = @(G, S, W, I1) I1;
spaceDims = 3;
nGrads = 1;
grads = zeros(spaceDims, spaceDims, nGrads);
nQuants = 9;
quants = compQuants(grads, nQuants);

% Obtain value
val = evalFun(fun, quants);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #20
% Define parameters
fun = @(G, S, W, I1) I1;
spaceDims = 3;
nGrads = 2;
grads = zeros(spaceDims, spaceDims, nGrads);
nQuants = 9;
quants = compQuants(grads, nQuants);

% Obtain value
val = evalFun(fun, quants);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #21
% Define parameters
fun = @(G, S, W, I1, I2) I2;
spaceDims = 2;
nGrads = 1;
grads = zeros(spaceDims, spaceDims, nGrads);
nQuants = 9;
quants = compQuants(grads, nQuants);

% Obtain value
val = evalFun(fun, quants);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #22
% Define parameters
fun = @(G, S, W, I1, I2) I2;
spaceDims = 2;
nGrads = 2;
grads = zeros(spaceDims, spaceDims, nGrads);
nQuants = 9;
quants = compQuants(grads, nQuants);

% Obtain value
val = evalFun(fun, quants);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #23
% Define parameters
fun = @(G, S, W, I1, I2) I2;
spaceDims = 3;
nGrads = 1;
grads = zeros(spaceDims, spaceDims, nGrads);
nQuants = 9;
quants = compQuants(grads, nQuants);

% Obtain value
val = evalFun(fun, quants);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #24
% Define parameters
fun = @(G, S, W, I1, I2) I2;
spaceDims = 3;
nGrads = 2;
grads = zeros(spaceDims, spaceDims, nGrads);
nQuants = 9;
quants = compQuants(grads, nQuants);

% Obtain value
val = evalFun(fun, quants);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #25
% Define parameters
fun = @(G, S, W, I1, I2, I3) I3;
spaceDims = 2;
nGrads = 1;
grads = zeros(spaceDims, spaceDims, nGrads);
nQuants = 9;
quants = compQuants(grads, nQuants);

% Obtain value
val = evalFun(fun, quants);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #26
% Define parameters
fun = @(G, S, W, I1, I2, I3) I3;
spaceDims = 2;
nGrads = 2;
grads = zeros(spaceDims, spaceDims, nGrads);
nQuants = 9;
quants = compQuants(grads, nQuants);

% Obtain value
val = evalFun(fun, quants);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #27
% Define parameters
fun = @(G, S, W, I1, I2, I3) I3;
spaceDims = 3;
nGrads = 1;
grads = zeros(spaceDims, spaceDims, nGrads);
nQuants = 9;
quants = compQuants(grads, nQuants);

% Obtain value
val = evalFun(fun, quants);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #28
% Define parameters
fun = @(G, S, W, I1, I2, I3) I3;
spaceDims = 3;
nGrads = 2;
grads = zeros(spaceDims, spaceDims, nGrads);
nQuants = 9;
quants = compQuants(grads, nQuants);

% Obtain value
val = evalFun(fun, quants);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #29
% Define parameters
fun = @(G, S, W, I1, I2, I3, I4) I4;
spaceDims = 2;
nGrads = 1;
grads = zeros(spaceDims, spaceDims, nGrads);
nQuants = 9;
quants = compQuants(grads, nQuants);

% Obtain value
val = evalFun(fun, quants);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #30
% Define parameters
fun = @(G, S, W, I1, I2, I3, I4) I4;
spaceDims = 2;
nGrads = 2;
grads = zeros(spaceDims, spaceDims, nGrads);
nQuants = 9;
quants = compQuants(grads, nQuants);

% Obtain value
val = evalFun(fun, quants);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #31
% Define parameters
fun = @(G, S, W, I1, I2, I3, I4) I4;
spaceDims = 3;
nGrads = 1;
grads = zeros(spaceDims, spaceDims, nGrads);
nQuants = 9;
quants = compQuants(grads, nQuants);

% Obtain value
val = evalFun(fun, quants);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #32
% Define parameters
fun = @(G, S, W, I1, I2, I3, I4) I4;
spaceDims = 3;
nGrads = 2;
grads = zeros(spaceDims, spaceDims, nGrads);
nQuants = 9;
quants = compQuants(grads, nQuants);

% Obtain value
val = evalFun(fun, quants);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #33
% Define parameters
fun = @(G, S, W, I1, I2, I3, I4, I5) I5;
spaceDims = 2;
nGrads = 1;
grads = zeros(spaceDims, spaceDims, nGrads);
nQuants = 9;
quants = compQuants(grads, nQuants);

% Obtain value
val = evalFun(fun, quants);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #34
% Define parameters
fun = @(G, S, W, I1, I2, I3, I4, I5) I5;
spaceDims = 2;
nGrads = 2;
grads = zeros(spaceDims, spaceDims, nGrads);
nQuants = 9;
quants = compQuants(grads, nQuants);

% Obtain value
val = evalFun(fun, quants);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #35
% Define parameters
fun = @(G, S, W, I1, I2, I3, I4, I5) I5;
spaceDims = 3;
nGrads = 1;
grads = zeros(spaceDims, spaceDims, nGrads);
nQuants = 9;
quants = compQuants(grads, nQuants);

% Obtain value
val = evalFun(fun, quants);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #36
% Define parameters
fun = @(G, S, W, I1, I2, I3, I4, I5) I5;
spaceDims = 3;
nGrads = 2;
grads = zeros(spaceDims, spaceDims, nGrads);
nQuants = 9;
quants = compQuants(grads, nQuants);

% Obtain value
val = evalFun(fun, quants);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #37
% Define parameters
fun = @(G, S, W, I1, I2, I3, I4, I5, I6) G;
spaceDims = 2;
nGrads = 1;
grads = zeros(spaceDims, spaceDims, nGrads);
nQuants = 9;
quants = compQuants(grads, nQuants);

% Obtain value
val = evalFun(fun, quants);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #38
% Define parameters
fun = @(G, S, W, I1, I2, I3, I4, I5, I6) G;
spaceDims = 2;
nGrads = 2;
grads = zeros(spaceDims, spaceDims, nGrads);
nQuants = 9;
quants = compQuants(grads, nQuants);

% Obtain value
val = evalFun(fun, quants);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #39
% Define parameters
fun = @(G, S, W, I1, I2, I3, I4, I5, I6) G;
spaceDims = 3;
nGrads = 1;
grads = zeros(spaceDims, spaceDims, nGrads);
nQuants = 9;
quants = compQuants(grads, nQuants);

% Obtain value
val = evalFun(fun, quants);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #40
% Define parameters
fun = @(G, S, W, I1, I2, I3, I4, I5, I6) G;
spaceDims = 3;
nGrads = 2;
grads = zeros(spaceDims, spaceDims, nGrads);
nQuants = 9;
quants = compQuants(grads, nQuants);

% Obtain value
val = evalFun(fun, quants);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #41
% Define parameters
fun = @(G, S, W, I1, I2, I3, I4, I5, I6) I6;
spaceDims = 2;
nGrads = 1;
grads = zeros(spaceDims, spaceDims, nGrads);
nQuants = 9;
quants = compQuants(grads, nQuants);

% Obtain value
val = evalFun(fun, quants);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #42
% Define parameters
fun = @(G, S, W, I1, I2, I3, I4, I5, I6) I6;
spaceDims = 2;
nGrads = 2;
grads = zeros(spaceDims, spaceDims, nGrads);
nQuants = 9;
quants = compQuants(grads, nQuants);

% Obtain value
val = evalFun(fun, quants);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #43
% Define parameters
fun = @(G, S, W, I1, I2, I3, I4, I5, I6) I6;
spaceDims = 3;
nGrads = 1;
grads = zeros(spaceDims, spaceDims, nGrads);
nQuants = 9;
quants = compQuants(grads, nQuants);

% Obtain value
val = evalFun(fun, quants);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #44
% Define parameters
fun = @(G, S, W, I1, I2, I3, I4, I5, I6) I6;
spaceDims = 3;
nGrads = 2;
grads = zeros(spaceDims, spaceDims, nGrads);
nQuants = 9;
quants = compQuants(grads, nQuants);

% Obtain value
val = evalFun(fun, quants);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output size #1
% Define parameters
fun = @(G) G;
spaceDims = 2;
nGrads = 1;
grads = zeros(spaceDims, spaceDims, nGrads);
nQuants = 1;
quants = compQuants(grads, nQuants);

% Obtain value
val = evalFun(fun, quants);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [spaceDims, spaceDims, nGrads];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #2
% Define parameters
fun = @(G) G;
spaceDims = 2;
nGrads = 1;
grads = zeros(spaceDims, spaceDims, nGrads);
nQuants = 9;
quants = compQuants(grads, nQuants);

% Obtain value
val = evalFun(fun, quants);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [spaceDims, spaceDims, nGrads];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #3
% Define parameters
fun = @(G) G;
spaceDims = 2;
nGrads = 2;
grads = zeros(spaceDims, spaceDims, nGrads);
nQuants = 1;
quants = compQuants(grads, nQuants);

% Obtain value
val = evalFun(fun, quants);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [spaceDims, spaceDims, nGrads];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #4
% Define parameters
fun = @(G) G;
spaceDims = 2;
nGrads = 2;
grads = zeros(spaceDims, spaceDims, nGrads);
nQuants = 9;
quants = compQuants(grads, nQuants);

% Obtain value
val = evalFun(fun, quants);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [spaceDims, spaceDims, nGrads];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #5
% Define parameters
fun = @(G) G;
spaceDims = 3;
nGrads = 1;
grads = zeros(spaceDims, spaceDims, nGrads);
nQuants = 1;
quants = compQuants(grads, nQuants);

% Obtain value
val = evalFun(fun, quants);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [spaceDims, spaceDims, nGrads];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #6
% Define parameters
fun = @(G) G;
spaceDims = 3;
nGrads = 1;
grads = zeros(spaceDims, spaceDims, nGrads);
nQuants = 9;
quants = compQuants(grads, nQuants);

% Obtain value
val = evalFun(fun, quants);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [spaceDims, spaceDims, nGrads];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #7
% Define parameters
fun = @(G) G;
spaceDims = 3;
nGrads = 2;
grads = zeros(spaceDims, spaceDims, nGrads);
nQuants = 1;
quants = compQuants(grads, nQuants);

% Obtain value
val = evalFun(fun, quants);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [spaceDims, spaceDims, nGrads];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #8
% Define parameters
fun = @(G) G;
spaceDims = 3;
nGrads = 2;
grads = zeros(spaceDims, spaceDims, nGrads);
nQuants = 9;
quants = compQuants(grads, nQuants);

% Obtain value
val = evalFun(fun, quants);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [spaceDims, spaceDims, nGrads];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #9
% Define parameters
fun = @(G, S) S;
spaceDims = 2;
nGrads = 1;
grads = zeros(spaceDims, spaceDims, nGrads);
nQuants = 9;
quants = compQuants(grads, nQuants);

% Obtain value
val = evalFun(fun, quants);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [spaceDims, spaceDims, nGrads];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #10
% Define parameters
fun = @(G, S) S;
spaceDims = 2;
nGrads = 2;
grads = zeros(spaceDims, spaceDims, nGrads);
nQuants = 9;
quants = compQuants(grads, nQuants);

% Obtain value
val = evalFun(fun, quants);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [spaceDims, spaceDims, nGrads];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #11
% Define parameters
fun = @(G, S) S;
spaceDims = 3;
nGrads = 1;
grads = zeros(spaceDims, spaceDims, nGrads);
nQuants = 9;
quants = compQuants(grads, nQuants);

% Obtain value
val = evalFun(fun, quants);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [spaceDims, spaceDims, nGrads];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #12
% Define parameters
fun = @(G, S) S;
spaceDims = 3;
nGrads = 2;
grads = zeros(spaceDims, spaceDims, nGrads);
nQuants = 9;
quants = compQuants(grads, nQuants);

% Obtain value
val = evalFun(fun, quants);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [spaceDims, spaceDims, nGrads];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #13
% Define parameters
fun = @(G, S, W) W;
spaceDims = 2;
nGrads = 1;
grads = zeros(spaceDims, spaceDims, nGrads);
nQuants = 9;
quants = compQuants(grads, nQuants);

% Obtain value
val = evalFun(fun, quants);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [spaceDims, spaceDims, nGrads];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #14
% Define parameters
fun = @(G, S, W) W;
spaceDims = 2;
nGrads = 2;
grads = zeros(spaceDims, spaceDims, nGrads);
nQuants = 9;
quants = compQuants(grads, nQuants);

% Obtain value
val = evalFun(fun, quants);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [spaceDims, spaceDims, nGrads];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #15
% Define parameters
fun = @(G, S, W) W;
spaceDims = 3;
nGrads = 1;
grads = zeros(spaceDims, spaceDims, nGrads);
nQuants = 9;
quants = compQuants(grads, nQuants);

% Obtain value
val = evalFun(fun, quants);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [spaceDims, spaceDims, nGrads];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #16
% Define parameters
fun = @(G, S, W) W;
spaceDims = 3;
nGrads = 2;
grads = zeros(spaceDims, spaceDims, nGrads);
nQuants = 9;
quants = compQuants(grads, nQuants);

% Obtain value
val = evalFun(fun, quants);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [spaceDims, spaceDims, nGrads];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #17
% Define parameters
fun = @(G, S, W, I1) I1;
spaceDims = 2;
nGrads = 1;
grads = zeros(spaceDims, spaceDims, nGrads);
nQuants = 9;
quants = compQuants(grads, nQuants);

% Obtain value
val = evalFun(fun, quants);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, nGrads];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #18
% Define parameters
fun = @(G, S, W, I1) I1;
spaceDims = 2;
nGrads = 2;
grads = zeros(spaceDims, spaceDims, nGrads);
nQuants = 9;
quants = compQuants(grads, nQuants);

% Obtain value
val = evalFun(fun, quants);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, nGrads];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #19
% Define parameters
fun = @(G, S, W, I1) I1;
spaceDims = 3;
nGrads = 1;
grads = zeros(spaceDims, spaceDims, nGrads);
nQuants = 9;
quants = compQuants(grads, nQuants);

% Obtain value
val = evalFun(fun, quants);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, nGrads];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #20
% Define parameters
fun = @(G, S, W, I1) I1;
spaceDims = 3;
nGrads = 2;
grads = zeros(spaceDims, spaceDims, nGrads);
nQuants = 9;
quants = compQuants(grads, nQuants);

% Obtain value
val = evalFun(fun, quants);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, nGrads];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #21
% Define parameters
fun = @(G, S, W, I1, I2) I2;
spaceDims = 2;
nGrads = 1;
grads = zeros(spaceDims, spaceDims, nGrads);
nQuants = 9;
quants = compQuants(grads, nQuants);

% Obtain value
val = evalFun(fun, quants);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, nGrads];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #22
% Define parameters
fun = @(G, S, W, I1, I2) I2;
spaceDims = 2;
nGrads = 2;
grads = zeros(spaceDims, spaceDims, nGrads);
nQuants = 9;
quants = compQuants(grads, nQuants);

% Obtain value
val = evalFun(fun, quants);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, nGrads];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #23
% Define parameters
fun = @(G, S, W, I1, I2) I2;
spaceDims = 3;
nGrads = 1;
grads = zeros(spaceDims, spaceDims, nGrads);
nQuants = 9;
quants = compQuants(grads, nQuants);

% Obtain value
val = evalFun(fun, quants);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, nGrads];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #24
% Define parameters
fun = @(G, S, W, I1, I2) I2;
spaceDims = 3;
nGrads = 2;
grads = zeros(spaceDims, spaceDims, nGrads);
nQuants = 9;
quants = compQuants(grads, nQuants);

% Obtain value
val = evalFun(fun, quants);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, nGrads];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #25
% Define parameters
fun = @(G, S, W, I1, I2, I3) I3;
spaceDims = 2;
nGrads = 1;
grads = zeros(spaceDims, spaceDims, nGrads);
nQuants = 9;
quants = compQuants(grads, nQuants);

% Obtain value
val = evalFun(fun, quants);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, nGrads];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #26
% Define parameters
fun = @(G, S, W, I1, I2, I3) I3;
spaceDims = 2;
nGrads = 2;
grads = zeros(spaceDims, spaceDims, nGrads);
nQuants = 9;
quants = compQuants(grads, nQuants);

% Obtain value
val = evalFun(fun, quants);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, nGrads];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #27
% Define parameters
fun = @(G, S, W, I1, I2, I3) I3;
spaceDims = 3;
nGrads = 1;
grads = zeros(spaceDims, spaceDims, nGrads);
nQuants = 9;
quants = compQuants(grads, nQuants);

% Obtain value
val = evalFun(fun, quants);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, nGrads];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #28
% Define parameters
fun = @(G, S, W, I1, I2, I3) I3;
spaceDims = 3;
nGrads = 2;
grads = zeros(spaceDims, spaceDims, nGrads);
nQuants = 9;
quants = compQuants(grads, nQuants);

% Obtain value
val = evalFun(fun, quants);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, nGrads];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #29
% Define parameters
fun = @(G, S, W, I1, I2, I3, I4) I4;
spaceDims = 2;
nGrads = 1;
grads = zeros(spaceDims, spaceDims, nGrads);
nQuants = 9;
quants = compQuants(grads, nQuants);

% Obtain value
val = evalFun(fun, quants);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, nGrads];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #30
% Define parameters
fun = @(G, S, W, I1, I2, I3, I4) I4;
spaceDims = 2;
nGrads = 2;
grads = zeros(spaceDims, spaceDims, nGrads);
nQuants = 9;
quants = compQuants(grads, nQuants);

% Obtain value
val = evalFun(fun, quants);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, nGrads];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #31
% Define parameters
fun = @(G, S, W, I1, I2, I3, I4) I4;
spaceDims = 3;
nGrads = 1;
grads = zeros(spaceDims, spaceDims, nGrads);
nQuants = 9;
quants = compQuants(grads, nQuants);

% Obtain value
val = evalFun(fun, quants);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, nGrads];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #32
% Define parameters
fun = @(G, S, W, I1, I2, I3, I4) I4;
spaceDims = 3;
nGrads = 2;
grads = zeros(spaceDims, spaceDims, nGrads);
nQuants = 9;
quants = compQuants(grads, nQuants);

% Obtain value
val = evalFun(fun, quants);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, nGrads];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #33
% Define parameters
fun = @(G, S, W, I1, I2, I3, I4, I5) I5;
spaceDims = 2;
nGrads = 1;
grads = zeros(spaceDims, spaceDims, nGrads);
nQuants = 9;
quants = compQuants(grads, nQuants);

% Obtain value
val = evalFun(fun, quants);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, nGrads];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #34
% Define parameters
fun = @(G, S, W, I1, I2, I3, I4, I5) I5;
spaceDims = 2;
nGrads = 2;
grads = zeros(spaceDims, spaceDims, nGrads);
nQuants = 9;
quants = compQuants(grads, nQuants);

% Obtain value
val = evalFun(fun, quants);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, nGrads];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #35
% Define parameters
fun = @(G, S, W, I1, I2, I3, I4, I5) I5;
spaceDims = 3;
nGrads = 1;
grads = zeros(spaceDims, spaceDims, nGrads);
nQuants = 9;
quants = compQuants(grads, nQuants);

% Obtain value
val = evalFun(fun, quants);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, nGrads];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #36
% Define parameters
fun = @(G, S, W, I1, I2, I3, I4, I5) I5;
spaceDims = 3;
nGrads = 2;
grads = zeros(spaceDims, spaceDims, nGrads);
nQuants = 9;
quants = compQuants(grads, nQuants);

% Obtain value
val = evalFun(fun, quants);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, nGrads];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #37
% Define parameters
fun = @(G, S, W, I1, I2, I3, I4, I5, I6) G;
spaceDims = 2;
nGrads = 1;
grads = zeros(spaceDims, spaceDims, nGrads);
nQuants = 9;
quants = compQuants(grads, nQuants);

% Obtain value
val = evalFun(fun, quants);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [spaceDims, spaceDims, nGrads];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #38
% Define parameters
fun = @(G, S, W, I1, I2, I3, I4, I5, I6) G;
spaceDims = 2;
nGrads = 2;
grads = zeros(spaceDims, spaceDims, nGrads);
nQuants = 9;
quants = compQuants(grads, nQuants);

% Obtain value
val = evalFun(fun, quants);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [spaceDims, spaceDims, nGrads];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #39
% Define parameters
fun = @(G, S, W, I1, I2, I3, I4, I5, I6) G;
spaceDims = 3;
nGrads = 1;
grads = zeros(spaceDims, spaceDims, nGrads);
nQuants = 9;
quants = compQuants(grads, nQuants);

% Obtain value
val = evalFun(fun, quants);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [spaceDims, spaceDims, nGrads];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #40
% Define parameters
fun = @(G, S, W, I1, I2, I3, I4, I5, I6) G;
spaceDims = 3;
nGrads = 2;
grads = zeros(spaceDims, spaceDims, nGrads);
nQuants = 9;
quants = compQuants(grads, nQuants);

% Obtain value
val = evalFun(fun, quants);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [spaceDims, spaceDims, nGrads];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #41
% Define parameters
fun = @(G, S, W, I1, I2, I3, I4, I5, I6) I6;
spaceDims = 2;
nGrads = 1;
grads = zeros(spaceDims, spaceDims, nGrads);
nQuants = 9;
quants = compQuants(grads, nQuants);

% Obtain value
val = evalFun(fun, quants);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, nGrads];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #42
% Define parameters
fun = @(G, S, W, I1, I2, I3, I4, I5, I6) I6;
spaceDims = 2;
nGrads = 2;
grads = zeros(spaceDims, spaceDims, nGrads);
nQuants = 9;
quants = compQuants(grads, nQuants);

% Obtain value
val = evalFun(fun, quants);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, nGrads];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #43
% Define parameters
fun = @(G, S, W, I1, I2, I3, I4, I5, I6) I6;
spaceDims = 3;
nGrads = 1;
grads = zeros(spaceDims, spaceDims, nGrads);
nQuants = 9;
quants = compQuants(grads, nQuants);

% Obtain value
val = evalFun(fun, quants);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, nGrads];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #44
% Define parameters
fun = @(G, S, W, I1, I2, I3, I4, I5, I6) I6;
spaceDims = 3;
nGrads = 2;
grads = zeros(spaceDims, spaceDims, nGrads);
nQuants = 9;
quants = compQuants(grads, nQuants);

% Obtain value
val = evalFun(fun, quants);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, nGrads];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test actual output #1
% Define parameters
grads = [
    1, 2;
    3, 4;
];
nQuants = 1;
quants = compQuants(grads, nQuants);
fun = @(G) G;

% Obtain actual value
actVal = evalFun(fun, quants);

% Define expected value
expVal = grads;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #2
% Define parameters
grads = [
    1, 2;
    3, 4;
];
nQuants = 1;
quants = compQuants(grads, nQuants);
fun = @(G) G;

% Obtain actual value
actVal = evalFun(fun, quants);

% Define expected value
expVal = grads;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #3
% Define parameters
grads = [
    1, 2;
    3, 4;
];
nQuants = 2;
quants = compQuants(grads, nQuants);
fun = @(G, S) S;

% Obtain actual value
actVal = evalFun(fun, quants);

% Define expected value
expVal = [
    1.0, 2.5;
    2.5, 4.0;
];

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #4
% Define parameters
grads = [
    1, 2;
    3, 4;
];
nQuants = 3;
quants = compQuants(grads, nQuants);
fun = @(G, S, W) W;

% Obtain actual value
actVal = evalFun(fun, quants);

% Define expected value
expVal = [
     0.0, -0.5;
     0.5,  0.0;
];

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #5
% Define parameters
grads = [
    1, 2;
    3, 4;
];
nQuants = 4;
quants = compQuants(grads, nQuants);
fun = @(G, S, W, I1) I1;

% Obtain actual value
actVal = evalFun(fun, quants);

% Define expected value
expVal = 29.5;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #6
% Define parameters
grads = [
    1, 2;
    3, 4;
];
nQuants = 5;
quants = compQuants(grads, nQuants);
fun = @(G, S, W, I1, I2) I2;

% Obtain actual value
actVal = evalFun(fun, quants);

% Define expected value
expVal = -0.5;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #7
% Define parameters
grads = [
    1, 2;
    3, 4;
];
nQuants = 6;
quants = compQuants(grads, nQuants);
fun = @(G, S, W, I1, I2, I3) I3;

% Obtain actual value
actVal = evalFun(fun, quants);

% Define expected value
expVal = 158.75;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #8
% Define parameters
grads = [
    1, 2;
    3, 4;
];
nQuants = 7;
quants = compQuants(grads, nQuants);
fun = @(G, S, W, I1, I2, I3, I4) I4;

% Obtain actual value
actVal = evalFun(fun, quants);

% Define expected value
expVal = -1.25;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #9
% Define parameters
grads = [
    1, 2;
    3, 4;
];
nQuants = 8;
quants = compQuants(grads, nQuants);
fun = @(G, S, W, I1, I2, I3, I4, I5) I5;

% Obtain actual value
actVal = evalFun(fun, quants);

% Define expected value
expVal = -7.375;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #10
% Define parameters
grads = [
    1, 2;
    3, 4;
];
nQuants = 9;
quants = compQuants(grads, nQuants);
fun = @(G, S, W, I1, I2, I3, I4, I5, I6) G;

% Obtain actual value
actVal = evalFun(fun, quants);

% Define expected value
expVal = grads;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #11
% Define parameters
grads = [
    1, 2;
    3, 4;
];
nQuants = 9;
quants = compQuants(grads, nQuants);
fun = @(G, S, W, I1, I2, I3, I4, I5, I6) I6;

% Obtain actual value
actVal = evalFun(fun, quants);

% Define expected value
expVal = 0;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #12
% Define parameters
grads = zeros(2, 2, 2);
grads(:, :, 1) = [
    1, 2;
    3, 4;
];
grads(:, :, 2) = [
    5, 6;
    7, 8;
];
nQuants = 1;
quants = compQuants(grads, nQuants);
fun = @(G) G;

% Obtain actual value
actVal = evalFun(fun, quants);

% Define expected value
expVal = grads;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #13
% Define parameters
grads = zeros(2, 2, 2);
grads(:, :, 1) = [
    1, 2;
    3, 4;
];
grads(:, :, 2) = [
    5, 6;
    7, 8;
];
nQuants = 1;
quants = compQuants(grads, nQuants);
fun = @(G) G;

% Obtain actual value
actVal = evalFun(fun, quants);

% Define expected value
expVal = grads;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #14
% Define parameters
grads = zeros(2, 2, 2);
grads(:, :, 1) = [
    1, 2;
    3, 4;
];
grads(:, :, 2) = [
    5, 6;
    7, 8;
];
nQuants = 2;
quants = compQuants(grads, nQuants);
fun = @(G, S) S;

% Obtain actual value
actVal = evalFun(fun, quants);

% Define expected value
expVal = zeros(2, 2, 2);
expVal(:, :, 1) = [
    1.0, 2.5;
    2.5, 4.0;
];
expVal(:, :, 2) = [
    5.0, 6.5;
    6.5, 8.0;
];

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #15
% Define parameters
grads = zeros(2, 2, 2);
grads(:, :, 1) = [
    1, 2;
    3, 4;
];
grads(:, :, 2) = [
    5, 6;
    7, 8;
];
nQuants = 3;
quants = compQuants(grads, nQuants);
fun = @(G, S, W) W;

% Obtain actual value
actVal = evalFun(fun, quants);

% Define expected value
expVal = zeros(2, 2, 2);
expVal(:, :, 1) = [
     0.0, -0.5;
     0.5,  0.0;
];
expVal(:, :, 2) = [
     0.0, -0.5;
     0.5,  0.0;
];

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #16
% Define parameters
grads = zeros(2, 2, 2);
grads(:, :, 1) = [
    1, 2;
    3, 4;
];
grads(:, :, 2) = [
    5, 6;
    7, 8;
];
nQuants = 4;
quants = compQuants(grads, nQuants);
fun = @(G, S, W, I1) I1;

% Obtain actual value
actVal = evalFun(fun, quants);

% Define expected value
expVal = zeros(1, 1, 2);
expVal(1, 1, :) = [
     29.5;
    173.5;
];

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #17
% Define parameters
grads = zeros(2, 2, 2);
grads(:, :, 1) = [
    1, 2;
    3, 4;
];
grads(:, :, 2) = [
    5, 6;
    7, 8;
];
nQuants = 5;
quants = compQuants(grads, nQuants);
fun = @(G, S, W, I1, I2) I2;

% Obtain actual value
actVal = evalFun(fun, quants);

% Define expected value
expVal = zeros(1, 1, 2);
expVal(1, 1, :) = [
    -0.5;
    -0.5;
];

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #18
% Define parameters
grads = zeros(2, 2, 2);
grads(:, :, 1) = [
    1, 2;
    3, 4;
];
grads(:, :, 2) = [
    5, 6;
    7, 8;
];
nQuants = 6;
quants = compQuants(grads, nQuants);
fun = @(G, S, W, I1, I2, I3) I3;

% Obtain actual value
actVal = evalFun(fun, quants);

% Define expected value
expVal = zeros(1, 1, 2);
expVal(1, 1, :) = [
     158.75;
    2284.75;
];

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #19
% Define parameters
grads = zeros(2, 2, 2);
grads(:, :, 1) = [
    1, 2;
    3, 4;
];
grads(:, :, 2) = [
    5, 6;
    7, 8;
];
nQuants = 7;
quants = compQuants(grads, nQuants);
fun = @(G, S, W, I1, I2, I3, I4) I4;

% Obtain actual value
actVal = evalFun(fun, quants);

% Define expected value
expVal = zeros(1, 1, 2);
expVal(1, 1, :) = [
    -1.25;
    -3.25;
];

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #20
% Define parameters
grads = zeros(2, 2, 2);
grads(:, :, 1) = [
    1, 2;
    3, 4;
];
grads(:, :, 2) = [
    5, 6;
    7, 8;
];
nQuants = 8;
quants = compQuants(grads, nQuants);
fun = @(G, S, W, I1, I2, I3, I4, I5) I5;

% Obtain actual value
actVal = evalFun(fun, quants);

% Define expected value
expVal = zeros(1, 1, 2);
expVal(1, 1, :) = [
     -7.375;
    -43.375;
];

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #21
% Define parameters
grads = zeros(2, 2, 2);
grads(:, :, 1) = [
    1, 2;
    3, 4;
];
grads(:, :, 2) = [
    5, 6;
    7, 8;
];
nQuants = 9;
quants = compQuants(grads, nQuants);
fun = @(G, S, W, I1, I2, I3, I4, I5, I6) G;

% Obtain actual value
actVal = evalFun(fun, quants);

% Define expected value
expVal = grads;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #22
% Define parameters
grads = zeros(2, 2, 2);
grads(:, :, 1) = [
    1, 2;
    3, 4;
];
grads(:, :, 2) = [
    5, 6;
    7, 8;
];
nQuants = 9;
quants = compQuants(grads, nQuants);
fun = @(G, S, W, I1, I2, I3, I4, I5, I6) I6;

% Obtain actual value
actVal = evalFun(fun, quants);

% Define expected value
expVal = zeros(1, 1, 2);
expVal(1, 1, :) = [
    0;
    0;
];

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #23
% Define parameters
grads = [
    1, 2, 3;
    4, 5, 6;
    7, 8, 9;
];
nQuants = 1;
quants = compQuants(grads, nQuants);
fun = @(G) G;

% Obtain actual value
actVal = evalFun(fun, quants);

% Define expected value
expVal = grads;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #24
% Define parameters
grads = [
    1, 2, 3;
    4, 5, 6;
    7, 8, 9;
];
nQuants = 1;
quants = compQuants(grads, nQuants);
fun = @(G) G;

% Obtain actual value
actVal = evalFun(fun, quants);

% Define expected value
expVal = grads;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #25
% Define parameters
grads = [
    1, 2, 3;
    4, 5, 6;
    7, 8, 9;
];
nQuants = 2;
quants = compQuants(grads, nQuants);
fun = @(G, S) S;

% Obtain actual value
actVal = evalFun(fun, quants);

% Define expected value
expVal = [
    1, 3, 5;
    3, 5, 7;
    5, 7, 9;
];

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #26
% Define parameters
grads = [
    1, 2, 3;
    4, 5, 6;
    7, 8, 9;
];
nQuants = 3;
quants = compQuants(grads, nQuants);
fun = @(G, S, W) W;

% Obtain actual value
actVal = evalFun(fun, quants);

% Define expected value
expVal = [
     0, -1, -2;
     1,  0, -1;
     2,  1,  0;
];

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #27
% Define parameters
grads = [
    1, 2, 3;
    4, 5, 6;
    7, 8, 9;
];
nQuants = 4;
quants = compQuants(grads, nQuants);
fun = @(G, S, W, I1) I1;

% Obtain actual value
actVal = evalFun(fun, quants);

% Define expected value
expVal = 273;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #28
% Define parameters
grads = [
    1, 2, 3;
    4, 5, 6;
    7, 8, 9;
];
nQuants = 5;
quants = compQuants(grads, nQuants);
fun = @(G, S, W, I1, I2) I2;

% Obtain actual value
actVal = evalFun(fun, quants);

% Define expected value
expVal = -12;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #29
% Define parameters
grads = [
    1, 2, 3;
    4, 5, 6;
    7, 8, 9;
];
nQuants = 6;
quants = compQuants(grads, nQuants);
fun = @(G, S, W, I1, I2, I3) I3;

% Obtain actual value
actVal = evalFun(fun, quants);

% Define expected value
expVal = 4455;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #30
% Define parameters
grads = [
    1, 2, 3;
    4, 5, 6;
    7, 8, 9;
];
nQuants = 7;
quants = compQuants(grads, nQuants);
fun = @(G, S, W, I1, I2, I3, I4) I4;

% Obtain actual value
actVal = evalFun(fun, quants);

% Define expected value
expVal = -90;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #31
% Define parameters
grads = [
    1, 2, 3;
    4, 5, 6;
    7, 8, 9;
];
nQuants = 8;
quants = compQuants(grads, nQuants);
fun = @(G, S, W, I1, I2, I3, I4, I5) I5;

% Obtain actual value
actVal = evalFun(fun, quants);

% Define expected value
expVal = -1638;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #32
% Define parameters
grads = [
    1, 2, 3;
    4, 5, 6;
    7, 8, 9;
];
nQuants = 9;
quants = compQuants(grads, nQuants);
fun = @(G, S, W, I1, I2, I3, I4, I5, I6) G;

% Obtain actual value
actVal = evalFun(fun, quants);

% Define expected value
expVal = grads;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #33
% Define parameters
grads = [
    1, 2, 3;
    4, 5, 6;
    7, 8, 9;
];
nQuants = 9;
quants = compQuants(grads, nQuants);
fun = @(G, S, W, I1, I2, I3, I4, I5, I6) I6;

% Obtain actual value
actVal = evalFun(fun, quants);

% Define expected value
expVal = 0;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #34
% Define parameters
grads = zeros(3, 3, 2);
grads(:, :, 1) = [
    1, 2, 3;
    4, 5, 6;
    7, 8, 9;
];
grads(:, :, 2) = [
    10, 11, 12;
    13, 14, 15;
    16, 17, 18;
];
nQuants = 1;
quants = compQuants(grads, nQuants);
fun = @(G) G;

% Obtain actual value
actVal = evalFun(fun, quants);

% Define expected value
expVal = grads;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #35
% Define parameters
grads = zeros(3, 3, 2);
grads(:, :, 1) = [
    1, 2, 3;
    4, 5, 6;
    7, 8, 9;
];
grads(:, :, 2) = [
    10, 11, 12;
    13, 14, 15;
    16, 17, 18;
];
nQuants = 1;
quants = compQuants(grads, nQuants);
fun = @(G) G;

% Obtain actual value
actVal = evalFun(fun, quants);

% Define expected value
expVal = grads;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #36
% Define parameters
grads = zeros(3, 3, 2);
grads(:, :, 1) = [
    1, 2, 3;
    4, 5, 6;
    7, 8, 9;
];
grads(:, :, 2) = [
    10, 11, 12;
    13, 14, 15;
    16, 17, 18;
];
nQuants = 2;
quants = compQuants(grads, nQuants);
fun = @(G, S) S;

% Obtain actual value
actVal = evalFun(fun, quants);

% Define expected value
expVal = zeros(3, 3, 2);
expVal(:, :, 1) = [
    1, 3, 5;
    3, 5, 7;
    5, 7, 9;
];
expVal(:, :, 2) = [
    10, 12, 14;
    12, 14, 16;
    14, 16, 18;
];

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #37
% Define parameters
grads = zeros(3, 3, 2);
grads(:, :, 1) = [
    1, 2, 3;
    4, 5, 6;
    7, 8, 9;
];
grads(:, :, 2) = [
    10, 11, 12;
    13, 14, 15;
    16, 17, 18;
];
nQuants = 3;
quants = compQuants(grads, nQuants);
fun = @(G, S, W) W;

% Obtain actual value
actVal = evalFun(fun, quants);

% Define expected value
expVal = zeros(3, 3, 2);
expVal(:, :, 1) = [
     0, -1, -2;
     1,  0, -1;
     2,  1,  0;
];
expVal(:, :, 2) = [
     0, -1, -2;
     1,  0, -1;
     2,  1,  0;
];

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #38
% Define parameters
grads = zeros(3, 3, 2);
grads(:, :, 1) = [
    1, 2, 3;
    4, 5, 6;
    7, 8, 9;
];
grads(:, :, 2) = [
    10, 11, 12;
    13, 14, 15;
    16, 17, 18;
];
nQuants = 4;
quants = compQuants(grads, nQuants);
fun = @(G, S, W, I1) I1;

% Obtain actual value
actVal = evalFun(fun, quants);

% Define expected value
expVal = zeros(1, 1, 2);
expVal(1, 1, :) = [
     273;
    1812;
];

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #39
% Define parameters
grads = zeros(3, 3, 2);
grads(:, :, 1) = [
    1, 2, 3;
    4, 5, 6;
    7, 8, 9;
];
grads(:, :, 2) = [
    10, 11, 12;
    13, 14, 15;
    16, 17, 18;
];
nQuants = 5;
quants = compQuants(grads, nQuants);
fun = @(G, S, W, I1, I2) I2;

% Obtain actual value
actVal = evalFun(fun, quants);

% Define expected value
expVal = zeros(1, 1, 2);
expVal(1, 1, :) = [
    -12;
    -12;
];

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #40
% Define parameters
grads = zeros(3, 3, 2);
grads(:, :, 1) = [
    1, 2, 3;
    4, 5, 6;
    7, 8, 9;
];
grads(:, :, 2) = [
    10, 11, 12;
    13, 14, 15;
    16, 17, 18;
];
nQuants = 6;
quants = compQuants(grads, nQuants);
fun = @(G, S, W, I1, I2, I3) I3;

% Obtain actual value
actVal = evalFun(fun, quants);

% Define expected value
expVal = zeros(1, 1, 2);
expVal(1, 1, :) = [
     4455;
    77112;
];

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #41
% Define parameters
grads = zeros(3, 3, 2);
grads(:, :, 1) = [
    1, 2, 3;
    4, 5, 6;
    7, 8, 9;
];
grads(:, :, 2) = [
    10, 11, 12;
    13, 14, 15;
    16, 17, 18;
];
nQuants = 7;
quants = compQuants(grads, nQuants);
fun = @(G, S, W, I1, I2, I3, I4) I4;

% Obtain actual value
actVal = evalFun(fun, quants);

% Define expected value
expVal = zeros(1, 1, 2);
expVal(1, 1, :) = [
     -90;
    -252;
];

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #42
% Define parameters
grads = zeros(3, 3, 2);
grads(:, :, 1) = [
    1, 2, 3;
    4, 5, 6;
    7, 8, 9;
];
grads(:, :, 2) = [
    10, 11, 12;
    13, 14, 15;
    16, 17, 18;
];
nQuants = 8;
quants = compQuants(grads, nQuants);
fun = @(G, S, W, I1, I2, I3, I4, I5) I5;

% Obtain actual value
actVal = evalFun(fun, quants);

% Define expected value
expVal = zeros(1, 1, 2);
expVal(1, 1, :) = [
     -1638;
    -10872;
];

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #43
% Define parameters
grads = zeros(3, 3, 2);
grads(:, :, 1) = [
    1, 2, 3;
    4, 5, 6;
    7, 8, 9;
];
grads(:, :, 2) = [
    10, 11, 12;
    13, 14, 15;
    16, 17, 18;
];
nQuants = 9;
quants = compQuants(grads, nQuants);
fun = @(G, S, W, I1, I2, I3, I4, I5, I6) G;

% Obtain actual value
actVal = evalFun(fun, quants);

% Define expected value
expVal = grads;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #44
% Define parameters
grads = zeros(3, 3, 2);
grads(:, :, 1) = [
    1, 2, 3;
    4, 5, 6;
    7, 8, 9;
];
grads(:, :, 2) = [
    10, 11, 12;
    13, 14, 15;
    16, 17, 18;
];
nQuants = 9;
quants = compQuants(grads, nQuants);
fun = @(G, S, W, I1, I2, I3, I4, I5, I6) I6;

% Obtain actual value
actVal = evalFun(fun, quants);

% Define expected value
expVal = zeros(1, 1, 2);
expVal(1, 1, :) = [
    0;
    0;
];

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #45
% Define parameters
grads = [
     1,  2,  4;
     7, 11, 16;
    22, 29, 37;
];
nQuants = 1;
quants = compQuants(grads, nQuants);
fun = @(G) G;

% Obtain actual value
actVal = evalFun(fun, quants);

% Define expected value
expVal = grads;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #46
% Define parameters
grads = [
     1,  2,  4;
     7, 11, 16;
    22, 29, 37;
];
nQuants = 1;
quants = compQuants(grads, nQuants);
fun = @(G) G;

% Obtain actual value
actVal = evalFun(fun, quants);

% Define expected value
expVal = grads;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #47
% Define parameters
grads = [
     1,  2,  4;
     7, 11, 16;
    22, 29, 37;
];
nQuants = 2;
quants = compQuants(grads, nQuants);
fun = @(G, S) S;

% Obtain actual value
actVal = evalFun(fun, quants);

% Define expected value
expVal = [
     1.0,  4.5, 13.0;
     4.5, 11.0, 22.5;
    13.0, 22.5, 37.0;
];

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #48
% Define parameters
grads = [
     1,  2,  4;
     7, 11, 16;
    22, 29, 37;
];
nQuants = 3;
quants = compQuants(grads, nQuants);
fun = @(G, S, W) W;

% Obtain actual value
actVal = evalFun(fun, quants);

% Define expected value
expVal = [
      0.0, -2.5, -9.0;
      2.5,  0.0, -6.5;
      9.0,  6.5,  0.0;
];

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #49
% Define parameters
grads = [
     1,  2,  4;
     7, 11, 16;
    22, 29, 37;
];
nQuants = 4;
quants = compQuants(grads, nQuants);
fun = @(G, S, W, I1) I1;

% Obtain actual value
actVal = evalFun(fun, quants);

% Define expected value
expVal = 2882;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #50
% Define parameters
grads = [
     1,  2,  4;
     7, 11, 16;
    22, 29, 37;
];
nQuants = 5;
quants = compQuants(grads, nQuants);
fun = @(G, S, W, I1, I2) I2;

% Obtain actual value
actVal = evalFun(fun, quants);

% Define expected value
expVal = -259;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #51
% Define parameters
grads = [
     1,  2,  4;
     7, 11, 16;
    22, 29, 37;
];
nQuants = 6;
quants = compQuants(grads, nQuants);
fun = @(G, S, W, I1, I2, I3) I3;

% Obtain actual value
actVal = evalFun(fun, quants);

% Define expected value
expVal = 152777.5;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #52
% Define parameters
grads = [
     1,  2,  4;
     7, 11, 16;
    22, 29, 37;
];
nQuants = 7;
quants = compQuants(grads, nQuants);
fun = @(G, S, W, I1, I2, I3, I4) I4;

% Obtain actual value
actVal = evalFun(fun, quants);

% Define expected value
expVal = -6297.5;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #53
% Define parameters
grads = [
     1,  2,  4;
     7, 11, 16;
    22, 29, 37;
];
nQuants = 8;
quants = compQuants(grads, nQuants);
fun = @(G, S, W, I1, I2, I3, I4, I5) I5;

% Obtain actual value
actVal = evalFun(fun, quants);

% Define expected value
expVal = -372384.25;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #54
% Define parameters
grads = [
     1,  2,  4;
     7, 11, 16;
    22, 29, 37;
];
nQuants = 9;
quants = compQuants(grads, nQuants);
fun = @(G, S, W, I1, I2, I3, I4, I5, I6) G;

% Obtain actual value
actVal = evalFun(fun, quants);

% Define expected value
expVal = grads;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #55
% Define parameters
grads = [
     1,  2,  4;
     7, 11, 16;
    22, 29, 37;
];
nQuants = 9;
quants = compQuants(grads, nQuants);
fun = @(G, S, W, I1, I2, I3, I4, I5, I6) I6;

% Obtain actual value
actVal = evalFun(fun, quants);

% Define expected value
expVal = 93494.25;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');
