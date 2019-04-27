% Test compStats()

%% Test output type #1
% Define parameters
nDims = 1;
nVals = 1;
vals = ones(nDims, nDims, nVals);
shiftAvg = 1;

% Obtain value
[val, ~, ~, ~] = compStats(vals, shiftAvg);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #2
% Define parameters
nDims = 1;
nVals = 1;
vals = ones(nDims, nDims, nVals);
shiftAvg = 1;

% Obtain value
[~, val, ~, ~] = compStats(vals, shiftAvg);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #3
% Define parameters
nDims = 1;
nVals = 1;
vals = ones(nDims, nDims, nVals);
shiftAvg = 1;

% Obtain values
[~, ~, val, ~] = compStats(vals, shiftAvg);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #4
% Define parameters
nDims = 1;
nVals = 1;
vals = ones(nDims, nDims, nVals);
shiftAvg = 1;

% Obtain values
[~, ~, ~, val] = compStats(vals, shiftAvg);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #5
% Define parameters
nDims = 1;
nVals = 2;
vals = ones(nDims, nDims, nVals);
shiftAvg = 1;

% Obtain value
[val, ~, ~, ~] = compStats(vals, shiftAvg);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #6
% Define parameters
nDims = 1;
nVals = 2;
vals = ones(nDims, nDims, nVals);
shiftAvg = 1;

% Obtain value
[~, val, ~, ~] = compStats(vals, shiftAvg);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #7
% Define parameters
nDims = 1;
nVals = 2;
vals = ones(nDims, nDims, nVals);
shiftAvg = 1;

% Obtain values
[~, ~, val, ~] = compStats(vals, shiftAvg);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #8
% Define parameters
nDims = 1;
nVals = 2;
vals = ones(nDims, nDims, nVals);
shiftAvg = 1;

% Obtain values
[~, ~, ~, val] = compStats(vals, shiftAvg);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #9
% Define parameters
nDims = 1;
nVals = 3;
vals = ones(nDims, nDims, nVals);
shiftAvg = 1;

% Obtain value
[val, ~, ~, ~] = compStats(vals, shiftAvg);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #10
% Define parameters
nDims = 1;
nVals = 3;
vals = ones(nDims, nDims, nVals);
shiftAvg = 1;

% Obtain value
[~, val, ~, ~] = compStats(vals, shiftAvg);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #11
% Define parameters
nDims = 1;
nVals = 3;
vals = ones(nDims, nDims, nVals);
shiftAvg = 1;

% Obtain values
[~, ~, val, ~] = compStats(vals, shiftAvg);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #12
% Define parameters
nDims = 1;
nVals = 3;
vals = ones(nDims, nDims, nVals);
shiftAvg = 1;

% Obtain values
[~, ~, ~, val] = compStats(vals, shiftAvg);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #13
% Define parameters
nDims = 2;
nVals = 1;
vals = ones(nDims, nDims, nVals);
shiftAvg = 1;

% Obtain value
[val, ~, ~, ~] = compStats(vals, shiftAvg);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #14
% Define parameters
nDims = 2;
nVals = 1;
vals = ones(nDims, nDims, nVals);
shiftAvg = 1;

% Obtain value
[~, val, ~, ~] = compStats(vals, shiftAvg);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #15
% Define parameters
nDims = 2;
nVals = 1;
vals = ones(nDims, nDims, nVals);
shiftAvg = 1;

% Obtain values
[~, ~, val, ~] = compStats(vals, shiftAvg);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #16
% Define parameters
nDims = 2;
nVals = 1;
vals = ones(nDims, nDims, nVals);
shiftAvg = 1;

% Obtain values
[~, ~, ~, val] = compStats(vals, shiftAvg);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #17
% Define parameters
nDims = 2;
nVals = 2;
vals = ones(nDims, nDims, nVals);
shiftAvg = 1;

% Obtain value
[val, ~, ~, ~] = compStats(vals, shiftAvg);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #18
% Define parameters
nDims = 2;
nVals = 2;
vals = ones(nDims, nDims, nVals);
shiftAvg = 1;

% Obtain value
[~, val, ~, ~] = compStats(vals, shiftAvg);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #19
% Define parameters
nDims = 2;
nVals = 2;
vals = ones(nDims, nDims, nVals);
shiftAvg = 1;

% Obtain values
[~, ~, val, ~] = compStats(vals, shiftAvg);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #20
% Define parameters
nDims = 2;
nVals = 2;
vals = ones(nDims, nDims, nVals);
shiftAvg = 1;

% Obtain values
[~, ~, ~, val] = compStats(vals, shiftAvg);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #21
% Define parameters
nDims = 2;
nVals = 3;
vals = ones(nDims, nDims, nVals);
shiftAvg = 1;

% Obtain value
[val, ~, ~, ~] = compStats(vals, shiftAvg);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #22
% Define parameters
nDims = 2;
nVals = 3;
vals = ones(nDims, nDims, nVals);
shiftAvg = 1;

% Obtain value
[~, val, ~, ~] = compStats(vals, shiftAvg);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #23
% Define parameters
nDims = 2;
nVals = 3;
vals = ones(nDims, nDims, nVals);
shiftAvg = 1;

% Obtain values
[~, ~, val, ~] = compStats(vals, shiftAvg);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #24
% Define parameters
nDims = 2;
nVals = 3;
vals = ones(nDims, nDims, nVals);
shiftAvg = 1;

