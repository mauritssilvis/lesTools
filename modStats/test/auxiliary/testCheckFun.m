% Test checkFun()

%% Test output type #1
% Define parameters
fun = @(G) G;
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #2
% Define parameters
fun = @(G) G;
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #3
% Define parameters
fun = @(G, S) S;
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #4
% Define parameters
fun = @(G, S) S;
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #5
% Define parameters
fun = @(G, S, W) W;
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #6
% Define parameters
fun = @(G, S, W) W;
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #7
% Define parameters
fun = @(G, S, W, I1) I1;
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #8
% Define parameters
fun = @(G, S, W, I1) I1;
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #9
% Define parameters
fun = @(G, S, W, I1, I2) I2;
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #10
% Define parameters
fun = @(G, S, W, I1, I2) I2;
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #11
% Define parameters
fun = @(G, S, W, I1, I2, I3) I3;
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #12
% Define parameters
fun = @(G, S, W, I1, I2, I3) I3;
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #13
% Define parameters
fun = @(G, S, W, I1, I2, I3, I4) I4;
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #14
% Define parameters
fun = @(G, S, W, I1, I2, I3, I4) I4;
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #15
% Define parameters
fun = @(G, S, W, I1, I2, I3, I4, I5) I5;
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #16
% Define parameters
fun = @(G, S, W, I1, I2, I3, I4, I5) I5;
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #17
% Define parameters
fun = @(G, S, W, I1, I2, I3, I4, I5, I6) G;
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #18
% Define parameters
fun = @(G, S, W, I1, I2, I3, I4, I5, I6) G;
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #19
% Define parameters
fun = @(G, S, W, I1, I2, I3, I4, I5, I6) I6;
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #20
% Define parameters
fun = @(G, S, W, I1, I2, I3, I4, I5, I6) I6;
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output size #1
% Define parameters
fun = @(G) G;
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #2
% Define parameters
fun = @(G) G;
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #3
% Define parameters
fun = @(G, S) S;
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #4
% Define parameters
fun = @(G, S) S;
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #5
% Define parameters
fun = @(G, S, W) W;
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #6
% Define parameters
fun = @(G, S, W) W;
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #7
% Define parameters
fun = @(G, S, W, I1) I1;
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #8
% Define parameters
fun = @(G, S, W, I1) I1;
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #9
% Define parameters
fun = @(G, S, W, I1, I2) I2;
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #10
% Define parameters
fun = @(G, S, W, I1, I2) I2;
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #11
% Define parameters
fun = @(G, S, W, I1, I2, I3) I3;
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #12
% Define parameters
fun = @(G, S, W, I1, I2, I3) I3;
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #13
% Define parameters
fun = @(G, S, W, I1, I2, I3, I4) I4;
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #14
% Define parameters
fun = @(G, S, W, I1, I2, I3, I4) I4;
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #15
% Define parameters
fun = @(G, S, W, I1, I2, I3, I4, I5) I5;
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #16
% Define parameters
fun = @(G, S, W, I1, I2, I3, I4, I5) I5;
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #17
% Define parameters
fun = @(G, S, W, I1, I2, I3, I4, I5, I6) G;
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #18
% Define parameters
fun = @(G, S, W, I1, I2, I3, I4, I5, I6) G;
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #19
% Define parameters
fun = @(G, S, W, I1, I2, I3, I4, I5, I6) I6;
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #20
% Define parameters
fun = @(G, S, W, I1, I2, I3, I4, I5, I6) I6;
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test actual output #1
% Define parameters
fun = @(G) G;
spaceDims = 2;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 0;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #2
% Define parameters
fun = @(G) G;
spaceDims = 3;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 0;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #3
% Define parameters
fun = @(G, S) S;
spaceDims = 2;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 0;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #4
% Define parameters
fun = @(G, S) S;
spaceDims = 3;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 0;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #5
% Define parameters
fun = @(G, S, W) W;
spaceDims = 2;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 0;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #6
% Define parameters
fun = @(G, S, W) W;
spaceDims = 3;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 0;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #7
% Define parameters
fun = @(G, S, W, I1) I1;
spaceDims = 2;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 0;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #8
% Define parameters
fun = @(G, S, W, I1) I1;
spaceDims = 3;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 0;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #9
% Define parameters
fun = @(G, S, W, I1, I2) I2;
spaceDims = 2;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 0;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #10
% Define parameters
fun = @(G, S, W, I1, I2) I2;
spaceDims = 3;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 0;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #11
% Define parameters
fun = @(G, S, W, I1, I2, I3) I3;
spaceDims = 2;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 0;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #12
% Define parameters
fun = @(G, S, W, I1, I2, I3) I3;
spaceDims = 3;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 0;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #13
% Define parameters
fun = @(G, S, W, I1, I2, I3, I4) I4;
spaceDims = 2;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 0;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #14
% Define parameters
fun = @(G, S, W, I1, I2, I3, I4) I4;
spaceDims = 3;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 0;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #15
% Define parameters
fun = @(G, S, W, I1, I2, I3, I4, I5) I5;
spaceDims = 2;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 0;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #16
% Define parameters
fun = @(G, S, W, I1, I2, I3, I4, I5) I5;
spaceDims = 3;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 0;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #17
% Define parameters
fun = @(G, S, W, I1, I2, I3, I4, I5, I6) G;
spaceDims = 2;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 0;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #18
% Define parameters
fun = @(G, S, W, I1, I2, I3, I4, I5, I6) G;
spaceDims = 3;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 0;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #19
% Define parameters
fun = @(G, S, W, I1, I2, I3, I4, I5, I6) I6;
spaceDims = 2;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 0;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #20
% Define parameters
fun = @(G, S, W, I1, I2, I3, I4, I5, I6) I6;
spaceDims = 3;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 0;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');
