% Test gradsQuants()

% Define parameters
nQuants1 = 1;
nQuants9 = 9;

spaceDims2 = 2;
spaceDims3 = 3;

nGrads1 = 1;
nGrads2 = 2;

% Define arrays of velocity gradients
grads21 = ones(spaceDims2, spaceDims2, nGrads1);
grads22= ones(spaceDims2, spaceDims2, nGrads2);
grads31 = ones(spaceDims3, spaceDims3, nGrads1);
grads32 = ones(spaceDims3, spaceDims3, nGrads2);

%% Test output type #1
gradsQts = gradsQuants(grads21, nQuants1);
expType = 'cell';
assert( isa(gradsQts, expType), 'Output not of expected type ''cell''.');

%% Test output type #2
gradsQts = gradsQuants(grads21, nQuants1);
ixQt = 1;
selQt = gradsQts{ixQt};
expType = 'double';
assert( isa(selQt, expType), 'Output not of expected type ''double''.');

%% Test output type #3
gradsQts = gradsQuants(grads22, nQuants1);
expType = 'cell';
assert( isa(gradsQts, expType), 'Output not of expected type ''cell''.');

%% Test output type #4
gradsQts = gradsQuants(grads22, nQuants1);
ixQt = 1;
selQt = gradsQts{ixQt};
expType = 'double';
assert( isa(selQt, expType), 'Output not of expected type ''double''.');

%% Test output type #5
gradsQts = gradsQuants(grads31, nQuants1);
expType = 'cell';
assert( isa(gradsQts, expType), 'Output not of expected type ''cell''.');

%% Test output type #6
gradsQts = gradsQuants(grads31, nQuants1);
ixQt = 1;
selQt = gradsQts{ixQt};
expType = 'double';
assert( isa(selQt, expType), 'Output not of expected type ''double''.');

%% Test output type #7
gradsQts = gradsQuants(grads32, nQuants1);
expType = 'cell';
assert( isa(gradsQts, expType), 'Output not of expected type ''cell''.');

%% Test output type #8
gradsQts = gradsQuants(grads32, nQuants1);
ixQt = 1;
selQt = gradsQts{ixQt};
expType = 'double';
assert( isa(selQt, expType), 'Output not of expected type ''double''.');

%% Test output type #9
gradsQts = gradsQuants(grads21, nQuants9);
expType = 'cell';
assert( isa(gradsQts, expType), 'Output not of expected type ''cell''.');

%% Test output type #10
gradsQts = gradsQuants(grads21, nQuants9);
ixQt = 1;
selQt = gradsQts{ixQt};
expType = 'double';
assert( isa(selQt, expType), 'Output not of expected type ''double''.');

%% Test output type #11
gradsQts = gradsQuants(grads21, nQuants9);
ixQt = 2;
selQt = gradsQts{ixQt};
expType = 'double';
assert( isa(selQt, expType), 'Output not of expected type ''double''.');

%% Test output type #12
gradsQts = gradsQuants(grads21, nQuants9);
ixQt = 3;
selQt = gradsQts{ixQt};
expType = 'double';
assert( isa(selQt, expType), 'Output not of expected type ''double''.');

%% Test output type #13
gradsQts = gradsQuants(grads21, nQuants9);
ixQt = 4;
selQt = gradsQts{ixQt};
expType = 'double';
assert( isa(selQt, expType), 'Output not of expected type ''double''.');

%% Test output type #14
gradsQts = gradsQuants(grads21, nQuants9);
ixQt = 5;
selQt = gradsQts{ixQt};
expType = 'double';
assert( isa(selQt, expType), 'Output not of expected type ''double''.');

%% Test output type #15
gradsQts = gradsQuants(grads21, nQuants9);
ixQt = 6;
selQt = gradsQts{ixQt};
expType = 'double';
assert( isa(selQt, expType), 'Output not of expected type ''double''.');