% Obtain values
[~, ~, ~, val] = compStats(vals, shiftAvg);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #25
% Define parameters
nDims = 3;
nVals = 1;
vals = ones(nDims, nDims, nVals);
shiftAvg = 1;

% Obtain value
[val, ~, ~, ~] = compStats(vals, shiftAvg);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #26
% Define parameters
nDims = 3;
nVals = 1;
vals = ones(nDims, nDims, nVals);
shiftAvg = 1;

% Obtain value
[~, val, ~, ~] = compStats(vals, shiftAvg);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #27
% Define parameters
nDims = 3;
nVals = 1;
vals = ones(nDims, nDims, nVals);
shiftAvg = 1;

% Obtain values
[~, ~, val, ~] = compStats(vals, shiftAvg);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #28
% Define parameters
nDims = 3;
nVals = 1;
vals = ones(nDims, nDims, nVals);
shiftAvg = 1;

% Obtain values
[~, ~, ~, val] = compStats(vals, shiftAvg);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #29
% Define parameters
nDims = 3;
nVals = 2;
vals = ones(nDims, nDims, nVals);
shiftAvg = 1;

% Obtain value
[val, ~, ~, ~] = compStats(vals, shiftAvg);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #30
% Define parameters
nDims = 3;
nVals = 2;
vals = ones(nDims, nDims, nVals);
shiftAvg = 1;

% Obtain value
[~, val, ~, ~] = compStats(vals, shiftAvg);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #31
% Define parameters
nDims = 3;
nVals = 2;
vals = ones(nDims, nDims, nVals);
shiftAvg = 1;

% Obtain values
[~, ~, val, ~] = compStats(vals, shiftAvg);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #32
% Define parameters
nDims = 3;
nVals = 2;
vals = ones(nDims, nDims, nVals);
shiftAvg = 1;

% Obtain values
[~, ~, ~, val] = compStats(vals, shiftAvg);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #33
% Define parameters
nDims = 3;
nVals = 3;
vals = ones(nDims, nDims, nVals);
shiftAvg = 1;

% Obtain value
[val, ~, ~, ~] = compStats(vals, shiftAvg);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #34
% Define parameters
nDims = 3;
nVals = 3;
vals = ones(nDims, nDims, nVals);
shiftAvg = 1;

% Obtain value
[~, val, ~, ~] = compStats(vals, shiftAvg);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #35
% Define parameters
nDims = 3;
nVals = 3;
vals = ones(nDims, nDims, nVals);
shiftAvg = 1;

% Obtain values
[~, ~, val, ~] = compStats(vals, shiftAvg);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #36
% Define parameters
nDims = 3;
nVals = 3;
vals = ones(nDims, nDims, nVals);
shiftAvg = 1;

% Obtain values
[~, ~, ~, val] = compStats(vals, shiftAvg);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output size #1
% Define parameters
nDims = 1;
nVals = 1;
vals = ones(nDims, nDims, nVals);
shiftAvg = 1;

