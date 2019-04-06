% Test getGrads()

%% Test output type #1
% Define parameters
gradsFun = 'unifMats';
sampleNr = [];
nGrads = 1;
spaceDims = 2;
flowDims = 1 : 2;
makeIncompr = false;
checkIncompr = false;

% Obtain value
val = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #2
% Define parameters
gradsFun = 'unifMats';
sampleNr = [];
nGrads = 1;
spaceDims = 2;
flowDims = 1 : 2;
makeIncompr = true;
checkIncompr = false;

% Obtain value
val = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #3
% Define parameters
gradsFun = 'unifMats';
sampleNr = [];
nGrads = 1;
spaceDims = 3;
flowDims = [1, 2];
makeIncompr = false;
checkIncompr = false;

% Obtain value
val = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #4
% Define parameters
gradsFun = 'unifMats';
sampleNr = [];
nGrads = 1;
spaceDims = 3;
flowDims = [1, 2];
makeIncompr = true;
checkIncompr = false;

% Obtain value
val = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #5
% Define parameters
gradsFun = 'unifMats';
sampleNr = [];
nGrads = 1;
spaceDims = 3;
flowDims = [1, 3];
makeIncompr = false;
checkIncompr = false;

% Obtain value
val = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #6
% Define parameters
gradsFun = 'unifMats';
sampleNr = [];
nGrads = 1;
spaceDims = 3;
flowDims = [1, 3];
makeIncompr = true;
checkIncompr = false;

% Obtain value
val = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #7
% Define parameters
gradsFun = 'unifMats';
sampleNr = [];
nGrads = 1;
spaceDims = 3;
flowDims = [2, 3];
makeIncompr = false;
checkIncompr = false;

% Obtain value
val = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #8
% Define parameters
gradsFun = 'unifMats';
sampleNr = [];
nGrads = 1;
spaceDims = 3;
flowDims = [2, 3];
makeIncompr = true;
checkIncompr = false;

% Obtain value
val = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #9
% Define parameters
gradsFun = 'unifMats';
sampleNr = [];
nGrads = 1;
spaceDims = 3;
flowDims = 1 : 3;
makeIncompr = false;
checkIncompr = false;

% Obtain value
val = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #10
% Define parameters
gradsFun = 'unifMats';
sampleNr = [];
nGrads = 1;
spaceDims = 3;
flowDims = 1 : 3;
makeIncompr = true;
checkIncompr = false;

% Obtain value
val = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #11
% Define parameters
gradsFun = 'unifMats';
sampleNr = [];
nGrads = 2;
spaceDims = 2;
flowDims = 1 : 2;
makeIncompr = false;
checkIncompr = false;

% Obtain value
val = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #12
% Define parameters
gradsFun = 'unifMats';
sampleNr = [];
nGrads = 2;
spaceDims = 2;
flowDims = 1 : 2;
makeIncompr = true;
checkIncompr = false;

% Obtain value
val = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #13
% Define parameters
gradsFun = 'unifMats';
sampleNr = [];
nGrads = 2;
spaceDims = 3;
flowDims = [1, 2];
makeIncompr = false;
checkIncompr = false;

% Obtain value
val = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #14
% Define parameters
gradsFun = 'unifMats';
sampleNr = [];
nGrads = 2;
spaceDims = 3;
flowDims = [1, 2];
makeIncompr = true;
checkIncompr = false;

% Obtain value
val = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #15
% Define parameters
gradsFun = 'unifMats';
sampleNr = [];
nGrads = 2;
spaceDims = 3;
flowDims = [1, 3];
makeIncompr = false;
checkIncompr = false;

% Obtain value
val = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #16
% Define parameters
gradsFun = 'unifMats';
sampleNr = [];
nGrads = 2;
spaceDims = 3;
flowDims = [1, 3];
makeIncompr = true;
checkIncompr = false;

% Obtain value
val = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #17
% Define parameters
gradsFun = 'unifMats';
sampleNr = [];
nGrads = 2;
spaceDims = 3;
flowDims = [2, 3];
makeIncompr = false;
checkIncompr = false;