%% Test output type #16
gradsQts = gradsQuants(grads21, nQuants9);
ixQt = 7;
selQt = gradsQts{ixQt};
expType = 'double';
assert( isa(selQt, expType), 'Output not of expected type ''double''.');

%% Test output type #17
gradsQts = gradsQuants(grads21, nQuants9);
ixQt = 8;
selQt = gradsQts{ixQt};
expType = 'double';
assert( isa(selQt, expType), 'Output not of expected type ''double''.');

%% Test output type #18
gradsQts = gradsQuants(grads21, nQuants9);
ixQt = 9;
selQt = gradsQts{ixQt};
expType = 'double';
assert( isa(selQt, expType), 'Output not of expected type ''double''.');

%% Test output type #19
gradsQts = gradsQuants(grads22, nQuants9);
expType = 'cell';
assert( isa(gradsQts, expType), 'Output not of expected type ''cell''.');

%% Test output type #20
gradsQts = gradsQuants(grads22, nQuants9);
ixQt = 1;
selQt = gradsQts{ixQt};
expType = 'double';
assert( isa(selQt, expType), 'Output not of expected type ''double''.');

%% Test output type #21
gradsQts = gradsQuants(grads22, nQuants9);
ixQt = 2;
selQt = gradsQts{ixQt};
expType = 'double';
assert( isa(selQt, expType), 'Output not of expected type ''double''.');

%% Test output type #22
gradsQts = gradsQuants(grads22, nQuants9);
ixQt = 3;
selQt = gradsQts{ixQt};
expType = 'double';
assert( isa(selQt, expType), 'Output not of expected type ''double''.');

%% Test output type #23
gradsQts = gradsQuants(grads22, nQuants9);
ixQt = 4;
selQt = gradsQts{ixQt};
expType = 'double';
assert( isa(selQt, expType), 'Output not of expected type ''double''.');

%% Test output type #24
gradsQts = gradsQuants(grads22, nQuants9);
ixQt = 5;
selQt = gradsQts{ixQt};
expType = 'double';
assert( isa(selQt, expType), 'Output not of expected type ''double''.');

%% Test output type #25
gradsQts = gradsQuants(grads22, nQuants9);
ixQt = 6;
selQt = gradsQts{ixQt};
expType = 'double';
assert( isa(selQt, expType), 'Output not of expected type ''double''.');

%% Test output type #26
gradsQts = gradsQuants(grads22, nQuants9);
ixQt = 7;
selQt = gradsQts{ixQt};
expType = 'double';
assert( isa(selQt, expType), 'Output not of expected type ''double''.');

%% Test output type #27
gradsQts = gradsQuants(grads22, nQuants9);
ixQt = 8;
selQt = gradsQts{ixQt};
expType = 'double';
assert( isa(selQt, expType), 'Output not of expected type ''double''.');

%% Test output type #28
gradsQts = gradsQuants(grads22, nQuants9);
ixQt = 9;
selQt = gradsQts{ixQt};
expType = 'double';
assert( isa(selQt, expType), 'Output not of expected type ''double''.');

%% Test output type #29
gradsQts = gradsQuants(grads31, nQuants9);
expType = 'cell';
assert( isa(gradsQts, expType), 'Output not of expected type ''cell''.');

%% Test output type #30
gradsQts = gradsQuants(grads31, nQuants9);
ixQt = 1;
selQt = gradsQts{ixQt};
expType = 'double';
assert( isa(selQt, expType), 'Output not of expected type ''double''.');

%% Test output type #31
gradsQts = gradsQuants(grads31, nQuants9);
ixQt = 2;
selQt = gradsQts{ixQt};
expType = 'double';
assert( isa(selQt, expType), 'Output not of expected type ''double''.');

%% Test output type #32
gradsQts = gradsQuants(grads31, nQuants9);
ixQt = 3;
selQt = gradsQts{ixQt};
expType = 'double';
assert( isa(selQt, expType), 'Output not of expected type ''double''.');

%% Test output type #33
gradsQts = gradsQuants(grads31, nQuants9);
ixQt = 4;
selQt = gradsQts{ixQt};
expType = 'double';
assert( isa(selQt, expType), 'Output not of expected type ''double''.');

%% Test output type #34
gradsQts = gradsQuants(grads31, nQuants9);
ixQt = 5;
selQt = gradsQts{ixQt};
expType = 'double';
assert( isa(selQt, expType), 'Output not of expected type ''double''.');

%% Test output type #35
gradsQts = gradsQuants(grads31, nQuants9);
ixQt = 6;
selQt = gradsQts{ixQt};
expType = 'double';
assert( isa(selQt, expType), 'Output not of expected type ''double''.');

%% Test output type #36
gradsQts = gradsQuants(grads31, nQuants9);
ixQt = 7;
selQt = gradsQts{ixQt};
expType = 'double';
assert( isa(selQt, expType), 'Output not of expected type ''double''.');

%% Test output type #37
gradsQts = gradsQuants(grads31, nQuants9);
ixQt = 8;
selQt = gradsQts{ixQt};
expType = 'double';
assert( isa(selQt, expType), 'Output not of expected type ''double''.');

%% Test output type #38
gradsQts = gradsQuants(grads31, nQuants9);
ixQt = 9;
selQt = gradsQts{ixQt};
expType = 'double';
assert( isa(selQt, expType), 'Output not of expected type ''double''.');

%% Test output type #39
gradsQts = gradsQuants(grads32, nQuants9);
expType = 'cell';
assert( isa(gradsQts, expType), 'Output not of expected type ''cell''.');

%% Test output type #40
gradsQts = gradsQuants(grads32, nQuants9);
ixQt = 1;
selQt = gradsQts{ixQt};
expType = 'double';
assert( isa(selQt, expType), 'Output not of expected type ''double''.');

%% Test output type #41
gradsQts = gradsQuants(grads32, nQuants9);
ixQt = 2;
selQt = gradsQts{ixQt};
expType = 'double';
assert( isa(selQt, expType), 'Output not of expected type ''double''.');

%% Test output type #42
gradsQts = gradsQuants(grads32, nQuants9);
ixQt = 3;
selQt = gradsQts{ixQt};
expType = 'double';
assert( isa(selQt, expType), 'Output not of expected type ''double''.');

%% Test output type #43
gradsQts = gradsQuants(grads32, nQuants9);
ixQt = 4;
selQt = gradsQts{ixQt};
expType = 'double';
assert( isa(selQt, expType), 'Output not of expected type ''double''.');

%% Test output type #44
gradsQts = gradsQuants(grads32, nQuants9);
ixQt = 5;
selQt = gradsQts{ixQt};
expType = 'double';
assert( isa(selQt, expType), 'Output not of expected type ''double''.');

%% Test output type #45
gradsQts = gradsQuants(grads32, nQuants9);
ixQt = 6;
selQt = gradsQts{ixQt};
expType = 'double';
assert( isa(selQt, expType), 'Output not of expected type ''double''.');

%% Test output type #46
gradsQts = gradsQuants(grads32, nQuants9);
ixQt = 7;
selQt = gradsQts{ixQt};
expType = 'double';
assert( isa(selQt, expType), 'Output not of expected type ''double''.');

%% Test output type #47
gradsQts = gradsQuants(grads32, nQuants9);
ixQt = 8;
selQt = gradsQts{ixQt};
expType = 'double';
assert( isa(selQt, expType), 'Output not of expected type ''double''.');

%% Test output type #48
gradsQts = gradsQuants(grads32, nQuants9);
ixQt = 9;
selQt = gradsQts{ixQt};
expType = 'double';
assert( isa(selQt, expType), 'Output not of expected type ''double''.');

