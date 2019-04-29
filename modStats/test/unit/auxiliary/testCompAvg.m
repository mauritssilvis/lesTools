% Test compAvg()

%% Test output type #1
% Define parameters
nDims = 1;
nVals = 1;
vals = ones(nDims, nDims, nVals);

% Obtain value
val = compAvg(vals);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #2
% Define parameters
nDims = 1;
nVals = 2;
vals = ones(nDims, nDims, nVals);

% Obtain value
val = compAvg(vals);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #3
% Define parameters
nDims = 1;
nVals = 3;
vals = ones(nDims, nDims, nVals);

% Obtain value
val = compAvg(vals);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #4
% Define parameters
nDims = 2;
nVals = 1;
vals = ones(nDims, nDims, nVals);

% Obtain value
val = compAvg(vals);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #5
% Define parameters
nDims = 2;
nVals = 2;
vals = ones(nDims, nDims, nVals);

% Obtain value
val = compAvg(vals);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #6
% Define parameters
nDims = 2;
nVals = 3;
vals = ones(nDims, nDims, nVals);

% Obtain value
val = compAvg(vals);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #7
% Define parameters
nDims = 3;
nVals = 1;
vals = ones(nDims, nDims, nVals);

% Obtain value
val = compAvg(vals);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #8
% Define parameters
nDims = 3;
nVals = 2;
vals = ones(nDims, nDims, nVals);

% Obtain value
val = compAvg(vals);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #9
% Define parameters
nDims = 3;
nVals = 3;
vals = ones(nDims, nDims, nVals);

% Obtain value
val = compAvg(vals);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output size #1
% Define parameters
nDims = 1;
nVals = 1;
vals = ones(nDims, nDims, nVals);

% Obtain value
val = compAvg(vals);

% Obtain actual size
actSize = size( val );

% Define expected size
expSize = [nDims, nDims];

% Test
assert( all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #2
% Define parameters
nDims = 1;
nVals = 2;
vals = ones(nDims, nDims, nVals);

% Obtain value
val = compAvg(vals);

% Obtain actual size
actSize = size( val );

% Define expected size
expSize = [nDims, nDims];

% Test
assert( all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #3
% Define parameters
nDims = 1;
nVals = 3;
vals = ones(nDims, nDims, nVals);

% Obtain value
val = compAvg(vals);

% Obtain actual size
actSize = size( val );

% Define expected size
expSize = [nDims, nDims];

% Test
assert( all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #4
% Define parameters
nDims = 2;
nVals = 1;
vals = ones(nDims, nDims, nVals);

% Obtain value
val = compAvg(vals);

% Obtain actual size
actSize = size( val );

% Define expected size
expSize = [nDims, nDims];

% Test
assert( all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #5
% Define parameters
nDims = 2;
nVals = 2;
vals = ones(nDims, nDims, nVals);

% Obtain value
val = compAvg(vals);

% Obtain actual size
actSize = size( val );

% Define expected size
expSize = [nDims, nDims];

% Test
assert( all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #6
% Define parameters
nDims = 2;
nVals = 3;
vals = ones(nDims, nDims, nVals);

% Obtain value
val = compAvg(vals);

% Obtain actual size
actSize = size( val );

% Define expected size
expSize = [nDims, nDims];

% Test
assert( all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #7
% Define parameters
nDims = 3;
nVals = 1;
vals = ones(nDims, nDims, nVals);

% Obtain value
val = compAvg(vals);

% Obtain actual size
actSize = size( val );

% Define expected size
expSize = [nDims, nDims];

% Test
assert( all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #8
% Define parameters
nDims = 3;
nVals = 2;
vals = ones(nDims, nDims, nVals);

% Obtain value
val = compAvg(vals);

% Obtain actual size
actSize = size( val );

% Define expected size
expSize = [nDims, nDims];

% Test
assert( all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #9
% Define parameters
nDims = 3;
nVals = 3;
vals = ones(nDims, nDims, nVals);

% Obtain value
val = compAvg(vals);

% Obtain actual size
actSize = size( val );

% Define expected size
expSize = [nDims, nDims];

% Test
assert( all(actSize == expSize), 'Output not of expected size.' );

%% Test actual output #1
% Define parameters
nDims = 1;
nVals = 1;
vals = zeros(nDims, nDims, nVals);
vals(:) = 1 : nDims * nDims * nVals;

% Obtain actual value
actVal = compAvg(vals);

% Define expected value
expVal = 1;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #2
% Define parameters
nDims = 1;
nVals = 2;
vals = zeros(nDims, nDims, nVals);
vals(:) = 1 : nDims * nDims * nVals;

% Obtain actual value
actVal = compAvg(vals);

% Define expected value
expVal = 1.5;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #3
% Define parameters
nDims = 1;
nVals = 3;
vals = zeros(nDims, nDims, nVals);
vals(:) = 1 : nDims * nDims * nVals;

% Obtain actual value
actVal = compAvg(vals);

% Define expected value
expVal = 2;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #4
% Define parameters
nDims = 2;
nVals = 1;
vals = zeros(nDims, nDims, nVals);
vals(:) = 1 : nDims * nDims * nVals;

% Obtain actual value
actVal = compAvg(vals);

% Define expected value
expVal = [
    1, 3;
    2, 4;
];

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #5
% Define parameters
nDims = 2;
nVals = 2;
vals = zeros(nDims, nDims, nVals);
vals(:) = 1 : nDims * nDims * nVals;

% Obtain actual value
actVal = compAvg(vals);

% Define expected value
expVal = [
    3, 5;
    4, 6;
];

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #6
% Define parameters
nDims = 2;
nVals = 3;
vals = zeros(nDims, nDims, nVals);
vals(:) = 1 : nDims * nDims * nVals;

% Obtain actual value
actVal = compAvg(vals);

% Define expected value
expVal = [
    5, 7;
    6, 8;
];

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #7
% Define parameters
nDims = 3;
nVals = 1;
vals = zeros(nDims, nDims, nVals);
vals(:) = 1 : nDims * nDims * nVals;

% Obtain actual value
actVal = compAvg(vals);

% Define expected value
expVal = [
    1, 4, 7;
    2, 5, 8;
    3, 6, 9;
];

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #8
% Define parameters
nDims = 3;
nVals = 2;
vals = zeros(nDims, nDims, nVals);
vals(:) = 1 : nDims * nDims * nVals;

% Obtain actual value
actVal = compAvg(vals);

% Define expected value
expVal = [
     5.5,  8.5, 11.5;
     6.5,  9.5, 12.5;
     7.5, 10.5, 13.5;
];

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #9
% Define parameters
nDims = 3;
nVals = 3;
vals = zeros(nDims, nDims, nVals);
vals(:) = 1 : nDims * nDims * nVals;

% Obtain actual value
actVal = compAvg(vals);

% Define expected value
expVal = [
    10, 13, 16;
    11, 14, 17;
    12, 15, 18;
];

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );
