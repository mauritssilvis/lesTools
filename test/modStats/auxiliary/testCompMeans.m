% Test compMeans()

% Define parameters
nDims1 = 1;
nDims2 = 2;
nDims3 = 3;

nVals1 = 1;
nVals2 = 2;
nVals3 = 3;

%% Test output type #1
nDims = nDims1;
nVals = nVals1;
vals = ones(nDims, nDims, nVals);
means = compMeans(vals);
expType = 'double';
assert( isa(means, expType), 'Output not of expected type ''double''.');

%% Test output type #2
nDims = nDims1;
nVals = nVals2;
vals = ones(nDims, nDims, nVals);
means = compMeans(vals);
expType = 'double';
assert( isa(means, expType), 'Output not of expected type ''double''.');

%% Test output type #3
nDims = nDims1;
nVals = nVals3;
vals = ones(nDims, nDims, nVals);
means = compMeans(vals);
expType = 'double';
assert( isa(means, expType), 'Output not of expected type ''double''.');

%% Test output type #4
nDims = nDims2;
nVals = nVals1;
vals = ones(nDims, nDims, nVals);
means = compMeans(vals);
expType = 'double';
assert( isa(means, expType), 'Output not of expected type ''double''.');

%% Test output type #5
nDims = nDims2;
nVals = nVals2;
vals = ones(nDims, nDims, nVals);
means = compMeans(vals);
expType = 'double';
assert( isa(means, expType), 'Output not of expected type ''double''.');

%% Test output type #6
nDims = nDims2;
nVals = nVals3;
vals = ones(nDims, nDims, nVals);
means = compMeans(vals);
expType = 'double';
assert( isa(means, expType), 'Output not of expected type ''double''.');

%% Test output type #7
nDims = nDims3;
nVals = nVals1;
vals = ones(nDims, nDims, nVals);
means = compMeans(vals);
expType = 'double';
assert( isa(means, expType), 'Output not of expected type ''double''.');

%% Test output type #8
nDims = nDims3;
nVals = nVals2;
vals = ones(nDims, nDims, nVals);
means = compMeans(vals);
expType = 'double';
assert( isa(means, expType), 'Output not of expected type ''double''.');

%% Test output type #9
nDims = nDims3;
nVals = nVals3;
vals = ones(nDims, nDims, nVals);
means = compMeans(vals);
expType = 'double';
assert( isa(means, expType), 'Output not of expected type ''double''.');

%% Test output size #1
nDims = nDims1;
nVals = nVals1;
vals = ones(nDims, nDims, nVals);
actSize = size( compMeans(vals) );
expSize = [nDims, nDims];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #2
nDims = nDims1;
nVals = nVals2;
vals = ones(nDims, nDims, nVals);
actSize = size( compMeans(vals) );
expSize = [nDims, nDims];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #3
nDims = nDims1;
nVals = nVals3;
vals = ones(nDims, nDims, nVals);
actSize = size( compMeans(vals) );
expSize = [nDims, nDims];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #4
nDims = nDims2;
nVals = nVals1;
vals = ones(nDims, nDims, nVals);
actSize = size( compMeans(vals) );
expSize = [nDims, nDims];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #5
nDims = nDims2;
nVals = nVals2;
vals = ones(nDims, nDims, nVals);
actSize = size( compMeans(vals) );
expSize = [nDims, nDims];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #6
nDims = nDims2;
nVals = nVals3;
vals = ones(nDims, nDims, nVals);
actSize = size( compMeans(vals) );
expSize = [nDims, nDims];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #7
nDims = nDims3;
nVals = nVals1;
vals = ones(nDims, nDims, nVals);
actSize = size( compMeans(vals) );
expSize = [nDims, nDims];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #8
nDims = nDims3;
nVals = nVals2;
vals = ones(nDims, nDims, nVals);
actSize = size( compMeans(vals) );
expSize = [nDims, nDims];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #9
nDims = nDims3;
nVals = nVals3;
vals = ones(nDims, nDims, nVals);
actSize = size( compMeans(vals) );
expSize = [nDims, nDims];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test actual output #1
nDims = nDims1;
nVals = nVals1;
vals = zeros(nDims, nDims, nVals);
vals(:) = 1 : nDims * nDims * nVals;
actMeans = compMeans(vals);
expMeans = 1;
assert( all( all( all( expMeans == actMeans ) ) ), 'Unexpected output.');

%% Test actual output #2
nDims = nDims1;
nVals = nVals2;
vals = zeros(nDims, nDims, nVals);
vals(:) = 1 : nDims * nDims * nVals;
actMeans = compMeans(vals);
expMeans = 1.5;
assert( all( all( all( expMeans == actMeans ) ) ), 'Unexpected output.');

%% Test actual output #3
nDims = nDims1;
nVals = nVals3;
vals = zeros(nDims, nDims, nVals);
vals(:) = 1 : nDims * nDims * nVals;
actMeans = compMeans(vals);
expMeans = 2;
assert( all( all( all( expMeans == actMeans ) ) ), 'Unexpected output.');

%% Test actual output #4
nDims = nDims2;
nVals = nVals1;
vals = zeros(nDims, nDims, nVals);
vals(:) = 1 : nDims * nDims * nVals;
actMeans = compMeans(vals);
expMeans = [
    1, 3;
    2, 4;
];
assert( all( all( all( expMeans == actMeans ) ) ), 'Unexpected output.');

%% Test actual output #5
nDims = nDims2;
nVals = nVals2;
vals = zeros(nDims, nDims, nVals);
vals(:) = 1 : nDims * nDims * nVals;
actMeans = compMeans(vals);
expMeans = [
    3, 5;
    4, 6;
];
assert( all( all( all( expMeans == actMeans ) ) ), 'Unexpected output.');

%% Test actual output #6
nDims = nDims2;
nVals = nVals3;
vals = zeros(nDims, nDims, nVals);
vals(:) = 1 : nDims * nDims * nVals;
actMeans = compMeans(vals);
expMeans = [
    5, 7;
    6, 8;
];
assert( all( all( all( expMeans == actMeans ) ) ), 'Unexpected output.');

%% Test actual output #7
nDims = nDims3;
nVals = nVals1;
vals = zeros(nDims, nDims, nVals);
vals(:) = 1 : nDims * nDims * nVals;
actMeans = compMeans(vals);
expMeans = [
    1, 4, 7;
    2, 5, 8;
    3, 6, 9;
];
assert( all( all( all( expMeans == actMeans ) ) ), 'Unexpected output.');

%% Test actual output #8
nDims = nDims3;
nVals = nVals2;
vals = zeros(nDims, nDims, nVals);
vals(:) = 1 : nDims * nDims * nVals;
actMeans = compMeans(vals);
expMeans = [
     5.5,  8.5, 11.5;
     6.5,  9.5, 12.5;
     7.5, 10.5, 13.5;
];
assert( all( all( all( expMeans == actMeans ) ) ), 'Unexpected output.');

%% Test actual output #9
nDims = nDims3;
nVals = nVals3;
vals = zeros(nDims, nDims, nVals);
vals(:) = 1 : nDims * nDims * nVals;
actMeans = compMeans(vals);
expMeans = [
    10, 13, 16;
    11, 14, 17;
    12, 15, 18;
];
assert( all( all( all( expMeans == actMeans ) ) ), 'Unexpected output.');