%% Test output size #1
gradsQts = gradsQuants(grads21, nQuants1);
expSize = [1, nQuants1];
actSize = size(gradsQts);
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #2
gradsQts = gradsQuants(grads21, nQuants1);
ixQt = 1;
selQt = gradsQts{ixQt};
expSize = [spaceDims2, spaceDims2, nGrads1];
actSize = [size(selQt, 1), size(selQt, 2), size(selQt, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #3
gradsQts = gradsQuants(grads22, nQuants1);
expSize = [1, nQuants1];
actSize = size(gradsQts);
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #4
gradsQts = gradsQuants(grads22, nQuants1);
ixQt = 1;
selQt = gradsQts{ixQt};
expSize = [spaceDims2, spaceDims2, nGrads2];
actSize = [size(selQt, 1), size(selQt, 2), size(selQt, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #5
gradsQts = gradsQuants(grads31, nQuants1);
expSize = [1, nQuants1];
actSize = size(gradsQts);
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #6
gradsQts = gradsQuants(grads31, nQuants1);
ixQt = 1;
selQt = gradsQts{ixQt};
expSize = [spaceDims3, spaceDims3, nGrads1];
actSize = [size(selQt, 1), size(selQt, 2), size(selQt, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #7
gradsQts = gradsQuants(grads32, nQuants1);
expSize = [1, nQuants1];
actSize = size(gradsQts);
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #8
gradsQts = gradsQuants(grads32, nQuants1);
ixQt = 1;
selQt = gradsQts{ixQt};
expSize = [spaceDims3, spaceDims3, nGrads2];
actSize = [size(selQt, 1), size(selQt, 2), size(selQt, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #9
gradsQts = gradsQuants(grads21, nQuants9);
expSize = [1, nQuants9];
actSize = size(gradsQts);
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #10
gradsQts = gradsQuants(grads21, nQuants9);
ixQt = 1;
selQt = gradsQts{ixQt};
expSize = [spaceDims2, spaceDims2, nGrads1];
actSize = [size(selQt, 1), size(selQt, 2), size(selQt, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #11
gradsQts = gradsQuants(grads21, nQuants9);
ixQt = 2;
selQt = gradsQts{ixQt};
expSize = [spaceDims2, spaceDims2, nGrads1];
actSize = [size(selQt, 1), size(selQt, 2), size(selQt, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #12
gradsQts = gradsQuants(grads21, nQuants9);
ixQt = 3;
selQt = gradsQts{ixQt};
expSize = [spaceDims2, spaceDims2, nGrads1];
actSize = [size(selQt, 1), size(selQt, 2), size(selQt, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #13
gradsQts = gradsQuants(grads21, nQuants9);
ixQt = 4;
selQt = gradsQts{ixQt};
expSize = [1, 1, nGrads1];
actSize = [size(selQt, 1), size(selQt, 2), size(selQt, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #14
gradsQts = gradsQuants(grads21, nQuants9);
ixQt = 5;
selQt = gradsQts{ixQt};
expSize = [1, 1, nGrads1];
actSize = [size(selQt, 1), size(selQt, 2), size(selQt, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #15
gradsQts = gradsQuants(grads21, nQuants9);
ixQt = 6;
selQt = gradsQts{ixQt};
expSize = [1, 1, nGrads1];
actSize = [size(selQt, 1), size(selQt, 2), size(selQt, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #16
gradsQts = gradsQuants(grads21, nQuants9);
ixQt = 7;
selQt = gradsQts{ixQt};
expSize = [1, 1, nGrads1];
actSize = [size(selQt, 1), size(selQt, 2), size(selQt, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #17
gradsQts = gradsQuants(grads21, nQuants9);
ixQt = 8;
selQt = gradsQts{ixQt};
expSize = [1, 1, nGrads1];
actSize = [size(selQt, 1), size(selQt, 2), size(selQt, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #18
gradsQts = gradsQuants(grads21, nQuants9);
ixQt = 9;
selQt = gradsQts{ixQt};
expSize = [1, 1, nGrads1];
actSize = [size(selQt, 1), size(selQt, 2), size(selQt, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #19
gradsQts = gradsQuants(grads22, nQuants9);
expSize = [1, nQuants9];
actSize = size(gradsQts);
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #20
gradsQts = gradsQuants(grads22, nQuants9);
ixQt = 1;
selQt = gradsQts{ixQt};
expSize = [spaceDims2, spaceDims2, nGrads2];
actSize = [size(selQt, 1), size(selQt, 2), size(selQt, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #21
gradsQts = gradsQuants(grads22, nQuants9);
ixQt = 2;
selQt = gradsQts{ixQt};
expSize = [spaceDims2, spaceDims2, nGrads2];
actSize = [size(selQt, 1), size(selQt, 2), size(selQt, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #22
gradsQts = gradsQuants(grads22, nQuants9);
ixQt = 3;
selQt = gradsQts{ixQt};
expSize = [spaceDims2, spaceDims2, nGrads2];
actSize = [size(selQt, 1), size(selQt, 2), size(selQt, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #23
gradsQts = gradsQuants(grads22, nQuants9);
ixQt = 4;
selQt = gradsQts{ixQt};
expSize = [1, 1, nGrads2];
actSize = [size(selQt, 1), size(selQt, 2), size(selQt, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #24
gradsQts = gradsQuants(grads22, nQuants9);
ixQt = 5;
selQt = gradsQts{ixQt};
expSize = [1, 1, nGrads2];
actSize = [size(selQt, 1), size(selQt, 2), size(selQt, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #25
gradsQts = gradsQuants(grads22, nQuants9);
ixQt = 6;
selQt = gradsQts{ixQt};
expSize = [1, 1, nGrads2];
actSize = [size(selQt, 1), size(selQt, 2), size(selQt, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #26
gradsQts = gradsQuants(grads22, nQuants9);
ixQt = 7;
selQt = gradsQts{ixQt};
expSize = [1, 1, nGrads2];
actSize = [size(selQt, 1), size(selQt, 2), size(selQt, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #27
gradsQts = gradsQuants(grads22, nQuants9);
ixQt = 8;
selQt = gradsQts{ixQt};
expSize = [1, 1, nGrads2];
actSize = [size(selQt, 1), size(selQt, 2), size(selQt, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #28
gradsQts = gradsQuants(grads22, nQuants9);
ixQt = 9;
selQt = gradsQts{ixQt};
expSize = [1, 1, nGrads2];
actSize = [size(selQt, 1), size(selQt, 2), size(selQt, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #29
gradsQts = gradsQuants(grads31, nQuants9);
expSize = [1, nQuants9];
actSize = size(gradsQts);
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #30
gradsQts = gradsQuants(grads31, nQuants9);
ixQt = 1;
selQt = gradsQts{ixQt};
expSize = [spaceDims3, spaceDims3, nGrads1];
actSize = [size(selQt, 1), size(selQt, 2), size(selQt, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #31
gradsQts = gradsQuants(grads31, nQuants9);
ixQt = 2;
selQt = gradsQts{ixQt};
expSize = [spaceDims3, spaceDims3, nGrads1];
actSize = [size(selQt, 1), size(selQt, 2), size(selQt, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #32
gradsQts = gradsQuants(grads31, nQuants9);
ixQt = 3;
selQt = gradsQts{ixQt};
expSize = [spaceDims3, spaceDims3, nGrads1];
actSize = [size(selQt, 1), size(selQt, 2), size(selQt, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #33
gradsQts = gradsQuants(grads31, nQuants9);
ixQt = 4;
selQt = gradsQts{ixQt};
expSize = [1, 1, nGrads1];
actSize = [size(selQt, 1), size(selQt, 2), size(selQt, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #34
gradsQts = gradsQuants(grads31, nQuants9);
ixQt = 5;
selQt = gradsQts{ixQt};
expSize = [1, 1, nGrads1];
actSize = [size(selQt, 1), size(selQt, 2), size(selQt, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #35
gradsQts = gradsQuants(grads31, nQuants9);
ixQt = 6;
selQt = gradsQts{ixQt};
expSize = [1, 1, nGrads1];
actSize = [size(selQt, 1), size(selQt, 2), size(selQt, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #36
gradsQts = gradsQuants(grads31, nQuants9);
ixQt = 7;
selQt = gradsQts{ixQt};
expSize = [1, 1, nGrads1];
actSize = [size(selQt, 1), size(selQt, 2), size(selQt, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #37
gradsQts = gradsQuants(grads31, nQuants9);
ixQt = 8;
selQt = gradsQts{ixQt};
expSize = [1, 1, nGrads1];
actSize = [size(selQt, 1), size(selQt, 2), size(selQt, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #38
gradsQts = gradsQuants(grads31, nQuants9);
ixQt = 9;
selQt = gradsQts{ixQt};
expSize = [1, 1, nGrads1];
actSize = [size(selQt, 1), size(selQt, 2), size(selQt, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #39
gradsQts = gradsQuants(grads32, nQuants9);
expSize = [1, nQuants9];
actSize = size(gradsQts);
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #40
gradsQts = gradsQuants(grads32, nQuants9);
ixQt = 1;
selQt = gradsQts{ixQt};
expSize = [spaceDims3, spaceDims3, nGrads2];
actSize = [size(selQt, 1), size(selQt, 2), size(selQt, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #41
gradsQts = gradsQuants(grads32, nQuants9);
ixQt = 2;
selQt = gradsQts{ixQt};
expSize = [spaceDims3, spaceDims3, nGrads2];
actSize = [size(selQt, 1), size(selQt, 2), size(selQt, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #42
gradsQts = gradsQuants(grads32, nQuants9);
ixQt = 3;
selQt = gradsQts{ixQt};
expSize = [spaceDims3, spaceDims3, nGrads2];
actSize = [size(selQt, 1), size(selQt, 2), size(selQt, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #43
gradsQts = gradsQuants(grads32, nQuants9);
ixQt = 4;
selQt = gradsQts{ixQt};
expSize = [1, 1, nGrads2];
actSize = [size(selQt, 1), size(selQt, 2), size(selQt, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #44
gradsQts = gradsQuants(grads32, nQuants9);
ixQt = 5;
selQt = gradsQts{ixQt};
expSize = [1, 1, nGrads2];
actSize = [size(selQt, 1), size(selQt, 2), size(selQt, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #45
gradsQts = gradsQuants(grads32, nQuants9);
ixQt = 6;
selQt = gradsQts{ixQt};
expSize = [1, 1, nGrads2];
actSize = [size(selQt, 1), size(selQt, 2), size(selQt, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #46
gradsQts = gradsQuants(grads32, nQuants9);
ixQt = 7;
selQt = gradsQts{ixQt};
expSize = [1, 1, nGrads2];
actSize = [size(selQt, 1), size(selQt, 2), size(selQt, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #47
gradsQts = gradsQuants(grads32, nQuants9);
ixQt = 8;
selQt = gradsQts{ixQt};
expSize = [1, 1, nGrads2];
actSize = [size(selQt, 1), size(selQt, 2), size(selQt, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #48
gradsQts = gradsQuants(grads32, nQuants9);
ixQt = 9;
selQt = gradsQts{ixQt};
expSize = [1, 1, nGrads2];
actSize = [size(selQt, 1), size(selQt, 2), size(selQt, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test actual output #1
grad = [
    1, 2;
    3, 4;
];
nQuants = 1;
gradsQts = gradsQuants(grad, nQuants);
ixQt = 1;
selQt = gradsQts{ixQt};
expQt = grad;
assert( all( all(expQt == selQt) ), 'Unexpected output');

%% Test actual output #2
grad = [
    1, 2;
    3, 4;
];
nQuants = 2;
gradsQts = gradsQuants(grad, nQuants);
ixQt = 2;
selQt = gradsQts{ixQt};
expQt = [
    1.0, 2.5;
    2.5, 4.0;
];
assert( all( all(expQt == selQt) ), 'Unexpected output');

%% Test actual output #3
grad = [
    1, 2;
    3, 4;
];
nQuants = 3;
gradsQts = gradsQuants(grad, nQuants);
ixQt = 3;
selQt = gradsQts{ixQt};
expQt = [
     0.0, -0.5;
     0.5,  0.0;
];
assert( all( all(expQt == selQt) ), 'Unexpected output');

%% Test actual output #4
grad = [
    1, 2;
    3, 4;
];
nQuants = 4;
gradsQts = gradsQuants(grad, nQuants);
ixQt = 4;
selQt = gradsQts{ixQt};
expQt = 29.5;
assert(expQt == selQt, 'Unexpected output');

%% Test actual output #5
grad = [
    1, 2;
    3, 4;
];
nQuants = 5;
gradsQts = gradsQuants(grad, nQuants);
ixQt = 5;
selQt = gradsQts{ixQt};
expQt = -0.5;
assert(expQt == selQt, 'Unexpected output');

%% Test actual output #6
grad = [
    1, 2;
    3, 4;
];
nQuants = 6;
gradsQts = gradsQuants(grad, nQuants);
ixQt = 6;
selQt = gradsQts{ixQt};
expQt = 158.75;
assert(expQt == selQt, 'Unexpected output');

%% Test actual output #7
grad = [
    1, 2;
    3, 4;
];
nQuants = 7;
gradsQts = gradsQuants(grad, nQuants);
ixQt = 7;
selQt = gradsQts{ixQt};
expQt = -1.25;
assert(expQt == selQt, 'Unexpected output');

%% Test actual output #8
grad = [
    1, 2;
    3, 4;
];
nQuants = 8;
gradsQts = gradsQuants(grad, nQuants);
ixQt = 8;
selQt = gradsQts{ixQt};
expQt = -7.375;
assert(expQt == selQt, 'Unexpected output');

%% Test actual output #9
grad = [
    1, 2;
    3, 4;
];
nQuants = 9;
gradsQts = gradsQuants(grad, nQuants);
ixQt = 9;
selQt = gradsQts{ixQt};
expQt = 0;
assert(expQt == selQt, 'Unexpected output');

%% Test actual output #10
grad1 = [
    1, 2;
    3, 4;
];
grad2 = [
    5, 6;
    7, 8;
];
grads(1 : 2, 1 : 2, 2) = grad2;
grads(1 : 2, 1 : 2, 1) = grad1;
nQuants = 1;
gradsQts = gradsQuants(grads, nQuants);
ixQt = 1;
selQt = gradsQts{ixQt};
expQt = grads;
assert( all( all( all(expQt == selQt) ) ), 'Unexpected output');

%% Test actual output #11
grad1 = [
    1, 2;
    3, 4;
];
grad2 = [
    5, 6;
    7, 8;
];
grads(1 : 2, 1 : 2, 2) = grad2;
grads(1 : 2, 1 : 2, 1) = grad1;
nQuants = 2;
gradsQts = gradsQuants(grads, nQuants);
ixQt = 2;
selQt = gradsQts{ixQt};
expQt(1 : 2, 1 : 2, 2) = [
    5.0, 6.5;
    6.5, 8.0;
];
expQt(1 : 2, 1 : 2, 1) = [
    1.0, 2.5;
    2.5, 4.0;
];
assert( all( all( all(expQt == selQt) ) ), 'Unexpected output');

%% Test actual output #12
grad1 = [
    1, 2;
    3, 4;
];
grad2 = [
    5, 6;
    7, 8;
];
grads(1 : 2, 1 : 2, 2) = grad2;
grads(1 : 2, 1 : 2, 1) = grad1;
nQuants = 3;
gradsQts = gradsQuants(grads, nQuants);
ixQt = 3;
selQt = gradsQts{ixQt};
expQt(1 : 2, 1 : 2, 2) = [
     0.0, -0.5;
     0.5,  0.0;
];
expQt(1 : 2, 1 : 2, 1) = [
     0.0, -0.5;
     0.5,  0.0;
];
assert( all( all( all(expQt == selQt) ) ), 'Unexpected output');

%% Test actual output #13
grad1 = [
    1, 2;
    3, 4;
];
grad2 = [
    5, 6;
    7, 8;
];
grads(1 : 2, 1 : 2, 2) = grad2;
grads(1 : 2, 1 : 2, 1) = grad1;
nQuants = 4;
gradsQts = gradsQuants(grads, nQuants);
ixQt = 4;
selQt = gradsQts{ixQt};
expQt(1, 1, 2) = 173.5;
expQt(1, 1, 1) = 29.5;
assert( all(expQt == selQt), 'Unexpected output');

%% Test actual output #14
grad1 = [
    1, 2;
    3, 4;
];
grad2 = [
    5, 6;
    7, 8;
];
grads(1 : 2, 1 : 2, 2) = grad2;
grads(1 : 2, 1 : 2, 1) = grad1;
nQuants = 5;
gradsQts = gradsQuants(grads, nQuants);
ixQt = 5;
selQt = gradsQts{ixQt};
expQt(1, 1, 2) = -0.5;
expQt(1, 1, 1) = -0.5;
assert( all(expQt == selQt), 'Unexpected output');

%% Test actual output #15
grad1 = [
    1, 2;
    3, 4;
];
grad2 = [
    5, 6;
    7, 8;
];
grads(1 : 2, 1 : 2, 2) = grad2;
grads(1 : 2, 1 : 2, 1) = grad1;
nQuants = 6;
gradsQts = gradsQuants(grads, nQuants);
ixQt = 6;
selQt = gradsQts{ixQt};
expQt(1, 1, 2) = 2284.75;
expQt(1, 1, 1) = 158.75;
assert( all(expQt == selQt), 'Unexpected output');

%% Test actual output #16
grad1 = [
    1, 2;
    3, 4;
];
grad2 = [
    5, 6;
    7, 8;
];
grads(1 : 2, 1 : 2, 2) = grad2;
grads(1 : 2, 1 : 2, 1) = grad1;
nQuants = 7;
gradsQts = gradsQuants(grads, nQuants);
ixQt = 7;
selQt = gradsQts{ixQt};
expQt(1, 1, 2) = -3.25;
expQt(1, 1, 1) = -1.25;
assert( all(expQt == selQt), 'Unexpected output');

%% Test actual output #17
grad1 = [
    1, 2;
    3, 4;
];
grad2 = [
    5, 6;
    7, 8;
];
grads(1 : 2, 1 : 2, 2) = grad2;
grads(1 : 2, 1 : 2, 1) = grad1;
nQuants = 8;
gradsQts = gradsQuants(grads, nQuants);
ixQt = 8;
selQt = gradsQts{ixQt};
expQt(1, 1, 2) = -43.375;
expQt(1, 1, 1) = -7.375;
assert( all(expQt == selQt), 'Unexpected output');

%% Test actual output #18
grad1 = [
    1, 2;
    3, 4;
];
grad2 = [
    5, 6;
    7, 8;
];
grads(1 : 2, 1 : 2, 2) = grad2;
grads(1 : 2, 1 : 2, 1) = grad1;
nQuants = 9;
gradsQts = gradsQuants(grads, nQuants);
ixQt = 9;
selQt = gradsQts{ixQt};
expQt(1, 1, 2) = 0;
expQt(1, 1, 1) = 0;
assert( all(expQt == selQt), 'Unexpected output');