% Obtain value
[val, ~, ~, ~] = compStats(vals, shiftAvg);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [nDims, nDims, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #2
% Define parameters
nDims = 1;
nVals = 1;
vals = ones(nDims, nDims, nVals);
shiftAvg = 1;

% Obtain value
[~, val, ~, ~] = compStats(vals, shiftAvg);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [nDims, nDims, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #3
% Define parameters
nDims = 1;
nVals = 1;
vals = ones(nDims, nDims, nVals);
shiftAvg = 1;

% Obtain value
[~, ~, val, ~] = compStats(vals, shiftAvg);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [nDims, nDims, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #4
% Define parameters
nDims = 1;
nVals = 1;
vals = ones(nDims, nDims, nVals);
shiftAvg = 1;

% Obtain value
[~, ~, ~, val] = compStats(vals, shiftAvg);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [nDims, nDims, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #5
% Define parameters
nDims = 1;
nVals = 2;
vals = ones(nDims, nDims, nVals);
shiftAvg = 1;

% Obtain value
[val, ~, ~, ~] = compStats(vals, shiftAvg);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [nDims, nDims, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #6
% Define parameters
nDims = 1;
nVals = 2;
vals = ones(nDims, nDims, nVals);
shiftAvg = 1;

% Obtain value
[~, val, ~, ~] = compStats(vals, shiftAvg);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [nDims, nDims, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #7
% Define parameters
nDims = 1;
nVals = 2;
vals = ones(nDims, nDims, nVals);
shiftAvg = 1;

% Obtain value
[~, ~, val, ~] = compStats(vals, shiftAvg);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [nDims, nDims, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #8
% Define parameters
nDims = 1;
nVals = 2;
vals = ones(nDims, nDims, nVals);
shiftAvg = 1;

% Obtain value
[~, ~, ~, val] = compStats(vals, shiftAvg);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [nDims, nDims, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #9
% Define parameters
nDims = 1;
nVals = 3;
vals = ones(nDims, nDims, nVals);
shiftAvg = 1;

% Obtain value
[val, ~, ~, ~] = compStats(vals, shiftAvg);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [nDims, nDims, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #10
% Define parameters
nDims = 1;
nVals = 3;
vals = ones(nDims, nDims, nVals);
shiftAvg = 1;

% Obtain value
[~, val, ~, ~] = compStats(vals, shiftAvg);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [nDims, nDims, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #11
% Define parameters
nDims = 1;
nVals = 3;
vals = ones(nDims, nDims, nVals);
shiftAvg = 1;

% Obtain value
[~, ~, val, ~] = compStats(vals, shiftAvg);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [nDims, nDims, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #12
% Define parameters
nDims = 1;
nVals = 3;
vals = ones(nDims, nDims, nVals);
shiftAvg = 1;

% Obtain value
[~, ~, ~, val] = compStats(vals, shiftAvg);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [nDims, nDims, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #13
% Define parameters
nDims = 2;
nVals = 1;
vals = ones(nDims, nDims, nVals);
shiftAvg = 1;

% Obtain value
[val, ~, ~, ~] = compStats(vals, shiftAvg);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [nDims, nDims, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #14
% Define parameters
nDims = 2;
nVals = 1;
vals = ones(nDims, nDims, nVals);
shiftAvg = 1;

% Obtain value
[~, val, ~, ~] = compStats(vals, shiftAvg);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [nDims, nDims, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #15
% Define parameters
nDims = 2;
nVals = 1;
vals = ones(nDims, nDims, nVals);
shiftAvg = 1;

% Obtain value
[~, ~, val, ~] = compStats(vals, shiftAvg);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [nDims, nDims, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #16
% Define parameters
nDims = 2;
nVals = 1;
vals = ones(nDims, nDims, nVals);
shiftAvg = 1;

% Obtain value
[~, ~, ~, val] = compStats(vals, shiftAvg);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [nDims, nDims, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #17
% Define parameters
nDims = 2;
nVals = 2;
vals = ones(nDims, nDims, nVals);
shiftAvg = 1;

% Obtain value
[val, ~, ~, ~] = compStats(vals, shiftAvg);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [nDims, nDims, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #18
% Define parameters
nDims = 2;
nVals = 2;
vals = ones(nDims, nDims, nVals);
shiftAvg = 1;

% Obtain value
[~, val, ~, ~] = compStats(vals, shiftAvg);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [nDims, nDims, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #19
% Define parameters
nDims = 2;
nVals = 2;
vals = ones(nDims, nDims, nVals);
shiftAvg = 1;

% Obtain value
[~, ~, val, ~] = compStats(vals, shiftAvg);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [nDims, nDims, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #20
% Define parameters
nDims = 2;
nVals = 2;
vals = ones(nDims, nDims, nVals);
shiftAvg = 1;

% Obtain value
[~, ~, ~, val] = compStats(vals, shiftAvg);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [nDims, nDims, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #21
% Define parameters
nDims = 2;
nVals = 3;
vals = ones(nDims, nDims, nVals);
shiftAvg = 1;

% Obtain value
[val, ~, ~, ~] = compStats(vals, shiftAvg);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [nDims, nDims, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #22
% Define parameters
nDims = 2;
nVals = 3;
vals = ones(nDims, nDims, nVals);
shiftAvg = 1;

% Obtain value
[~, val, ~, ~] = compStats(vals, shiftAvg);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [nDims, nDims, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #23
% Define parameters
nDims = 2;
nVals = 3;
vals = ones(nDims, nDims, nVals);
shiftAvg = 1;

% Obtain value
[~, ~, val, ~] = compStats(vals, shiftAvg);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [nDims, nDims, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #24
% Define parameters
nDims = 2;
nVals = 3;
vals = ones(nDims, nDims, nVals);
shiftAvg = 1;

% Obtain value
[~, ~, ~, val] = compStats(vals, shiftAvg);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [nDims, nDims, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #25
% Define parameters
nDims = 3;
nVals = 1;
vals = ones(nDims, nDims, nVals);
shiftAvg = 1;

% Obtain value
[val, ~, ~, ~] = compStats(vals, shiftAvg);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [nDims, nDims, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #26
% Define parameters
nDims = 3;
nVals = 1;
vals = ones(nDims, nDims, nVals);
shiftAvg = 1;

% Obtain value
[~, val, ~, ~] = compStats(vals, shiftAvg);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [nDims, nDims, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #27
% Define parameters
nDims = 3;
nVals = 1;
vals = ones(nDims, nDims, nVals);
shiftAvg = 1;

% Obtain value
[~, ~, val, ~] = compStats(vals, shiftAvg);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [nDims, nDims, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #28
% Define parameters
nDims = 3;
nVals = 1;
vals = ones(nDims, nDims, nVals);
shiftAvg = 1;

% Obtain value
[~, ~, ~, val] = compStats(vals, shiftAvg);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [nDims, nDims, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #29
% Define parameters
nDims = 3;
nVals = 2;
vals = ones(nDims, nDims, nVals);
shiftAvg = 1;

% Obtain value
[val, ~, ~, ~] = compStats(vals, shiftAvg);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [nDims, nDims, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #30
% Define parameters
nDims = 3;
nVals = 2;
vals = ones(nDims, nDims, nVals);
shiftAvg = 1;

% Obtain value
[~, val, ~, ~] = compStats(vals, shiftAvg);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [nDims, nDims, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #31
% Define parameters
nDims = 3;
nVals = 2;
vals = ones(nDims, nDims, nVals);
shiftAvg = 1;

% Obtain value
[~, ~, val, ~] = compStats(vals, shiftAvg);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [nDims, nDims, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #32
% Define parameters
nDims = 3;
nVals = 2;
vals = ones(nDims, nDims, nVals);
shiftAvg = 1;

% Obtain value
[~, ~, ~, val] = compStats(vals, shiftAvg);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [nDims, nDims, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #33
% Define parameters
nDims = 3;
nVals = 3;
vals = ones(nDims, nDims, nVals);
shiftAvg = 1;

% Obtain value
[val, ~, ~, ~] = compStats(vals, shiftAvg);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [nDims, nDims, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #34
% Define parameters
nDims = 3;
nVals = 3;
vals = ones(nDims, nDims, nVals);
shiftAvg = 1;

% Obtain value
[~, val, ~, ~] = compStats(vals, shiftAvg);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [nDims, nDims, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #35
% Define parameters
nDims = 3;
nVals = 3;
vals = ones(nDims, nDims, nVals);
shiftAvg = 1;

% Obtain value
[~, ~, val, ~] = compStats(vals, shiftAvg);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [nDims, nDims, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #36
% Define parameters
nDims = 3;
nVals = 3;
vals = ones(nDims, nDims, nVals);
shiftAvg = 1;

% Obtain value
[~, ~, ~, val] = compStats(vals, shiftAvg);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [nDims, nDims, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test actual output #1
% Define parameters
nDims = 1;
nVals = 1;
vals = zeros(nDims, nDims, nVals);
vals(:) = 1 : nDims * nDims * nVals;
shiftAvg = 1;

% Obtain actual value
[actVal, ~, ~, ~] = compStats(vals, shiftAvg);

% Define expected value
expVal = 1;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #2
% Define parameters
nDims = 1;
nVals = 1;
vals = zeros(nDims, nDims, nVals);
vals(:) = 1 : nDims * nDims * nVals;
shiftAvg = 1;

% Obtain actual value
[~, actVal, ~, ~] = compStats(vals, shiftAvg);

% Define expected value
expVal = 0;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #3
% Define parameters
nDims = 1;
nVals = 1;
vals = zeros(nDims, nDims, nVals);
vals(:) = 1 : nDims * nDims * nVals;
shiftAvg = 1;

% Obtain actual value
[~, ~, actVal, ~] = compStats(vals, shiftAvg);

% Define expected value
expVal = 0;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #4
% Define parameters
nDims = 1;
nVals = 1;
vals = zeros(nDims, nDims, nVals);
vals(:) = 1 : nDims * nDims * nVals;
shiftAvg = 1;

% Obtain actual value
[~, ~, ~, actVal] = compStats(vals, shiftAvg);

% Define expected value
expVal = 0;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #5
% Define parameters
nDims = 1;
nVals = 2;
vals = zeros(nDims, nDims, nVals);
vals(:) = 1 : nDims * nDims * nVals;
shiftAvg = 1;

% Obtain actual value
[actVal, ~, ~, ~] = compStats(vals, shiftAvg);

% Define expected value
expVal = 1.5;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #6
% Define parameters
nDims = 1;
nVals = 2;
vals = zeros(nDims, nDims, nVals);
vals(:) = 1 : nDims * nDims * nVals;
shiftAvg = 1;

% Obtain actual value
[~, actVal, ~, ~] = compStats(vals, shiftAvg);

% Define expected value
expVal = sqrt( 1 / (nVals - 1) * ( ...
    (1.0 - 1.5)^2 + (2.0 - 1.5)^2 ...
) );

% Test
assert( all( all( all( abs( actVal - expVal ) < 5 * eps ) ) ), 'Unexpected output.' );

%% Test actual output #7
% Define parameters
nDims = 1;
nVals = 2;
vals = zeros(nDims, nDims, nVals);
vals(:) = 1 : nDims * nDims * nVals;
shiftAvg = 1;

% Obtain actual value
[~, ~, actVal, ~] = compStats(vals, shiftAvg);

% Define expected value
expVal = sqrt( 1 / (nVals - 1) * ( ...
    (1.0 - 1.5)^2 + (2.0 - 1.5)^2 ...
) ) / 1.5;

% Test
assert( all( all( all( abs( actVal - expVal ) < 5 * eps ) ) ), 'Unexpected output.' );

%% Test actual output #8
% Define parameters
nDims = 1;
nVals = 2;
vals = zeros(nDims, nDims, nVals);
vals(:) = 1 : nDims * nDims * nVals;
shiftAvg = 1;

% Obtain actual value
[~, ~, ~, actVal] = compStats(vals, shiftAvg);

% Define expected value
expVal = sqrt( 1 / (nVals - 1) * ( ...
    (1.0 - 1.5)^2 + (2.0 - 1.5)^2 ...
) ) / 2.5;

% Test
assert( all( all( all( abs( actVal - expVal ) < 5 * eps ) ) ), 'Unexpected output.' );

%% Test actual output #9
% Define parameters
nDims = 1;
nVals = 3;
vals = zeros(nDims, nDims, nVals);
vals(:) = 1 : nDims * nDims * nVals;
shiftAvg = 1;

% Obtain actual value
[actVal, ~, ~, ~] = compStats(vals, shiftAvg);

% Define expected value
expVal = 2;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #10
% Define parameters
nDims = 1;
nVals = 3;
vals = zeros(nDims, nDims, nVals);
vals(:) = 1 : nDims * nDims * nVals;
shiftAvg = 1;

% Obtain actual value
[~, actVal, ~, ~] = compStats(vals, shiftAvg);

% Define expected value
expVal = sqrt( 1 / (nVals - 1) * ( ...
    (1.0 - 2.0)^2 + (2.0 - 2.0)^2 + (3.0 - 2.0)^2 ...
) );

% Test
assert( all( all( all( abs( actVal - expVal ) < 5 * eps ) ) ), 'Unexpected output.' );

%% Test actual output #11
% Define parameters
nDims = 1;
nVals = 3;
vals = zeros(nDims, nDims, nVals);
vals(:) = 1 : nDims * nDims * nVals;
shiftAvg = 1;

% Obtain actual value
[~, ~, actVal, ~] = compStats(vals, shiftAvg);

% Define expected value
expVal = sqrt( 1 / (nVals - 1) * ( ...
    (1.0 - 2.0)^2 + (2.0 - 2.0)^2 + (3.0 - 2.0)^2 ...
) ) / 2;

% Test
assert( all( all( all( abs( actVal - expVal ) < 5 * eps ) ) ), 'Unexpected output.' );

%% Test actual output #12
% Define parameters
nDims = 1;
nVals = 3;
vals = zeros(nDims, nDims, nVals);
vals(:) = 1 : nDims * nDims * nVals;
shiftAvg = 1;

% Obtain actual value
[~, ~, ~, actVal] = compStats(vals, shiftAvg);

% Define expected value
expVal = sqrt( 1 / (nVals - 1) * ( ...
    (1.0 - 2.0)^2 + (2.0 - 2.0)^2 + (3.0 - 2.0)^2 ...
) ) / 3;

% Test
assert( all( all( all( abs( actVal - expVal ) < 5 * eps ) ) ), 'Unexpected output.' );

%% Test actual output #13
% Define parameters
nDims = 2;
nVals = 1;
vals = zeros(nDims, nDims, nVals);
vals(:) = 1 : nDims * nDims * nVals;
shiftAvg = 1;

% Obtain actual value
[actVal, ~, ~, ~] = compStats(vals, shiftAvg);

% Define expected value
expVal = [
    1, 3;
    2, 4;
];

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #14
% Define parameters
nDims = 2;
nVals = 1;
vals = zeros(nDims, nDims, nVals);
vals(:) = 1 : nDims * nDims * nVals;
shiftAvg = 1;

% Obtain actual value
[~, actVal, ~, ~] = compStats(vals, shiftAvg);

% Define expected value
expVal = [
    0, 0;
    0, 0;
];

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #15
% Define parameters
nDims = 2;
nVals = 1;
vals = zeros(nDims, nDims, nVals);
vals(:) = 1 : nDims * nDims * nVals;
shiftAvg = 1;

% Obtain actual value
[~, ~, actVal, ~] = compStats(vals, shiftAvg);

% Define expected value
expVal = [
    0, 0;
    0, 0;
];

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #16
% Define parameters
nDims = 2;
nVals = 1;
vals = zeros(nDims, nDims, nVals);
vals(:) = 1 : nDims * nDims * nVals;
shiftAvg = 1;

% Obtain actual value
[~, ~, ~, actVal] = compStats(vals, shiftAvg);

% Define expected value
expVal = [
    0, 0;
    0, 0;
];

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #17
% Define parameters
nDims = 2;
nVals = 2;
vals = zeros(nDims, nDims, nVals);
vals(:) = 1 : nDims * nDims * nVals;
shiftAvg = 1;

% Obtain actual value
[actVal, ~, ~, ~] = compStats(vals, shiftAvg);

% Define expected value
expVal = [
    3, 5;
    4, 6;
];

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #18
% Define parameters
nDims = 2;
nVals = 2;
vals = zeros(nDims, nDims, nVals);
vals(:) = 1 : nDims * nDims * nVals;
shiftAvg = 1;

% Obtain actual value
[~, actVal, ~, ~] = compStats(vals, shiftAvg);

% Define expected value
expVal = sqrt( 1 / (nVals - 1) ) * [
     sqrt( (1.0 - 3.0)^2 + (5.0 - 3.0)^2 ), ...
     sqrt( (3.0 - 5.0)^2 + (7.0 - 5.0)^2 );
     sqrt( (2.0 - 4.0)^2 + (6.0 - 4.0)^2 ), ...
     sqrt( (4.0 - 6.0)^2 + (8.0 - 6.0)^2 );
];

% Test
assert( all( all( all( abs( actVal - expVal ) < 5 * eps ) ) ), 'Unexpected output.' );

%% Test actual output #19
% Define parameters
nDims = 2;
nVals = 2;
vals = zeros(nDims, nDims, nVals);
vals(:) = 1 : nDims * nDims * nVals;
shiftAvg = 1;

% Obtain actual value
[~, ~, actVal, ~] = compStats(vals, shiftAvg);

% Define expected value
expVal = sqrt( 1 / (nVals - 1) ) * [
     sqrt( (1.0 - 3.0)^2 + (5.0 - 3.0)^2 ) / 3, ...
     sqrt( (3.0 - 5.0)^2 + (7.0 - 5.0)^2 ) / 5;
     sqrt( (2.0 - 4.0)^2 + (6.0 - 4.0)^2 ) / 4, ...
     sqrt( (4.0 - 6.0)^2 + (8.0 - 6.0)^2 ) / 6;
];

% Test
assert( all( all( all( abs( actVal - expVal ) < 5 * eps ) ) ), 'Unexpected output.' );

%% Test actual output #20
% Define parameters
nDims = 2;
nVals = 2;
vals = zeros(nDims, nDims, nVals);
vals(:) = 1 : nDims * nDims * nVals;
shiftAvg = 1;

% Obtain actual value
[~, ~, ~, actVal] = compStats(vals, shiftAvg);

% Define expected value
expVal = sqrt( 1 / (nVals - 1) ) * [
     sqrt( (1.0 - 3.0)^2 + (5.0 - 3.0)^2 ) / 4, ...
     sqrt( (3.0 - 5.0)^2 + (7.0 - 5.0)^2 ) / 6;
     sqrt( (2.0 - 4.0)^2 + (6.0 - 4.0)^2 ) / 5, ...
     sqrt( (4.0 - 6.0)^2 + (8.0 - 6.0)^2 ) / 7;
];

% Test
assert( all( all( all( abs( actVal - expVal ) < 5 * eps ) ) ), 'Unexpected output.' );

%% Test actual output #21
% Define parameters
nDims = 2;
nVals = 3;
vals = zeros(nDims, nDims, nVals);
vals(:) = 1 : nDims * nDims * nVals;
shiftAvg = 1;

% Obtain actual value
[actVal, ~, ~, ~] = compStats(vals, shiftAvg);

% Define expected value
expVal = [
    5, 7;
    6, 8;
];

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #22
% Define parameters
nDims = 2;
nVals = 3;
vals = zeros(nDims, nDims, nVals);
vals(:) = 1 : nDims * nDims * nVals;
shiftAvg = 1;

% Obtain actual value
[~, actVal, ~, ~] = compStats(vals, shiftAvg);

% Define expected value
expVal = sqrt( 1 / (nVals - 1) ) * [
     sqrt( ( 1 -  5)^2 + ( 5 -  5)^2 + ( 9 -  5)^2 ), ...
     sqrt( ( 3 -  7)^2 + ( 7 -  7)^2 + (11 -  7)^2 );
     sqrt( ( 2 -  6)^2 + ( 6 -  6)^2 + (10 -  6)^2 ), ...
     sqrt( ( 4 -  8)^2 + ( 8 -  8)^2 + (12 -  8)^2 );
];

% Test
assert( all( all( all( abs( actVal - expVal ) < 5 * eps ) ) ), 'Unexpected output.' );

%% Test actual output #23
% Define parameters
nDims = 2;
nVals = 3;
vals = zeros(nDims, nDims, nVals);
vals(:) = 1 : nDims * nDims * nVals;
shiftAvg = 1;

% Obtain actual value
[~, ~, actVal, ~] = compStats(vals, shiftAvg);

% Define expected value
expVal = sqrt( 1 / (nVals - 1) ) * [
     sqrt( ( 1 -  5)^2 + ( 5 -  5)^2 + ( 9 -  5)^2 ) / 5, ...
     sqrt( ( 3 -  7)^2 + ( 7 -  7)^2 + (11 -  7)^2 ) / 7;
     sqrt( ( 2 -  6)^2 + ( 6 -  6)^2 + (10 -  6)^2 ) / 6, ...
     sqrt( ( 4 -  8)^2 + ( 8 -  8)^2 + (12 -  8)^2 ) / 8;
];

% Test
assert( all( all( all( abs( actVal - expVal ) < 5 * eps ) ) ), 'Unexpected output.' );

%% Test actual output #24
% Define parameters
nDims = 2;
nVals = 3;
vals = zeros(nDims, nDims, nVals);
vals(:) = 1 : nDims * nDims * nVals;
shiftAvg = 1;

% Obtain actual value
[~, ~, ~, actVal] = compStats(vals, shiftAvg);

% Define expected value
expVal = sqrt( 1 / (nVals - 1) ) * [
     sqrt( ( 1 -  5)^2 + ( 5 -  5)^2 + ( 9 -  5)^2 ) / 6, ...
     sqrt( ( 3 -  7)^2 + ( 7 -  7)^2 + (11 -  7)^2 ) / 8;
     sqrt( ( 2 -  6)^2 + ( 6 -  6)^2 + (10 -  6)^2 ) / 7, ...
     sqrt( ( 4 -  8)^2 + ( 8 -  8)^2 + (12 -  8)^2 ) / 9;
];

% Test
assert( all( all( all( abs( actVal - expVal ) < 5 * eps ) ) ), 'Unexpected output.' );

%% Test actual output #25
% Define parameters
nDims = 3;
nVals = 1;
vals = zeros(nDims, nDims, nVals);
vals(:) = 1 : nDims * nDims * nVals;
shiftAvg = 1;

% Obtain actual value
[actVal, ~, ~, ~] = compStats(vals, shiftAvg);

% Define expected value
expVal = [
    1, 4, 7;
    2, 5, 8;
    3, 6, 9;
];

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #26
% Define parameters
nDims = 3;
nVals = 1;
vals = zeros(nDims, nDims, nVals);
vals(:) = 1 : nDims * nDims * nVals;
shiftAvg = 1;

% Obtain actual value
[~, actVal, ~, ~] = compStats(vals, shiftAvg);

% Define expected value
expVal = [
    0, 0, 0;
    0, 0, 0;
    0, 0, 0;
];

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #27
% Define parameters
nDims = 3;
nVals = 1;
vals = zeros(nDims, nDims, nVals);
vals(:) = 1 : nDims * nDims * nVals;
shiftAvg = 1;

% Obtain actual value
[~, ~, actVal, ~] = compStats(vals, shiftAvg);

% Define expected value
expVal = [
    0, 0, 0;
    0, 0, 0;
    0, 0, 0;
];

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #28
% Define parameters
nDims = 3;
nVals = 1;
vals = zeros(nDims, nDims, nVals);
vals(:) = 1 : nDims * nDims * nVals;
shiftAvg = 1;

% Obtain actual value
[~, ~, ~, actVal] = compStats(vals, shiftAvg);

% Define expected value
expVal = [
    0, 0, 0;
    0, 0, 0;
    0, 0, 0;
];

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #29
% Define parameters
nDims = 3;
nVals = 2;
vals = zeros(nDims, nDims, nVals);
vals(:) = 1 : nDims * nDims * nVals;
shiftAvg = 1;

% Obtain actual value
[actVal, ~, ~, ~] = compStats(vals, shiftAvg);

% Define expected value
expVal = [
     5.5,  8.5, 11.5;
     6.5,  9.5, 12.5;
     7.5, 10.5, 13.5;
];

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #30
% Define parameters
nDims = 3;
nVals = 2;
vals = zeros(nDims, nDims, nVals);
vals(:) = 1 : nDims * nDims * nVals;
shiftAvg = 1;

% Obtain actual value
[~, actVal, ~, ~] = compStats(vals, shiftAvg);

% Define expected value
expVal = sqrt( 1 / (nVals - 1) ) * [
     sqrt( ( 1.0 -  5.5)^2 + (10.0 -  5.5)^2 ), ...
     sqrt( ( 4.0 -  8.5)^2 + (13.0 -  8.5)^2 ), ...
     sqrt( ( 7.0 - 11.5)^2 + (16.0 - 11.5)^2 );
     sqrt( ( 2.0 -  6.5)^2 + (11.0 -  6.5)^2 ), ...
     sqrt( ( 5.0 -  9.5)^2 + (14.0 -  9.5)^2 ), ...
     sqrt( ( 8.0 - 12.5)^2 + (17.0 - 12.5)^2 );
     sqrt( ( 3.0 -  7.5)^2 + (12.0 -  7.5)^2 ), ...
     sqrt( ( 6.0 - 10.5)^2 + (15.0 - 10.5)^2 ), ...
     sqrt( ( 9.0 - 13.5)^2 + (18.0 - 13.5)^2 );
];

% Test
assert( all( all( all( abs( actVal - expVal ) < 5 * eps ) ) ), 'Unexpected output.' );

%% Test actual output #31
% Define parameters
nDims = 3;
nVals = 2;
vals = zeros(nDims, nDims, nVals);
vals(:) = 1 : nDims * nDims * nVals;
shiftAvg = 1;

% Obtain actual value
[~, ~, actVal, ~] = compStats(vals, shiftAvg);

% Define expected value
expVal = sqrt( 1 / (nVals - 1) ) * [
     sqrt( ( 1.0 -  5.5)^2 + (10.0 -  5.5)^2 ) /  5.5, ...
     sqrt( ( 4.0 -  8.5)^2 + (13.0 -  8.5)^2 ) /  8.5, ...
     sqrt( ( 7.0 - 11.5)^2 + (16.0 - 11.5)^2 ) / 11.5;
     sqrt( ( 2.0 -  6.5)^2 + (11.0 -  6.5)^2 ) /  6.5, ...
     sqrt( ( 5.0 -  9.5)^2 + (14.0 -  9.5)^2 ) /  9.5, ...
     sqrt( ( 8.0 - 12.5)^2 + (17.0 - 12.5)^2 ) / 12.5;
     sqrt( ( 3.0 -  7.5)^2 + (12.0 -  7.5)^2 ) /  7.5, ...
     sqrt( ( 6.0 - 10.5)^2 + (15.0 - 10.5)^2 ) / 10.5, ...
     sqrt( ( 9.0 - 13.5)^2 + (18.0 - 13.5)^2 ) / 13.5;
];

% Test
assert( all( all( all( abs( actVal - expVal ) < 5 * eps ) ) ), 'Unexpected output.' );

%% Test actual output #32
% Define parameters
nDims = 3;
nVals = 2;
vals = zeros(nDims, nDims, nVals);
vals(:) = 1 : nDims * nDims * nVals;
shiftAvg = 1;

% Obtain actual value
[~, ~, ~, actVal] = compStats(vals, shiftAvg);

% Define expected value
expVal = sqrt( 1 / (nVals - 1) ) * [
     sqrt( ( 1.0 -  5.5)^2 + (10.0 -  5.5)^2 ) /  6.5, ...
     sqrt( ( 4.0 -  8.5)^2 + (13.0 -  8.5)^2 ) /  9.5, ...
     sqrt( ( 7.0 - 11.5)^2 + (16.0 - 11.5)^2 ) / 12.5;
     sqrt( ( 2.0 -  6.5)^2 + (11.0 -  6.5)^2 ) /  7.5, ...
     sqrt( ( 5.0 -  9.5)^2 + (14.0 -  9.5)^2 ) / 10.5, ...
     sqrt( ( 8.0 - 12.5)^2 + (17.0 - 12.5)^2 ) / 13.5;
     sqrt( ( 3.0 -  7.5)^2 + (12.0 -  7.5)^2 ) /  8.5, ...
     sqrt( ( 6.0 - 10.5)^2 + (15.0 - 10.5)^2 ) / 11.5, ...
     sqrt( ( 9.0 - 13.5)^2 + (18.0 - 13.5)^2 ) / 14.5;
];

% Test
assert( all( all( all( abs( actVal - expVal ) < 5 * eps ) ) ), 'Unexpected output.' );

%% Test actual output #33
% Define parameters
nDims = 3;
nVals = 3;
vals = zeros(nDims, nDims, nVals);
vals(:) = 1 : nDims * nDims * nVals;
shiftAvg = 1;

% Obtain actual value
[actVal, ~, ~, ~] = compStats(vals, shiftAvg);

% Define expected value
expVal = [
    10, 13, 16;
    11, 14, 17;
    12, 15, 18;
];

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #34
% Define parameters
nDims = 3;
nVals = 3;
vals = zeros(nDims, nDims, nVals);
vals(:) = 1 : nDims * nDims * nVals;
shiftAvg = 1;

% Obtain actual value
[~, actVal, ~, ~] = compStats(vals, shiftAvg);

% Define expected value
expVal = sqrt( 1 / (nVals - 1) ) * [
     sqrt( ( 1 - 10)^2 + (10 - 10)^2 + (19 - 10)^2 ), ...
     sqrt( ( 4 - 13)^2 + (13 - 13)^2 + (22 - 13)^2 ), ...
     sqrt( ( 7 - 16)^2 + (16 - 16)^2 + (25 - 16)^2 );
     sqrt( ( 2 - 11)^2 + (11 - 11)^2 + (20 - 11)^2 ), ...
     sqrt( ( 5 - 14)^2 + (14 - 14)^2 + (23 - 14)^2 ), ...
     sqrt( ( 8 - 17)^2 + (17 - 17)^2 + (26 - 17)^2 );
     sqrt( ( 3 - 12)^2 + (12 - 12)^2 + (21 - 12)^2 ), ...
     sqrt( ( 6 - 15)^2 + (15 - 15)^2 + (24 - 15)^2 ), ...
     sqrt( ( 9 - 18)^2 + (18 - 18)^2 + (27 - 18)^2 );
];

% Test
assert( all( all( all( abs( actVal - expVal ) < 5 * eps ) ) ), 'Unexpected output.' );

%% Test actual output #35
% Define parameters
nDims = 3;
nVals = 3;
vals = zeros(nDims, nDims, nVals);
vals(:) = 1 : nDims * nDims * nVals;
shiftAvg = 1;

% Obtain actual value
[~, ~, actVal, ~] = compStats(vals, shiftAvg);

% Define expected value
expVal = sqrt( 1 / (nVals - 1) ) * [
     sqrt( ( 1 - 10)^2 + (10 - 10)^2 + (19 - 10)^2 ) / 10, ...
     sqrt( ( 4 - 13)^2 + (13 - 13)^2 + (22 - 13)^2 ) / 13, ...
     sqrt( ( 7 - 16)^2 + (16 - 16)^2 + (25 - 16)^2 ) / 16;
     sqrt( ( 2 - 11)^2 + (11 - 11)^2 + (20 - 11)^2 ) / 11, ...
     sqrt( ( 5 - 14)^2 + (14 - 14)^2 + (23 - 14)^2 ) / 14, ...
     sqrt( ( 8 - 17)^2 + (17 - 17)^2 + (26 - 17)^2 ) / 17;
     sqrt( ( 3 - 12)^2 + (12 - 12)^2 + (21 - 12)^2 ) / 12, ...
     sqrt( ( 6 - 15)^2 + (15 - 15)^2 + (24 - 15)^2 ) / 15, ...
     sqrt( ( 9 - 18)^2 + (18 - 18)^2 + (27 - 18)^2 ) / 18;
];

% Test
assert( all( all( all( abs( actVal - expVal ) < 5 * eps ) ) ), 'Unexpected output.' );

%% Test actual output #36
% Define parameters
nDims = 3;
nVals = 3;
vals = zeros(nDims, nDims, nVals);
vals(:) = 1 : nDims * nDims * nVals;
shiftAvg = 1;

% Obtain actual value
[~, ~, ~, actVal] = compStats(vals, shiftAvg);

% Define expected value
expVal = sqrt( 1 / (nVals - 1) ) * [
     sqrt( ( 1 - 10)^2 + (10 - 10)^2 + (19 - 10)^2 ) / 11, ...
     sqrt( ( 4 - 13)^2 + (13 - 13)^2 + (22 - 13)^2 ) / 14, ...
     sqrt( ( 7 - 16)^2 + (16 - 16)^2 + (25 - 16)^2 ) / 17;
     sqrt( ( 2 - 11)^2 + (11 - 11)^2 + (20 - 11)^2 ) / 12, ...
     sqrt( ( 5 - 14)^2 + (14 - 14)^2 + (23 - 14)^2 ) / 15, ...
     sqrt( ( 8 - 17)^2 + (17 - 17)^2 + (26 - 17)^2 ) / 18;
     sqrt( ( 3 - 12)^2 + (12 - 12)^2 + (21 - 12)^2 ) / 13, ...
     sqrt( ( 6 - 15)^2 + (15 - 15)^2 + (24 - 15)^2 ) / 16, ...
     sqrt( ( 9 - 18)^2 + (18 - 18)^2 + (27 - 18)^2 ) / 19;
];

% Test
assert( all( all( all( abs( actVal - expVal ) < 5 * eps ) ) ), 'Unexpected output.' );
