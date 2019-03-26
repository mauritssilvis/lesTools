% Test getQuants()

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
quants = getQuants(grads21, nQuants1);
expType = 'cell';
assert( isa(quants, expType), 'Output not of expected type ''cell''.');

%% Test output type #2
quants = getQuants(grads21, nQuants1);
ixQt = 1;
selQt = quants{ixQt};
expType = 'double';
assert( isa(selQt, expType), 'Output not of expected type ''double''.');

%% Test output type #3
quants = getQuants(grads22, nQuants1);
expType = 'cell';
assert( isa(quants, expType), 'Output not of expected type ''cell''.');

%% Test output type #4
quants = getQuants(grads22, nQuants1);
ixQt = 1;
selQt = quants{ixQt};
expType = 'double';
assert( isa(selQt, expType), 'Output not of expected type ''double''.');

%% Test output type #5
quants = getQuants(grads31, nQuants1);
expType = 'cell';
assert( isa(quants, expType), 'Output not of expected type ''cell''.');

%% Test output type #6
quants = getQuants(grads31, nQuants1);
ixQt = 1;
selQt = quants{ixQt};
expType = 'double';
assert( isa(selQt, expType), 'Output not of expected type ''double''.');

%% Test output type #7
quants = getQuants(grads32, nQuants1);
expType = 'cell';
assert( isa(quants, expType), 'Output not of expected type ''cell''.');

%% Test output type #8
quants = getQuants(grads32, nQuants1);
ixQt = 1;
selQt = quants{ixQt};
expType = 'double';
assert( isa(selQt, expType), 'Output not of expected type ''double''.');

%% Test output type #9
quants = getQuants(grads21, nQuants9);
expType = 'cell';
assert( isa(quants, expType), 'Output not of expected type ''cell''.');

%% Test output type #10
quants = getQuants(grads21, nQuants9);
ixQt = 1;
selQt = quants{ixQt};
expType = 'double';
assert( isa(selQt, expType), 'Output not of expected type ''double''.');

%% Test output type #11
quants = getQuants(grads21, nQuants9);
ixQt = 2;
selQt = quants{ixQt};
expType = 'double';
assert( isa(selQt, expType), 'Output not of expected type ''double''.');

%% Test output type #12
quants = getQuants(grads21, nQuants9);
ixQt = 3;
selQt = quants{ixQt};
expType = 'double';
assert( isa(selQt, expType), 'Output not of expected type ''double''.');

%% Test output type #13
quants = getQuants(grads21, nQuants9);
ixQt = 4;
selQt = quants{ixQt};
expType = 'double';
assert( isa(selQt, expType), 'Output not of expected type ''double''.');

%% Test output type #14
quants = getQuants(grads21, nQuants9);
ixQt = 5;
selQt = quants{ixQt};
expType = 'double';
assert( isa(selQt, expType), 'Output not of expected type ''double''.');

%% Test output type #15
quants = getQuants(grads21, nQuants9);
ixQt = 6;
selQt = quants{ixQt};
expType = 'double';
assert( isa(selQt, expType), 'Output not of expected type ''double''.');

%% Test output type #16
quants = getQuants(grads21, nQuants9);
ixQt = 7;
selQt = quants{ixQt};
expType = 'double';
assert( isa(selQt, expType), 'Output not of expected type ''double''.');

%% Test output type #17
quants = getQuants(grads21, nQuants9);
ixQt = 8;
selQt = quants{ixQt};
expType = 'double';
assert( isa(selQt, expType), 'Output not of expected type ''double''.');

%% Test output type #18
quants = getQuants(grads21, nQuants9);
ixQt = 9;
selQt = quants{ixQt};
expType = 'double';
assert( isa(selQt, expType), 'Output not of expected type ''double''.');

%% Test output type #19
quants = getQuants(grads22, nQuants9);
expType = 'cell';
assert( isa(quants, expType), 'Output not of expected type ''cell''.');

%% Test output type #20
quants = getQuants(grads22, nQuants9);
ixQt = 1;
selQt = quants{ixQt};
expType = 'double';
assert( isa(selQt, expType), 'Output not of expected type ''double''.');

%% Test output type #21
quants = getQuants(grads22, nQuants9);
ixQt = 2;
selQt = quants{ixQt};
expType = 'double';
assert( isa(selQt, expType), 'Output not of expected type ''double''.');

%% Test output type #22
quants = getQuants(grads22, nQuants9);
ixQt = 3;
selQt = quants{ixQt};
expType = 'double';
assert( isa(selQt, expType), 'Output not of expected type ''double''.');

%% Test output type #23
quants = getQuants(grads22, nQuants9);
ixQt = 4;
selQt = quants{ixQt};
expType = 'double';
assert( isa(selQt, expType), 'Output not of expected type ''double''.');

%% Test output type #24
quants = getQuants(grads22, nQuants9);
ixQt = 5;
selQt = quants{ixQt};
expType = 'double';
assert( isa(selQt, expType), 'Output not of expected type ''double''.');

%% Test output type #25
quants = getQuants(grads22, nQuants9);
ixQt = 6;
selQt = quants{ixQt};
expType = 'double';
assert( isa(selQt, expType), 'Output not of expected type ''double''.');

%% Test output type #26
quants = getQuants(grads22, nQuants9);
ixQt = 7;
selQt = quants{ixQt};
expType = 'double';
assert( isa(selQt, expType), 'Output not of expected type ''double''.');

%% Test output type #27
quants = getQuants(grads22, nQuants9);
ixQt = 8;
selQt = quants{ixQt};
expType = 'double';
assert( isa(selQt, expType), 'Output not of expected type ''double''.');

%% Test output type #28
quants = getQuants(grads22, nQuants9);
ixQt = 9;
selQt = quants{ixQt};
expType = 'double';
assert( isa(selQt, expType), 'Output not of expected type ''double''.');

%% Test output type #29
quants = getQuants(grads31, nQuants9);
expType = 'cell';
assert( isa(quants, expType), 'Output not of expected type ''cell''.');

%% Test output type #30
quants = getQuants(grads31, nQuants9);
ixQt = 1;
selQt = quants{ixQt};
expType = 'double';
assert( isa(selQt, expType), 'Output not of expected type ''double''.');

%% Test output type #31
quants = getQuants(grads31, nQuants9);
ixQt = 2;
selQt = quants{ixQt};
expType = 'double';
assert( isa(selQt, expType), 'Output not of expected type ''double''.');

%% Test output type #32
quants = getQuants(grads31, nQuants9);
ixQt = 3;
selQt = quants{ixQt};
expType = 'double';
assert( isa(selQt, expType), 'Output not of expected type ''double''.');

%% Test output type #33
quants = getQuants(grads31, nQuants9);
ixQt = 4;
selQt = quants{ixQt};
expType = 'double';
assert( isa(selQt, expType), 'Output not of expected type ''double''.');

%% Test output type #34
quants = getQuants(grads31, nQuants9);
ixQt = 5;
selQt = quants{ixQt};
expType = 'double';
assert( isa(selQt, expType), 'Output not of expected type ''double''.');

%% Test output type #35
quants = getQuants(grads31, nQuants9);
ixQt = 6;
selQt = quants{ixQt};
expType = 'double';
assert( isa(selQt, expType), 'Output not of expected type ''double''.');

%% Test output type #36
quants = getQuants(grads31, nQuants9);
ixQt = 7;
selQt = quants{ixQt};
expType = 'double';
assert( isa(selQt, expType), 'Output not of expected type ''double''.');

%% Test output type #37
quants = getQuants(grads31, nQuants9);
ixQt = 8;
selQt = quants{ixQt};
expType = 'double';
assert( isa(selQt, expType), 'Output not of expected type ''double''.');

%% Test output type #38
quants = getQuants(grads31, nQuants9);
ixQt = 9;
selQt = quants{ixQt};
expType = 'double';
assert( isa(selQt, expType), 'Output not of expected type ''double''.');

%% Test output type #39
quants = getQuants(grads32, nQuants9);
expType = 'cell';
assert( isa(quants, expType), 'Output not of expected type ''cell''.');

%% Test output type #40
quants = getQuants(grads32, nQuants9);
ixQt = 1;
selQt = quants{ixQt};
expType = 'double';
assert( isa(selQt, expType), 'Output not of expected type ''double''.');

%% Test output type #41
quants = getQuants(grads32, nQuants9);
ixQt = 2;
selQt = quants{ixQt};
expType = 'double';
assert( isa(selQt, expType), 'Output not of expected type ''double''.');

%% Test output type #42
quants = getQuants(grads32, nQuants9);
ixQt = 3;
selQt = quants{ixQt};
expType = 'double';
assert( isa(selQt, expType), 'Output not of expected type ''double''.');

%% Test output type #43
quants = getQuants(grads32, nQuants9);
ixQt = 4;
selQt = quants{ixQt};
expType = 'double';
assert( isa(selQt, expType), 'Output not of expected type ''double''.');