% Obtain value
val = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #18
% Define parameters
gradsFun = 'unifMats';
sampleNr = [];
nGrads = 2;
spaceDims = 3;
flowDims = [2, 3];
makeIncompr = true;
checkIncompr = false;

% Obtain value
val = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #19
% Define parameters
gradsFun = 'unifMats';
sampleNr = [];
nGrads = 2;
spaceDims = 3;
flowDims = 1 : 3;
makeIncompr = false;
checkIncompr = false;

% Obtain value
val = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #20
% Define parameters
gradsFun = 'unifMats';
sampleNr = [];
nGrads = 2;
spaceDims = 3;
flowDims = 1 : 3;
makeIncompr = true;
checkIncompr = false;

% Obtain value
val = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #21
% Define parameters
gradsFun = 'normMats';
sampleNr = [];
nGrads = 1;
spaceDims = 2;
flowDims = 1 : 2;
makeIncompr = false;
checkIncompr = false;

% Obtain value
val = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #22
% Define parameters
gradsFun = 'normMats';
sampleNr = [];
nGrads = 1;
spaceDims = 2;
flowDims = 1 : 2;
makeIncompr = true;
checkIncompr = false;

% Obtain value
val = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #23
% Define parameters
gradsFun = 'normMats';
sampleNr = [];
nGrads = 1;
spaceDims = 3;
flowDims = [1, 2];
makeIncompr = false;
checkIncompr = false;

% Obtain value
val = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #24
% Define parameters
gradsFun = 'normMats';
sampleNr = [];
nGrads = 1;
spaceDims = 3;
flowDims = [1, 2];
makeIncompr = true;
checkIncompr = false;

% Obtain value
val = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #25
% Define parameters
gradsFun = 'normMats';
sampleNr = [];
nGrads = 1;
spaceDims = 3;
flowDims = [1, 3];
makeIncompr = false;
checkIncompr = false;

% Obtain value
val = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #26
% Define parameters
gradsFun = 'normMats';
sampleNr = [];
nGrads = 1;
spaceDims = 3;
flowDims = [1, 3];
makeIncompr = true;
checkIncompr = false;

% Obtain value
val = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #27
% Define parameters
gradsFun = 'normMats';
sampleNr = [];
nGrads = 1;
spaceDims = 3;
flowDims = [2, 3];
makeIncompr = false;
checkIncompr = false;

% Obtain value
val = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #28
% Define parameters
gradsFun = 'normMats';
sampleNr = [];
nGrads = 1;
spaceDims = 3;
flowDims = [2, 3];
makeIncompr = true;
checkIncompr = false;

% Obtain value
val = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #29
% Define parameters
gradsFun = 'normMats';
sampleNr = [];
nGrads = 1;
spaceDims = 3;
flowDims = 1 : 3;
makeIncompr = false;
checkIncompr = false;

% Obtain value
val = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #30
% Define parameters
gradsFun = 'normMats';
sampleNr = [];
nGrads = 1;
spaceDims = 3;
flowDims = 1 : 3;
makeIncompr = true;
checkIncompr = false;

% Obtain value
val = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #31
% Define parameters
gradsFun = 'normMats';
sampleNr = [];
nGrads = 2;
spaceDims = 2;
flowDims = 1 : 2;
makeIncompr = false;
checkIncompr = false;

% Obtain value
val = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #32
% Define parameters
gradsFun = 'normMats';
sampleNr = [];
nGrads = 2;
spaceDims = 2;
flowDims = 1 : 2;
makeIncompr = true;
checkIncompr = false;

% Obtain value
val = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #33
% Define parameters
gradsFun = 'normMats';
sampleNr = [];
nGrads = 2;
spaceDims = 3;
flowDims = [1, 2];
makeIncompr = false;
checkIncompr = false;

% Obtain value
val = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #34
% Define parameters
gradsFun = 'normMats';
sampleNr = [];
nGrads = 2;
spaceDims = 3;
flowDims = [1, 2];
makeIncompr = true;
checkIncompr = false;

% Obtain value
val = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #35
% Define parameters
gradsFun = 'normMats';
sampleNr = [];
nGrads = 2;
spaceDims = 3;
flowDims = [1, 3];
makeIncompr = false;
checkIncompr = false;

% Obtain value
val = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #36
% Define parameters
gradsFun = 'normMats';
sampleNr = [];
nGrads = 2;
spaceDims = 3;
flowDims = [1, 3];
makeIncompr = true;
checkIncompr = false;

% Obtain value
val = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #37
% Define parameters
gradsFun = 'normMats';
sampleNr = [];
nGrads = 2;
spaceDims = 3;
flowDims = [2, 3];
makeIncompr = false;
checkIncompr = false;

% Obtain value
val = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #38
% Define parameters
gradsFun = 'normMats';
sampleNr = [];
nGrads = 2;
spaceDims = 3;
flowDims = [2, 3];
makeIncompr = true;
checkIncompr = false;

% Obtain value
val = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #39
% Define parameters
gradsFun = 'normMats';
sampleNr = [];
nGrads = 2;
spaceDims = 3;
flowDims = 1 : 3;
makeIncompr = false;
checkIncompr = false;

% Obtain value
val = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #40
% Define parameters
gradsFun = 'normMats';
sampleNr = [];
nGrads = 2;
spaceDims = 3;
flowDims = 1 : 3;
makeIncompr = true;
checkIncompr = false;

% Obtain value
val = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output size #1
% Define parameters
gradsFun = 'unifMats';
sampleNr = [];
nGrads = 1;
spaceDims = 2;
flowDims = 1 : 2;
makeIncompr = false;
checkIncompr = false;

% Obtain value
val = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [spaceDims, spaceDims, nGrads];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #2
% Define parameters
gradsFun = 'unifMats';
sampleNr = [];
nGrads = 1;
spaceDims = 2;
flowDims = 1 : 2;
makeIncompr = true;
checkIncompr = false;

% Obtain value
val = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [spaceDims, spaceDims, nGrads];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #3
% Define parameters
gradsFun = 'unifMats';
sampleNr = [];
nGrads = 1;
spaceDims = 3;
flowDims = [1, 2];
makeIncompr = false;
checkIncompr = false;

% Obtain value
val = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [spaceDims, spaceDims, nGrads];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #4
% Define parameters
gradsFun = 'unifMats';
sampleNr = [];
nGrads = 1;
spaceDims = 3;
flowDims = [1, 2];
makeIncompr = true;
checkIncompr = false;

% Obtain value
val = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [spaceDims, spaceDims, nGrads];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #3
% Define parameters
gradsFun = 'unifMats';
sampleNr = [];
nGrads = 1;
spaceDims = 3;
flowDims = [1, 3];
makeIncompr = false;
checkIncompr = false;

% Obtain value
val = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [spaceDims, spaceDims, nGrads];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #4
% Define parameters
gradsFun = 'unifMats';
sampleNr = [];
nGrads = 1;
spaceDims = 3;
flowDims = [1, 3];
makeIncompr = true;
checkIncompr = false;

% Obtain value
val = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [spaceDims, spaceDims, nGrads];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #3
% Define parameters
gradsFun = 'unifMats';
sampleNr = [];
nGrads = 1;
spaceDims = 3;
flowDims = [2, 3];
makeIncompr = false;
checkIncompr = false;

% Obtain value
val = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [spaceDims, spaceDims, nGrads];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #4
% Define parameters
gradsFun = 'unifMats';
sampleNr = [];
nGrads = 1;
spaceDims = 3;
flowDims = [2, 3];
makeIncompr = true;
checkIncompr = false;

% Obtain value
val = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [spaceDims, spaceDims, nGrads];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #5
% Define parameters
gradsFun = 'unifMats';
sampleNr = [];
nGrads = 1;
spaceDims = 3;
flowDims = 1 : 3;
makeIncompr = false;
checkIncompr = false;

% Obtain value
val = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [spaceDims, spaceDims, nGrads];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #6
% Define parameters
gradsFun = 'unifMats';
sampleNr = [];
nGrads = 1;
spaceDims = 3;
flowDims = 1 : 3;
makeIncompr = true;
checkIncompr = false;

% Obtain value
val = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [spaceDims, spaceDims, nGrads];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #7
% Define parameters
gradsFun = 'unifMats';
sampleNr = [];
nGrads = 2;
spaceDims = 2;
flowDims = 1 : 2;
makeIncompr = false;
checkIncompr = false;

% Obtain value
val = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [spaceDims, spaceDims, nGrads];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #8
% Define parameters
gradsFun = 'unifMats';
sampleNr = [];
nGrads = 2;
spaceDims = 2;
flowDims = 1 : 2;
makeIncompr = true;
checkIncompr = false;

% Obtain value
val = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [spaceDims, spaceDims, nGrads];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #9
% Define parameters
gradsFun = 'unifMats';
sampleNr = [];
nGrads = 2;
spaceDims = 3;
flowDims = [1, 2];
makeIncompr = false;
checkIncompr = false;

% Obtain value
val = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [spaceDims, spaceDims, nGrads];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #10
% Define parameters
gradsFun = 'unifMats';
sampleNr = [];
nGrads = 2;
spaceDims = 3;
flowDims = [1, 2];
makeIncompr = true;
checkIncompr = false;

% Obtain value
val = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [spaceDims, spaceDims, nGrads];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #9
% Define parameters
gradsFun = 'unifMats';
sampleNr = [];
nGrads = 2;
spaceDims = 3;
flowDims = [1, 3];
makeIncompr = false;
checkIncompr = false;

% Obtain value
val = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [spaceDims, spaceDims, nGrads];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #10
% Define parameters
gradsFun = 'unifMats';
sampleNr = [];
nGrads = 2;
spaceDims = 3;
flowDims = [1, 3];
makeIncompr = true;
checkIncompr = false;

% Obtain value
val = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [spaceDims, spaceDims, nGrads];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #9
% Define parameters
gradsFun = 'unifMats';
sampleNr = [];
nGrads = 2;
spaceDims = 3;
flowDims = [2, 3];
makeIncompr = false;
checkIncompr = false;

% Obtain value
val = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [spaceDims, spaceDims, nGrads];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #10
% Define parameters
gradsFun = 'unifMats';
sampleNr = [];
nGrads = 2;
spaceDims = 3;
flowDims = [2, 3];
makeIncompr = true;
checkIncompr = false;

% Obtain value
val = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [spaceDims, spaceDims, nGrads];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #11
% Define parameters
gradsFun = 'unifMats';
sampleNr = [];
nGrads = 2;
spaceDims = 3;
flowDims = 1 : 3;
makeIncompr = false;
checkIncompr = false;

% Obtain value
val = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [spaceDims, spaceDims, nGrads];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #12
% Define parameters
gradsFun = 'unifMats';
sampleNr = [];
nGrads = 2;
spaceDims = 3;
flowDims = 1 : 3;
makeIncompr = true;
checkIncompr = false;

% Obtain value
val = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [spaceDims, spaceDims, nGrads];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #13
% Define parameters
gradsFun = 'normMats';
sampleNr = [];
nGrads = 1;
spaceDims = 2;
flowDims = 1 : 2;
makeIncompr = false;
checkIncompr = false;

% Obtain value
val = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [spaceDims, spaceDims, nGrads];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #14
% Define parameters
gradsFun = 'normMats';
sampleNr = [];
nGrads = 1;
spaceDims = 2;
flowDims = 1 : 2;
makeIncompr = true;
checkIncompr = false;

% Obtain value
val = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [spaceDims, spaceDims, nGrads];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #15
% Define parameters
gradsFun = 'normMats';
sampleNr = [];
nGrads = 1;
spaceDims = 3;
flowDims = [1, 2];
makeIncompr = false;
checkIncompr = false;

% Obtain value
val = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [spaceDims, spaceDims, nGrads];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #16
% Define parameters
gradsFun = 'normMats';
sampleNr = [];
nGrads = 1;
spaceDims = 3;
flowDims = [1, 2];
makeIncompr = true;
checkIncompr = false;

% Obtain value
val = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [spaceDims, spaceDims, nGrads];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #15
% Define parameters
gradsFun = 'normMats';
sampleNr = [];
nGrads = 1;
spaceDims = 3;
flowDims = [1, 3];
makeIncompr = false;
checkIncompr = false;

% Obtain value
val = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [spaceDims, spaceDims, nGrads];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #16
% Define parameters
gradsFun = 'normMats';
sampleNr = [];
nGrads = 1;
spaceDims = 3;
flowDims = [1, 3];
makeIncompr = true;
checkIncompr = false;

% Obtain value
val = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [spaceDims, spaceDims, nGrads];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #15
% Define parameters
gradsFun = 'normMats';
sampleNr = [];
nGrads = 1;
spaceDims = 3;
flowDims = [2, 3];
makeIncompr = false;
checkIncompr = false;

% Obtain value
val = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [spaceDims, spaceDims, nGrads];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #16
% Define parameters
gradsFun = 'normMats';
sampleNr = [];
nGrads = 1;
spaceDims = 3;
flowDims = [2, 3];
makeIncompr = true;
checkIncompr = false;

% Obtain value
val = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [spaceDims, spaceDims, nGrads];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #17
% Define parameters
gradsFun = 'normMats';
sampleNr = [];
nGrads = 1;
spaceDims = 3;
flowDims = 1 : 3;
makeIncompr = false;
checkIncompr = false;

% Obtain value
val = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [spaceDims, spaceDims, nGrads];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #18
% Define parameters
gradsFun = 'normMats';
sampleNr = [];
nGrads = 1;
spaceDims = 3;
flowDims = 1 : 3;
makeIncompr = true;
checkIncompr = false;

% Obtain value
val = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [spaceDims, spaceDims, nGrads];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #19
% Define parameters
gradsFun = 'normMats';
sampleNr = [];
nGrads = 2;
spaceDims = 2;
flowDims = 1 : 2;
makeIncompr = false;
checkIncompr = false;

% Obtain value
val = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [spaceDims, spaceDims, nGrads];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #20
% Define parameters
gradsFun = 'normMats';
sampleNr = [];
nGrads = 2;
spaceDims = 2;
flowDims = 1 : 2;
makeIncompr = true;
checkIncompr = false;

% Obtain value
val = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [spaceDims, spaceDims, nGrads];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #21
% Define parameters
gradsFun = 'normMats';
sampleNr = [];
nGrads = 2;
spaceDims = 3;
flowDims = [1, 2];
makeIncompr = false;
checkIncompr = false;

% Obtain value
val = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [spaceDims, spaceDims, nGrads];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #22
% Define parameters
gradsFun = 'normMats';
sampleNr = [];
nGrads = 2;
spaceDims = 3;
flowDims = [1, 2];
makeIncompr = true;
checkIncompr = false;

% Obtain value
val = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [spaceDims, spaceDims, nGrads];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #21
% Define parameters
gradsFun = 'normMats';
sampleNr = [];
nGrads = 2;
spaceDims = 3;
flowDims = [1, 3];
makeIncompr = false;
checkIncompr = false;

% Obtain value
val = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [spaceDims, spaceDims, nGrads];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #22
% Define parameters
gradsFun = 'normMats';
sampleNr = [];
nGrads = 2;
spaceDims = 3;
flowDims = [1, 3];
makeIncompr = true;
checkIncompr = false;

% Obtain value
val = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [spaceDims, spaceDims, nGrads];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #21
% Define parameters
gradsFun = 'normMats';
sampleNr = [];
nGrads = 2;
spaceDims = 3;
flowDims = [2, 3];
makeIncompr = false;
checkIncompr = false;

% Obtain value
val = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [spaceDims, spaceDims, nGrads];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #22
% Define parameters
gradsFun = 'normMats';
sampleNr = [];
nGrads = 2;
spaceDims = 3;
flowDims = [2, 3];
makeIncompr = true;
checkIncompr = false;

% Obtain value
val = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [spaceDims, spaceDims, nGrads];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #23
% Define parameters
gradsFun = 'normMats';
sampleNr = [];
nGrads = 2;
spaceDims = 3;
flowDims = 1 : 3;
makeIncompr = false;
checkIncompr = false;

% Obtain value
val = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [spaceDims, spaceDims, nGrads];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #24
% Define parameters
gradsFun = 'normMats';
sampleNr = [];
nGrads = 2;
spaceDims = 3;
flowDims = 1 : 3;
makeIncompr = true;
checkIncompr = false;

% Obtain value
val = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [spaceDims, spaceDims, nGrads];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test actual output #1
% Define parameters
gradsFun = @(sampleNr, nGrads, spaceDims) reshape(1 : spaceDims * spaceDims * nGrads, spaceDims, spaceDims, nGrads);
sampleNr = [];
nGrads = 1;
spaceDims = 2;
flowDims = 1 : 2;
makeIncompr = false;
checkIncompr = false;

% Obtain actual value
actVal = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Define expected value
expVal = [
    1, 3;
    2, 4;
];

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.');

%% Test actual output #2
% Define parameters
gradsFun = @(sampleNr, nGrads, spaceDims) reshape(1 : spaceDims * spaceDims * nGrads, spaceDims, spaceDims, nGrads);
sampleNr = [];
nGrads = 1;
spaceDims = 2;
flowDims = 1 : 2;
makeIncompr = true;
checkIncompr = false;

% Obtain actual value
actVal = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Define expected value
expVal = [
    -1.5,  3.0;
     2.0,  1.5;
];

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.');

%% Test actual output #3
% Define parameters
gradsFun = @(sampleNr, nGrads, spaceDims) reshape(1 : spaceDims * spaceDims * nGrads, spaceDims, spaceDims, nGrads);
sampleNr = [];
nGrads = 1;
spaceDims = 3;
flowDims = [1, 2];
makeIncompr = false;
checkIncompr = false;

% Obtain actual value
actVal = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Define expected value
expVal = [
    1, 4, 0;
    2, 5, 0;
    0, 0, 0;
];

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.');

%% Test actual output #4
% Define parameters
gradsFun = @(sampleNr, nGrads, spaceDims) reshape(1 : spaceDims * spaceDims * nGrads, spaceDims, spaceDims, nGrads);
sampleNr = [];
nGrads = 1;
spaceDims = 3;
flowDims = [1, 2];
makeIncompr = true;
checkIncompr = false;

% Obtain actual value
actVal = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Define expected value
expVal = [
    -2,  4,  0;
     2,  2,  0;
     0,  0,  0;
];

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.');

%% Test actual output #5:
% Define parameters
gradsFun = @(sampleNr, nGrads, spaceDims) reshape(1 : spaceDims * spaceDims * nGrads, spaceDims, spaceDims, nGrads);
sampleNr = [];
nGrads = 1;
spaceDims = 3;
flowDims = [1, 3];
makeIncompr = false;
checkIncompr = false;

% Obtain actual value
actVal = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Define expected value
expVal = [
    1, 0, 7;
    0, 0, 0;
    3, 0, 9;
];

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.');

%% Test actual output #6:
% Define parameters
gradsFun = @(sampleNr, nGrads, spaceDims) reshape(1 : spaceDims * spaceDims * nGrads, spaceDims, spaceDims, nGrads);
sampleNr = [];
nGrads = 1;
spaceDims = 3;
flowDims = [1, 3];
makeIncompr = true;
checkIncompr = false;

% Obtain actual value
actVal = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Define expected value
expVal = [
    -4,  0,  7;
     0,  0,  0;
     3,  0,  4;
];

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.');

%% Test actual output #7:
% Define parameters
gradsFun = @(sampleNr, nGrads, spaceDims) reshape(1 : spaceDims * spaceDims * nGrads, spaceDims, spaceDims, nGrads);
sampleNr = [];
nGrads = 1;
spaceDims = 3;
flowDims = [2, 3];
makeIncompr = false;
checkIncompr = false;

% Obtain actual value
actVal = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Define expected value
expVal = [
    0, 0, 0;
    0, 5, 8;
    0, 6, 9;
];

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.');

%% Test actual output #8:
% Define parameters
gradsFun = @(sampleNr, nGrads, spaceDims) reshape(1 : spaceDims * spaceDims * nGrads, spaceDims, spaceDims, nGrads);
sampleNr = [];
nGrads = 1;
spaceDims = 3;
flowDims = [2, 3];
makeIncompr = true;
checkIncompr = false;

