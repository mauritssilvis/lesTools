% Test checkGradsFun()

%% Test output type #1
% Define parameters
gradsFun = 'unifMats';
spaceDims = 2;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #2
% Define parameters
gradsFun = 'unifMats';
spaceDims = 3;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #3
% Define parameters
gradsFun = 'normMats';
spaceDims = 2;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #4
% Define parameters
gradsFun = 'normMats';
spaceDims = 3;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output size #1
% Define parameters
gradsFun = 'unifMats';
spaceDims = 2;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];


% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #2
% Define parameters
gradsFun = 'unifMats';
spaceDims = 3;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];


% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #3
% Define parameters
gradsFun = 'normMats';
spaceDims = 2;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];


% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #4
% Define parameters
gradsFun = 'normMats';
spaceDims = 3;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];


% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test actual output #1
% Define parameters
gradsFun = 'unifMats';
spaceDims = 2;

% Obtain actual value
actVal = checkGradsFun(gradsFun, spaceDims);

% Define expected value
expVal = 0;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #2
% Define parameters
gradsFun = 'unifMats';
spaceDims = 3;

% Obtain actual value
actVal = checkGradsFun(gradsFun, spaceDims);

% Define expected value
expVal = 0;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #3
% Define parameters
gradsFun = 'normMats';
spaceDims = 2;

% Obtain actual value
actVal = checkGradsFun(gradsFun, spaceDims);

% Define expected value
expVal = 0;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #4
% Define parameters
gradsFun = 'normMats';
spaceDims = 3;

% Obtain actual value
actVal = checkGradsFun(gradsFun, spaceDims);

% Define expected value
expVal = 0;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');