%% Test output type #44
quants = getQuants(grads32, nQuants9);
ixQt = 5;
selQt = quants{ixQt};
expType = 'double';
assert( isa(selQt, expType), 'Output not of expected type ''double''.');

%% Test output type #45
quants = getQuants(grads32, nQuants9);
ixQt = 6;
selQt = quants{ixQt};
expType = 'double';
assert( isa(selQt, expType), 'Output not of expected type ''double''.');

%% Test output type #46
quants = getQuants(grads32, nQuants9);
ixQt = 7;
selQt = quants{ixQt};
expType = 'double';
assert( isa(selQt, expType), 'Output not of expected type ''double''.');

%% Test output type #47
quants = getQuants(grads32, nQuants9);
ixQt = 8;
selQt = quants{ixQt};
expType = 'double';
assert( isa(selQt, expType), 'Output not of expected type ''double''.');

%% Test output type #48
quants = getQuants(grads32, nQuants9);
ixQt = 9;
selQt = quants{ixQt};
expType = 'double';
assert( isa(selQt, expType), 'Output not of expected type ''double''.');

%% Test output size #1
quants = getQuants(grads21, nQuants1);
expSize = [1, nQuants1];
actSize = size(quants);
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #2
quants = getQuants(grads21, nQuants1);
ixQt = 1;
selQt = quants{ixQt};
expSize = [spaceDims2, spaceDims2, nGrads1];
actSize = [size(selQt, 1), size(selQt, 2), size(selQt, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #3
quants = getQuants(grads22, nQuants1);
expSize = [1, nQuants1];
actSize = size(quants);
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #4
quants = getQuants(grads22, nQuants1);
ixQt = 1;
selQt = quants{ixQt};
expSize = [spaceDims2, spaceDims2, nGrads2];
actSize = [size(selQt, 1), size(selQt, 2), size(selQt, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #5
quants = getQuants(grads31, nQuants1);
expSize = [1, nQuants1];
actSize = size(quants);
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #6
quants = getQuants(grads31, nQuants1);
ixQt = 1;
selQt = quants{ixQt};
expSize = [spaceDims3, spaceDims3, nGrads1];
actSize = [size(selQt, 1), size(selQt, 2), size(selQt, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #7
quants = getQuants(grads32, nQuants1);
expSize = [1, nQuants1];
actSize = size(quants);
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #8
quants = getQuants(grads32, nQuants1);
ixQt = 1;
selQt = quants{ixQt};
expSize = [spaceDims3, spaceDims3, nGrads2];
actSize = [size(selQt, 1), size(selQt, 2), size(selQt, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #9
quants = getQuants(grads21, nQuants9);
expSize = [1, nQuants9];
actSize = size(quants);
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #10
quants = getQuants(grads21, nQuants9);
ixQt = 1;
selQt = quants{ixQt};
expSize = [spaceDims2, spaceDims2, nGrads1];
actSize = [size(selQt, 1), size(selQt, 2), size(selQt, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #11
quants = getQuants(grads21, nQuants9);
ixQt = 2;
selQt = quants{ixQt};
expSize = [spaceDims2, spaceDims2, nGrads1];
actSize = [size(selQt, 1), size(selQt, 2), size(selQt, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #12
quants = getQuants(grads21, nQuants9);
ixQt = 3;
selQt = quants{ixQt};
expSize = [spaceDims2, spaceDims2, nGrads1];
actSize = [size(selQt, 1), size(selQt, 2), size(selQt, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #13
quants = getQuants(grads21, nQuants9);
ixQt = 4;
selQt = quants{ixQt};
expSize = [1, 1, nGrads1];
actSize = [size(selQt, 1), size(selQt, 2), size(selQt, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #14
quants = getQuants(grads21, nQuants9);
ixQt = 5;
selQt = quants{ixQt};
expSize = [1, 1, nGrads1];
actSize = [size(selQt, 1), size(selQt, 2), size(selQt, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #15
quants = getQuants(grads21, nQuants9);
ixQt = 6;
selQt = quants{ixQt};
expSize = [1, 1, nGrads1];
actSize = [size(selQt, 1), size(selQt, 2), size(selQt, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #16
quants = getQuants(grads21, nQuants9);
ixQt = 7;
selQt = quants{ixQt};
expSize = [1, 1, nGrads1];
actSize = [size(selQt, 1), size(selQt, 2), size(selQt, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #17
quants = getQuants(grads21, nQuants9);
ixQt = 8;
selQt = quants{ixQt};
expSize = [1, 1, nGrads1];
actSize = [size(selQt, 1), size(selQt, 2), size(selQt, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #18
quants = getQuants(grads21, nQuants9);
ixQt = 9;
selQt = quants{ixQt};
expSize = [1, 1, nGrads1];
actSize = [size(selQt, 1), size(selQt, 2), size(selQt, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #19
quants = getQuants(grads22, nQuants9);
expSize = [1, nQuants9];
actSize = size(quants);
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #20
quants = getQuants(grads22, nQuants9);
ixQt = 1;
selQt = quants{ixQt};
expSize = [spaceDims2, spaceDims2, nGrads2];
actSize = [size(selQt, 1), size(selQt, 2), size(selQt, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #21
quants = getQuants(grads22, nQuants9);
ixQt = 2;
selQt = quants{ixQt};
expSize = [spaceDims2, spaceDims2, nGrads2];
actSize = [size(selQt, 1), size(selQt, 2), size(selQt, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #22
quants = getQuants(grads22, nQuants9);
ixQt = 3;
selQt = quants{ixQt};
expSize = [spaceDims2, spaceDims2, nGrads2];
actSize = [size(selQt, 1), size(selQt, 2), size(selQt, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #23
quants = getQuants(grads22, nQuants9);
ixQt = 4;
selQt = quants{ixQt};
expSize = [1, 1, nGrads2];
actSize = [size(selQt, 1), size(selQt, 2), size(selQt, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #24
quants = getQuants(grads22, nQuants9);
ixQt = 5;
selQt = quants{ixQt};
expSize = [1, 1, nGrads2];
actSize = [size(selQt, 1), size(selQt, 2), size(selQt, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #25
quants = getQuants(grads22, nQuants9);
ixQt = 6;
selQt = quants{ixQt};
expSize = [1, 1, nGrads2];
actSize = [size(selQt, 1), size(selQt, 2), size(selQt, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #26
quants = getQuants(grads22, nQuants9);
ixQt = 7;
selQt = quants{ixQt};
expSize = [1, 1, nGrads2];
actSize = [size(selQt, 1), size(selQt, 2), size(selQt, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #27
quants = getQuants(grads22, nQuants9);
ixQt = 8;
selQt = quants{ixQt};
expSize = [1, 1, nGrads2];
actSize = [size(selQt, 1), size(selQt, 2), size(selQt, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #28
quants = getQuants(grads22, nQuants9);
ixQt = 9;
selQt = quants{ixQt};
expSize = [1, 1, nGrads2];
actSize = [size(selQt, 1), size(selQt, 2), size(selQt, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #29
quants = getQuants(grads31, nQuants9);
expSize = [1, nQuants9];
actSize = size(quants);
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #30
quants = getQuants(grads31, nQuants9);
ixQt = 1;
selQt = quants{ixQt};
expSize = [spaceDims3, spaceDims3, nGrads1];
actSize = [size(selQt, 1), size(selQt, 2), size(selQt, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #31
quants = getQuants(grads31, nQuants9);
ixQt = 2;
selQt = quants{ixQt};
expSize = [spaceDims3, spaceDims3, nGrads1];
actSize = [size(selQt, 1), size(selQt, 2), size(selQt, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #32
quants = getQuants(grads31, nQuants9);
ixQt = 3;
selQt = quants{ixQt};
expSize = [spaceDims3, spaceDims3, nGrads1];
actSize = [size(selQt, 1), size(selQt, 2), size(selQt, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #33
quants = getQuants(grads31, nQuants9);
ixQt = 4;
selQt = quants{ixQt};
expSize = [1, 1, nGrads1];
actSize = [size(selQt, 1), size(selQt, 2), size(selQt, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #34
quants = getQuants(grads31, nQuants9);
ixQt = 5;
selQt = quants{ixQt};
expSize = [1, 1, nGrads1];
actSize = [size(selQt, 1), size(selQt, 2), size(selQt, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #35
quants = getQuants(grads31, nQuants9);
ixQt = 6;
selQt = quants{ixQt};
expSize = [1, 1, nGrads1];
actSize = [size(selQt, 1), size(selQt, 2), size(selQt, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #36
quants = getQuants(grads31, nQuants9);
ixQt = 7;
selQt = quants{ixQt};
expSize = [1, 1, nGrads1];
actSize = [size(selQt, 1), size(selQt, 2), size(selQt, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #37
quants = getQuants(grads31, nQuants9);
ixQt = 8;
selQt = quants{ixQt};
expSize = [1, 1, nGrads1];
actSize = [size(selQt, 1), size(selQt, 2), size(selQt, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #38
quants = getQuants(grads31, nQuants9);
ixQt = 9;
selQt = quants{ixQt};
expSize = [1, 1, nGrads1];
actSize = [size(selQt, 1), size(selQt, 2), size(selQt, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #39
quants = getQuants(grads32, nQuants9);
expSize = [1, nQuants9];
actSize = size(quants);
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #40
quants = getQuants(grads32, nQuants9);
ixQt = 1;
selQt = quants{ixQt};
expSize = [spaceDims3, spaceDims3, nGrads2];
actSize = [size(selQt, 1), size(selQt, 2), size(selQt, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #41
quants = getQuants(grads32, nQuants9);
ixQt = 2;
selQt = quants{ixQt};
expSize = [spaceDims3, spaceDims3, nGrads2];
actSize = [size(selQt, 1), size(selQt, 2), size(selQt, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #42
quants = getQuants(grads32, nQuants9);
ixQt = 3;
selQt = quants{ixQt};
expSize = [spaceDims3, spaceDims3, nGrads2];
actSize = [size(selQt, 1), size(selQt, 2), size(selQt, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #43
quants = getQuants(grads32, nQuants9);
ixQt = 4;
selQt = quants{ixQt};
expSize = [1, 1, nGrads2];
actSize = [size(selQt, 1), size(selQt, 2), size(selQt, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #44
quants = getQuants(grads32, nQuants9);
ixQt = 5;
selQt = quants{ixQt};
expSize = [1, 1, nGrads2];
actSize = [size(selQt, 1), size(selQt, 2), size(selQt, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #45
quants = getQuants(grads32, nQuants9);
ixQt = 6;
selQt = quants{ixQt};
expSize = [1, 1, nGrads2];
actSize = [size(selQt, 1), size(selQt, 2), size(selQt, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #46
quants = getQuants(grads32, nQuants9);
ixQt = 7;
selQt = quants{ixQt};
expSize = [1, 1, nGrads2];
actSize = [size(selQt, 1), size(selQt, 2), size(selQt, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #47
quants = getQuants(grads32, nQuants9);
ixQt = 8;
selQt = quants{ixQt};
expSize = [1, 1, nGrads2];
actSize = [size(selQt, 1), size(selQt, 2), size(selQt, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #48
quants = getQuants(grads32, nQuants9);
ixQt = 9;
selQt = quants{ixQt};
expSize = [1, 1, nGrads2];
actSize = [size(selQt, 1), size(selQt, 2), size(selQt, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test actual output #1
grad = [
    1, 2;
    3, 4;
];
nQuants = 1;
quants = getQuants(grad, nQuants);
ixQt = 1;
selQt = quants{ixQt};
expQt = grad;
assert( all( all(expQt == selQt) ), 'Unexpected output');

%% Test actual output #2
grad = [
    1, 2;
    3, 4;
];
nQuants = 2;
quants = getQuants(grad, nQuants);
ixQt = 2;
selQt = quants{ixQt};
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
quants = getQuants(grad, nQuants);
ixQt = 3;
selQt = quants{ixQt};
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
quants = getQuants(grad, nQuants);
ixQt = 4;
selQt = quants{ixQt};
expQt = 29.5;
assert(expQt == selQt, 'Unexpected output');

%% Test actual output #5
grad = [
    1, 2;
    3, 4;
];
nQuants = 5;
quants = getQuants(grad, nQuants);
ixQt = 5;
selQt = quants{ixQt};
expQt = -0.5;
assert(expQt == selQt, 'Unexpected output');

%% Test actual output #6
grad = [
    1, 2;
    3, 4;
];
nQuants = 6;
quants = getQuants(grad, nQuants);
ixQt = 6;
selQt = quants{ixQt};
expQt = 158.75;
assert(expQt == selQt, 'Unexpected output');

%% Test actual output #7
grad = [
    1, 2;
    3, 4;
];
nQuants = 7;
quants = getQuants(grad, nQuants);
ixQt = 7;
selQt = quants{ixQt};
expQt = -1.25;
assert(expQt == selQt, 'Unexpected output');

%% Test actual output #8
grad = [
    1, 2;
    3, 4;
];
nQuants = 8;
quants = getQuants(grad, nQuants);
ixQt = 8;
selQt = quants{ixQt};
expQt = -7.375;
assert(expQt == selQt, 'Unexpected output');

%% Test actual output #9
grad = [
    1, 2;
    3, 4;
];
nQuants = 9;
quants = getQuants(grad, nQuants);
ixQt = 9;
selQt = quants{ixQt};
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
quants = getQuants(grads, nQuants);
ixQt = 1;
selQt = quants{ixQt};
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
quants = getQuants(grads, nQuants);
ixQt = 2;
selQt = quants{ixQt};
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
quants = getQuants(grads, nQuants);
ixQt = 3;
selQt = quants{ixQt};
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
quants = getQuants(grads, nQuants);
ixQt = 4;
selQt = quants{ixQt};
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
quants = getQuants(grads, nQuants);
ixQt = 5;
selQt = quants{ixQt};
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
quants = getQuants(grads, nQuants);
ixQt = 6;
selQt = quants{ixQt};
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
quants = getQuants(grads, nQuants);
ixQt = 7;
selQt = quants{ixQt};
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
quants = getQuants(grads, nQuants);
ixQt = 8;
selQt = quants{ixQt};
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
quants = getQuants(grads, nQuants);
ixQt = 9;
selQt = quants{ixQt};
expQt(1, 1, 2) = 0;
expQt(1, 1, 1) = 0;
assert( all(expQt == selQt), 'Unexpected output');

%% Test actual output #19
grad = [
    1, 2, 3;
    4, 5, 6;
    7, 8, 9;
];
nQuants = 1;
quants = getQuants(grad, nQuants);
ixQt = 1;
selQt = quants{ixQt};
expQt = grad;
assert( all( all(expQt == selQt) ), 'Unexpected output');

%% Test actual output #20
grad = [
    1, 2, 3;
    4, 5, 6;
    7, 8, 9;
];
nQuants = 2;
quants = getQuants(grad, nQuants);
ixQt = 2;
selQt = quants{ixQt};
expQt = [
    1, 3, 5;
    3, 5, 7;
    5, 7, 9;
];
assert( all( all(expQt == selQt) ), 'Unexpected output');

%% Test actual output #21
grad = [
    1, 2, 3;
    4, 5, 6;
    7, 8, 9;
];
nQuants = 3;
quants = getQuants(grad, nQuants);
ixQt = 3;
selQt = quants{ixQt};
expQt = [
     0, -1, -2;
     1,  0, -1;
     2,  1,  0;
];
assert( all( all(expQt == selQt) ), 'Unexpected output');

%% Test actual output #22
grad = [
    1, 2, 3;
    4, 5, 6;
    7, 8, 9;
];
nQuants = 4;
quants = getQuants(grad, nQuants);
ixQt = 4;
selQt = quants{ixQt};
expQt = 273;
assert(expQt == selQt, 'Unexpected output');

%% Test actual output #23
grad = [
    1, 2, 3;
    4, 5, 6;
    7, 8, 9;
];
nQuants = 5;
quants = getQuants(grad, nQuants);
ixQt = 5;
selQt = quants{ixQt};
expQt = -12;
assert(expQt == selQt, 'Unexpected output');

%% Test actual output #24
grad = [
    1, 2, 3;
    4, 5, 6;
    7, 8, 9;
];
nQuants = 6;
quants = getQuants(grad, nQuants);
ixQt = 6;
selQt = quants{ixQt};
expQt = 4455;
assert(expQt == selQt, 'Unexpected output');

%% Test actual output #25
grad = [
    1, 2, 3;
    4, 5, 6;
    7, 8, 9;
];
nQuants = 7;
quants = getQuants(grad, nQuants);
ixQt = 7;
selQt = quants{ixQt};
expQt = -90;
assert(expQt == selQt, 'Unexpected output');

%% Test actual output #26
grad = [
    1, 2, 3;
    4, 5, 6;
    7, 8, 9;
];
nQuants = 8;
quants = getQuants(grad, nQuants);
ixQt = 8;
selQt = quants{ixQt};
expQt = -1638;
assert(expQt == selQt, 'Unexpected output');

%% Test actual output #27
grad = [
    1, 2, 3;
    4, 5, 6;
    7, 8, 9;
];
nQuants = 9;
quants = getQuants(grad, nQuants);
ixQt = 9;
selQt = quants{ixQt};
expQt = 0;
assert(expQt == selQt, 'Unexpected output');

%% Test actual output #28
grad1 = [
    1, 2, 3;
    4, 5, 6;
    7, 8, 9;
];
grad2 = [
    10, 11, 12;
    13, 14, 15;
    16, 17, 18;
];
grads(1 : 3, 1 : 3, 2) = grad2;
grads(1 : 3, 1 : 3, 1) = grad1;
nQuants = 1;
quants = getQuants(grads, nQuants);
ixQt = 1;
selQt = quants{ixQt};
expQt = grads;
assert( all( all( all(expQt == selQt) ) ), 'Unexpected output');

%% Test actual output #29
grad1 = [
    1, 2, 3;
    4, 5, 6;
    7, 8, 9;
];
grad2 = [
    10, 11, 12;
    13, 14, 15;
    16, 17, 18;
];
grads(1 : 3, 1 : 3, 2) = grad2;
grads(1 : 3, 1 : 3, 1) = grad1;
nQuants = 2;
quants = getQuants(grads, nQuants);
ixQt = 2;
selQt = quants{ixQt};
expQt(1 : 3, 1 : 3, 2) = [
    10, 12, 14;
    12, 14, 16;
    14, 16, 18;
];
expQt(1 : 3, 1 : 3, 1) = [
    1, 3, 5;
    3, 5, 7;
    5, 7, 9;
];
assert( all( all( all(expQt == selQt) ) ), 'Unexpected output');

%% Test actual output #30
grad1 = [
    1, 2, 3;
    4, 5, 6;
    7, 8, 9;
];
grad2 = [
    10, 11, 12;
    13, 14, 15;
    16, 17, 18;
];
grads(1 : 3, 1 : 3, 2) = grad2;
grads(1 : 3, 1 : 3, 1) = grad1;
nQuants = 3;
quants = getQuants(grads, nQuants);
ixQt = 3;
selQt = quants{ixQt};
expQt(1 : 3, 1 : 3, 2) = [
     0, -1, -2;
     1,  0, -1;
     2,  1,  0;
];
expQt(1 : 3, 1 : 3, 1) = [
     0, -1, -2;
     1,  0, -1;
     2,  1,  0;
];
assert( all( all( all(expQt == selQt) ) ), 'Unexpected output');

%% Test actual output #31
grad1 = [
    1, 2, 3;
    4, 5, 6;
    7, 8, 9;
];
grad2 = [
    10, 11, 12;
    13, 14, 15;
    16, 17, 18;
];
grads(1 : 3, 1 : 3, 2) = grad2;
grads(1 : 3, 1 : 3, 1) = grad1;
nQuants = 4;
quants = getQuants(grads, nQuants);
ixQt = 4;
selQt = quants{ixQt};
expQt(1, 1, 2) = 1812;
expQt(1, 1, 1) = 273;
assert( all(expQt == selQt), 'Unexpected output');

%% Test actual output #32
grad1 = [
    1, 2, 3;
    4, 5, 6;
    7, 8, 9;
];
grad2 = [
    10, 11, 12;
    13, 14, 15;
    16, 17, 18;
];
grads(1 : 3, 1 : 3, 2) = grad2;
grads(1 : 3, 1 : 3, 1) = grad1;
nQuants = 5;
quants = getQuants(grads, nQuants);
ixQt = 5;
selQt = quants{ixQt};
expQt(1, 1, 2) = -12;
expQt(1, 1, 1) = -12;
assert( all(expQt == selQt), 'Unexpected output');

%% Test actual output #33
grad1 = [
    1, 2, 3;
    4, 5, 6;
    7, 8, 9;
];
grad2 = [
    10, 11, 12;
    13, 14, 15;
    16, 17, 18;
];
grads(1 : 3, 1 : 3, 2) = grad2;
grads(1 : 3, 1 : 3, 1) = grad1;
nQuants = 6;
quants = getQuants(grads, nQuants);
ixQt = 6;
selQt = quants{ixQt};
expQt(1, 1, 2) = 77112;
expQt(1, 1, 1) = 4455;
assert( all(expQt == selQt), 'Unexpected output');

%% Test actual output #34
grad1 = [
    1, 2, 3;
    4, 5, 6;
    7, 8, 9;
];
grad2 = [
    10, 11, 12;
    13, 14, 15;
    16, 17, 18;
];
grads(1 : 3, 1 : 3, 2) = grad2;
grads(1 : 3, 1 : 3, 1) = grad1;
nQuants = 7;
quants = getQuants(grads, nQuants);
ixQt = 7;
selQt = quants{ixQt};
expQt(1, 1, 2) = -252;
expQt(1, 1, 1) = -90;
assert( all(expQt == selQt), 'Unexpected output');

%% Test actual output #35
grad1 = [
    1, 2, 3;
    4, 5, 6;
    7, 8, 9;
];
grad2 = [
    10, 11, 12;
    13, 14, 15;
    16, 17, 18;
];
grads(1 : 3, 1 : 3, 2) = grad2;
grads(1 : 3, 1 : 3, 1) = grad1;
nQuants = 8;
quants = getQuants(grads, nQuants);
ixQt = 8;
selQt = quants{ixQt};
expQt(1, 1, 2) = -10872;
expQt(1, 1, 1) = -1638;
assert( all(expQt == selQt), 'Unexpected output');

%% Test actual output #36
grad1 = [
    1, 2, 3;
    4, 5, 6;
    7, 8, 9;
];
grad2 = [
    10, 11, 12;
    13, 14, 15;
    16, 17, 18;
];
grads(1 : 3, 1 : 3, 2) = grad2;
grads(1 : 3, 1 : 3, 1) = grad1;
nQuants = 9;
quants = getQuants(grads, nQuants);
ixQt = 9;
selQt = quants{ixQt};
expQt(1, 1, 2) = 0;
expQt(1, 1, 1) = 0;
assert( all(expQt == selQt), 'Unexpected output');

%% Test actual output #37
grad = [
     1,  2,  4;
     7, 11, 16;
    22, 29, 37;
];
nQuants = 1;
quants = getQuants(grad, nQuants);
ixQt = 1;
selQt = quants{ixQt};
expQt = grad;
assert( all( all(expQt == selQt) ), 'Unexpected output');

%% Test actual output #38
grad = [
     1,  2,  4;
     7, 11, 16;
    22, 29, 37;
];
nQuants = 2;
quants = getQuants(grad, nQuants);
ixQt = 2;
selQt = quants{ixQt};
expQt = [
     1.0,  4.5, 13.0;
     4.5, 11.0, 22.5;
    13.0, 22.5, 37.0;
];
assert( all( all(expQt == selQt) ), 'Unexpected output');

%% Test actual output #39
grad = [
     1,  2,  4;
     7, 11, 16;
    22, 29, 37;
];
nQuants = 3;
quants = getQuants(grad, nQuants);
ixQt = 3;
selQt = quants{ixQt};
expQt = [
      0.0, -2.5, -9.0;
      2.5,  0.0, -6.5;
      9.0,  6.5,  0.0;
];
assert( all( all(expQt == selQt) ), 'Unexpected output');

%% Test actual output #40
grad = [
     1,  2,  4;
     7, 11, 16;
    22, 29, 37;
];
nQuants = 4;
quants = getQuants(grad, nQuants);
ixQt = 4;
selQt = quants{ixQt};
expQt = 2882;
assert(expQt == selQt, 'Unexpected output');

%% Test actual output #41
grad = [
     1,  2,  4;
     7, 11, 16;
    22, 29, 37;
];
nQuants = 5;
quants = getQuants(grad, nQuants);
ixQt = 5;
selQt = quants{ixQt};
expQt = -259;
assert(expQt == selQt, 'Unexpected output');

%% Test actual output #42
grad = [
     1,  2,  4;
     7, 11, 16;
    22, 29, 37;
];
nQuants = 6;
quants = getQuants(grad, nQuants);
ixQt = 6;
selQt = quants{ixQt};
expQt = 152777.5;
assert(expQt == selQt, 'Unexpected output');

%% Test actual output #43
grad = [
     1,  2,  4;
     7, 11, 16;
    22, 29, 37;
];
nQuants = 7;
quants = getQuants(grad, nQuants);
ixQt = 7;
selQt = quants{ixQt};
expQt = -6297.5;
assert(expQt == selQt, 'Unexpected output');

%% Test actual output #44
grad = [
     1,  2,  4;
     7, 11, 16;
    22, 29, 37;
];
nQuants = 8;
quants = getQuants(grad, nQuants);
ixQt = 8;
selQt = quants{ixQt};
expQt = -372384.25;
assert(expQt == selQt, 'Unexpected output');

%% Test actual output #45
grad = [
     1,  2,  4;
     7, 11, 16;
    22, 29, 37;
];
nQuants = 9;
quants = getQuants(grad, nQuants);
ixQt = 9;
selQt = quants{ixQt}
expQt = 93494.25;
assert(expQt == selQt, 'Unexpected output');