% Obtain actual value
actVal = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Define expected value
expVal = [
     0,  0,  0;
     0, -2,  8;
     0,  6,  2;
];

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.');

%% Test actual output #9
% Define parameters
gradsFun = @(sampleNr, nGrads, spaceDims) reshape(1 : spaceDims * spaceDims * nGrads, spaceDims, spaceDims, nGrads);
sampleNr = [];
nGrads = 1;
spaceDims = 3;
flowDims = 1 : 3;
makeIncompr = false;
checkIncompr = false;

% Obtain actual value
actVal = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Define expected value
expVal = [
    1, 4, 7;
    2, 5, 8;
    3, 6, 9;
];

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.');

%% Test actual output #10
% Define parameters
gradsFun = @(sampleNr, nGrads, spaceDims) reshape(1 : spaceDims * spaceDims * nGrads, spaceDims, spaceDims, nGrads);
sampleNr = [];
nGrads = 1;
spaceDims = 3;
flowDims = 1 : 3;
makeIncompr = true;
checkIncompr = false;

% Obtain actual value
actVal = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Define expected value
expVal = [
    -4,  4,  7;
     2,  0,  8;
     3,  6,  4;
];

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.');

%% Test actual output #11
% Define parameters
gradsFun = @(sampleNr, nGrads, spaceDims) reshape(1 : spaceDims * spaceDims * nGrads, spaceDims, spaceDims, nGrads);
sampleNr = [];
nGrads = 2;
spaceDims = 2;
flowDims = 1 : 2;
makeIncompr = false;
checkIncompr = false;

% Obtain actual value
actVal = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Define expected value
expVal = zeros(2, 2, 2);
expVal(:, :, 1) = [
    1, 3;
    2, 4;
];
expVal(:, :, 2) = [
    5, 7;
    6, 8;
];

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.');

%% Test actual output #12
% Define parameters
gradsFun = @(sampleNr, nGrads, spaceDims) reshape(1 : spaceDims * spaceDims * nGrads, spaceDims, spaceDims, nGrads);
sampleNr = [];
nGrads = 2;
spaceDims = 2;
flowDims = 1 : 2;
makeIncompr = true;
checkIncompr = false;

% Obtain actual value
actVal = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Define expected value
expVal = zeros(2, 2, 2);
expVal(:, :, 1) = [
    -1.5,  3.0;
     2.0,  1.5;
];
expVal(:, :, 2) = [
    -1.5,  7.0;
     6.0,  1.5;
];

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.');

%% Test actual output #13
% Define parameters
gradsFun = @(sampleNr, nGrads, spaceDims) reshape(1 : spaceDims * spaceDims * nGrads, spaceDims, spaceDims, nGrads);
sampleNr = [];
nGrads = 2;
spaceDims = 3;
flowDims = [1, 2];
makeIncompr = false;
checkIncompr = false;

% Obtain actual value
actVal = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Define expected value
expVal = zeros(3, 3, 2);
expVal(:, :, 1) = [
     1,  4,  0;
     2,  5,  0;
     0,  0,  0;
];
expVal(:, :, 2) = [
    10, 13,  0;
    11, 14,  0;
     0,  0,  0;
];

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.');

%% Test actual output #14
% Define parameters
gradsFun = @(sampleNr, nGrads, spaceDims) reshape(1 : spaceDims * spaceDims * nGrads, spaceDims, spaceDims, nGrads);
sampleNr = [];
nGrads = 2;
spaceDims = 3;
flowDims = [1, 2];
makeIncompr = true;
checkIncompr = false;

% Obtain actual value
actVal = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Define expected value
expVal = zeros(3, 3, 2);
expVal(:, :, 1) = [
    -2,  4,  0;
     2,  2,  0;
     0,  0,  0;
];
expVal(:, :, 2) = [
    -2, 13,  0;
    11,  2,  0;
     0,  0,  0;
];

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.');

%% Test actual output #15:
% Define parameters
gradsFun = @(sampleNr, nGrads, spaceDims) reshape(1 : spaceDims * spaceDims * nGrads, spaceDims, spaceDims, nGrads);
sampleNr = [];
nGrads = 2;
spaceDims = 3;
flowDims = [1, 3];
makeIncompr = false;
checkIncompr = false;

% Obtain actual value
actVal = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Define expected value
expVal = zeros(3, 3, 2);
expVal(:, :, 1) = [
     1,  0,  7;
     0,  0,  0;
     3,  0,  9;
];
expVal(:, :, 2) = [
    10,  0, 16;
     0,  0,  0;
    12,  0, 18;
];

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.');

%% Test actual output #16:
% Define parameters
gradsFun = @(sampleNr, nGrads, spaceDims) reshape(1 : spaceDims * spaceDims * nGrads, spaceDims, spaceDims, nGrads);
sampleNr = [];
nGrads = 2;
spaceDims = 3;
flowDims = [1, 3];
makeIncompr = true;
checkIncompr = false;

% Obtain actual value
actVal = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Define expected value
expVal = zeros(3, 3, 2);
expVal(:, :, 1) = [
    -4,  0,  7;
     0,  0,  0;
     3,  0,  4;
];
expVal(:, :, 2) = [
    -4,  0, 16;
     0,  0,  0;
    12,  0,  4;
];

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.');

%% Test actual output #17:
% Define parameters
gradsFun = @(sampleNr, nGrads, spaceDims) reshape(1 : spaceDims * spaceDims * nGrads, spaceDims, spaceDims, nGrads);
sampleNr = [];
nGrads = 2;
spaceDims = 3;
flowDims = [2, 3];
makeIncompr = false;
checkIncompr = false;

% Obtain actual value
actVal = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Define expected value
expVal = zeros(3, 3, 2);
expVal(:, :, 1) = [
     0,  0,  0;
     0,  5,  8;
     0,  6,  9;
];
expVal(:, :, 2) = [
     0,  0,  0;
     0, 14, 17;
     0, 15, 18;
];

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.');

%% Test actual output #18:
% Define parameters
gradsFun = @(sampleNr, nGrads, spaceDims) reshape(1 : spaceDims * spaceDims * nGrads, spaceDims, spaceDims, nGrads);
sampleNr = [];
nGrads = 2;
spaceDims = 3;
flowDims = [2, 3];
makeIncompr = true;
checkIncompr = false;

% Obtain actual value
actVal = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Define expected value
expVal = zeros(3, 3, 2);
expVal(:, :, 1) = [
     0,  0,  0;
     0, -2,  8;
     0,  6,  2;
];
expVal(:, :, 2) = [
     0,  0,  0;
     0, -2, 17;
     0, 15,  2;
];

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.');

%% Test actual output #19
% Define parameters
gradsFun = @(sampleNr, nGrads, spaceDims) reshape(1 : spaceDims * spaceDims * nGrads, spaceDims, spaceDims, nGrads);
sampleNr = [];
nGrads = 2;
spaceDims = 3;
flowDims = 1 : 3;
makeIncompr = false;
checkIncompr = false;

% Obtain actual value
actVal = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Define expected value
expVal = zeros(3, 3, 2);
expVal(:, :, 1) = [
     1,  4,  7;
     2,  5,  8;
     3,  6,  9;
];
expVal(:, :, 2) = [
    10, 13, 16;
    11, 14, 17;
    12, 15, 18;
];

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.');

%% Test actual output #20
% Define parameters
gradsFun = @(sampleNr, nGrads, spaceDims) reshape(1 : spaceDims * spaceDims * nGrads, spaceDims, spaceDims, nGrads);
sampleNr = [];
nGrads = 2;
spaceDims = 3;
flowDims = 1 : 3;
makeIncompr = true;
checkIncompr = false;

% Obtain actual value
actVal = getGrads(gradsFun, sampleNr, nGrads, spaceDims, flowDims, makeIncompr, checkIncompr);

% Define expected value
expVal = zeros(3, 3, 2);
expVal(:, :, 1) = [
    -4,  4,  7;
     2,  0,  8;
     3,  6,  4;
];
expVal(:, :, 2) = [
    -4, 13, 16;
    11,  0, 17;
    12, 15,  4;
];

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.');
