% Test checkGradsFun()

%% Test output type #1
% Define parameters
gradsFun = 'normMats';
spaceDims = 2;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #2
% Define parameters
gradsFun = 'normMats';
spaceDims = 3;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #3
% Define parameters
gradsFun = 'unifMats';
spaceDims = 2;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #4
% Define parameters
gradsFun = 'unifMats';
spaceDims = 3;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #5
% Define parameters
gradsFun = @(sampleNr, nGrads, spaceDims) reshape(1 : spaceDims * spaceDims * nGrads, spaceDims, spaceDims, nGrads);
spaceDims = 2;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #6
% Define parameters
gradsFun = @(sampleNr, nGrads, spaceDims) reshape(1 : spaceDims * spaceDims * nGrads, spaceDims, spaceDims, nGrads);
spaceDims = 3;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #7
% Define parameters
gradsFun = []; % Empty
spaceDims = 2;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #8
% Define parameters
gradsFun = []; % Empty
spaceDims = 3;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #9
% Define parameters
gradsFun = ''; % Empty
spaceDims = 2;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #10
% Define parameters
gradsFun = ''; % Empty
spaceDims = 3;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #11
% Define parameters
gradsFun = 10; % Double
spaceDims = 2;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #12
% Define parameters
gradsFun = 10; % Double
spaceDims = 3;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #13
% Define parameters
gradsFun = true; % Bool
spaceDims = 2;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #14
% Define parameters
gradsFun = true; % Bool
spaceDims = 3;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #15
% Define parameters
gradsFun = char(100); % Char
spaceDims = 2;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #16
% Define parameters
gradsFun = char(100); % Char
spaceDims = 3;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #17
% Define parameters
gradsFun = string(); % String
spaceDims = 2;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #18
% Define parameters
gradsFun = string(); % String
spaceDims = 3;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #19
% Define parameters
gradsFun = struct(); % Struct
spaceDims = 2;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #20
% Define parameters
gradsFun = struct(); % Struct
spaceDims = 3;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #21
% Define parameters
gradsFun = {''}; % Cell
spaceDims = 2;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #22
% Define parameters
gradsFun = {''}; % Cell
spaceDims = 3;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #23
% Define parameters
gradsFun = table(0); % Table
spaceDims = 2;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #24
% Define parameters
gradsFun = table(0); % Table
spaceDims = 3;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #25
% Define parameters
gradsFun = 'nonExistingFunctionName'; % Nonexisting function name
spaceDims = 2;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #26
% Define parameters
gradsFun = 'nonExistingFunctionName'; % Nonexisting function name
spaceDims = 3;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #27
% Define parameters
gradsFun = 'emptyScript'; % Nonevaluable script file
spaceDims = 2;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #28
% Define parameters
gradsFun = 'emptyScript'; % Nonevaluable script file
spaceDims = 3;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #29
% Define parameters
gradsFun = @() 1; % Zero input arguments
spaceDims = 2;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #30
% Define parameters
gradsFun = @() 1; % Zero input arguments
spaceDims = 3;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #31
% Define parameters
gradsFun = @(a, b, c, d, e, f, g, h, i, j) 1; % Ten input arguments
spaceDims = 2;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #32
% Define parameters
gradsFun = @(a, b, c, d, e, f, g, h, i, j) 1; % Ten input arguments
spaceDims = 3;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #33
% Define parameters
gradsFun = @(varargin) 1; % Variable number of input arguments
spaceDims = 2;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #34
% Define parameters
gradsFun = @(varargin) 1; % Variable number of input arguments
spaceDims = 3;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #35
% Define parameters
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(spaceDims + 1, spaceDims + 1) + zeros(spaceDims + 2, spaceDims + 2); % Invalid operation
spaceDims = 2;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #36
% Define parameters
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(spaceDims + 1, spaceDims + 1) + zeros(spaceDims + 2, spaceDims + 2); % Invalid operation
spaceDims = 3;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #37
% Define parameters
gradsFun = @(sampleNr, nGrads, spaceDims) true; % Bool output
spaceDims = 2;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #38
% Define parameters
gradsFun = @(sampleNr, nGrads, spaceDims) true; % Bool output
spaceDims = 3;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #39
% Define parameters
gradsFun = @(sampleNr, nGrads, spaceDims) char(100); % Char output
spaceDims = 2;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #40
% Define parameters
gradsFun = @(sampleNr, nGrads, spaceDims) char(100); % Char output
spaceDims = 3;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #41
% Define parameters
gradsFun = @(sampleNr, nGrads, spaceDims) string(); % String output
spaceDims = 2;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #42
% Define parameters
gradsFun = @(sampleNr, nGrads, spaceDims) string(); % String output
spaceDims = 3;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #43
% Define parameters
gradsFun = @(sampleNr, nGrads, spaceDims) struct(); % Struct output
spaceDims = 2;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #44
% Define parameters
gradsFun = @(sampleNr, nGrads, spaceDims) struct(); % Struct output
spaceDims = 3;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #45
% Define parameters
gradsFun = @(sampleNr, nGrads, spaceDims) {''}; % Cell output
spaceDims = 2;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #46
% Define parameters
gradsFun = @(sampleNr, nGrads, spaceDims) {''}; % Cell output
spaceDims = 3;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #47
% Define parameters
gradsFun = @(sampleNr, nGrads, spaceDims) table(0); % Table output
spaceDims = 2;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #48
% Define parameters
gradsFun = @(sampleNr, nGrads, spaceDims) table(0); % Table output
spaceDims = 3;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #49
% Define parameters
gradsFun = @(sampleNr, nGrads, spaceDims) @(sampleNr, nGrads, spaceDims) sampleNr; % Function handle output
spaceDims = 2;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #50
% Define parameters
gradsFun = @(sampleNr, nGrads, spaceDims) @(sampleNr, nGrads, spaceDims) sampleNr; % Function handle output
spaceDims = 3;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #51
% Define parameters
gradsFun = @(sampleNr, nGrads, spaceDims) []; % Empty output
spaceDims = 2;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #52
% Define parameters
gradsFun = @(sampleNr, nGrads, spaceDims) []; % Empty output
spaceDims = 3;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #53
% Define parameters
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(1); % Scalar output
spaceDims = 2;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #54
% Define parameters
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(1); % Scalar output
spaceDims = 3;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #55
% Define parameters
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(3, 3, 3, 3); % Rank-four tensor output
spaceDims = 2;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output type #56
% Define parameters
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(3, 3, 3, 3); % Rank-four tensor output
spaceDims = 3;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.']);

%% Test output size #1
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

%% Test output size #2
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

%% Test output size #3
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

%% Test output size #4
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

%% Test output size #5
% Define parameters
gradsFun = @(sampleNr, nGrads, spaceDims) reshape(1 : spaceDims * spaceDims * nGrads, spaceDims, spaceDims, nGrads);
spaceDims = 2;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];


% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #6
% Define parameters
gradsFun = @(sampleNr, nGrads, spaceDims) reshape(1 : spaceDims * spaceDims * nGrads, spaceDims, spaceDims, nGrads);
spaceDims = 3;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];


% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #7
% Define parameters
gradsFun = []; % Empty
spaceDims = 2;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];


% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #8
% Define parameters
gradsFun = []; % Empty
spaceDims = 3;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];


% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #9
% Define parameters
gradsFun = ''; % Empty
spaceDims = 2;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];


% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #10
% Define parameters
gradsFun = ''; % Empty
spaceDims = 3;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];


% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #11
% Define parameters
gradsFun = 10; % Double
spaceDims = 2;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];


% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #12
% Define parameters
gradsFun = 10; % Double
spaceDims = 3;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];


% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #13
% Define parameters
gradsFun = true; % Bool
spaceDims = 2;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];


% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #14
% Define parameters
gradsFun = true; % Bool
spaceDims = 3;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];


% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #15
% Define parameters
gradsFun = char(100); % Char
spaceDims = 2;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];


% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #16
% Define parameters
gradsFun = char(100); % Char
spaceDims = 3;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];


% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #17
% Define parameters
gradsFun = string(); % String
spaceDims = 2;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];


% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #18
% Define parameters
gradsFun = string(); % String
spaceDims = 3;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];


% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #19
% Define parameters
gradsFun = struct(); % Struct
spaceDims = 2;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];


% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #20
% Define parameters
gradsFun = struct(); % Struct
spaceDims = 3;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];


% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #21
% Define parameters
gradsFun = {''}; % Cell
spaceDims = 2;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];


% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #22
% Define parameters
gradsFun = {''}; % Cell
spaceDims = 3;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];


% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #23
% Define parameters
gradsFun = table(0); % Table
spaceDims = 2;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];


% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #24
% Define parameters
gradsFun = table(0); % Table
spaceDims = 3;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];


% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #25
% Define parameters
gradsFun = 'nonExistingFunctionName'; % Nonexisting function name
spaceDims = 2;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];


% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #26
% Define parameters
gradsFun = 'nonExistingFunctionName'; % Nonexisting function name
spaceDims = 3;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];


% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #27
% Define parameters
gradsFun = 'emptyScript'; % Nonevaluable script file
spaceDims = 2;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];


% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #28
% Define parameters
gradsFun = 'emptyScript'; % Nonevaluable script file
spaceDims = 3;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];


% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #29
% Define parameters
gradsFun = @() 1; % Zero input arguments
spaceDims = 2;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];


% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #30
% Define parameters
gradsFun = @() 1; % Zero input arguments
spaceDims = 3;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];


% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #31
% Define parameters
gradsFun = @(a, b, c, d, e, f, g, h, i, j) 1; % Ten input arguments
spaceDims = 2;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];


% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #32
% Define parameters
gradsFun = @(a, b, c, d, e, f, g, h, i, j) 1; % Ten input arguments
spaceDims = 3;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];


% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #33
% Define parameters
gradsFun = @(varargin) 1; % Variable number of input arguments
spaceDims = 2;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];


% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #34
% Define parameters
gradsFun = @(varargin) 1; % Variable number of input arguments
spaceDims = 3;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];


% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #35
% Define parameters
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(spaceDims + 1, spaceDims + 1) + zeros(spaceDims + 2, spaceDims + 2); % Invalid operation
spaceDims = 2;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];


% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #36
% Define parameters
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(spaceDims + 1, spaceDims + 1) + zeros(spaceDims + 2, spaceDims + 2); % Invalid operation
spaceDims = 3;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];


% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #37
% Define parameters
gradsFun = @(sampleNr, nGrads, spaceDims) true; % Bool output
spaceDims = 2;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];


% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #38
% Define parameters
gradsFun = @(sampleNr, nGrads, spaceDims) true; % Bool output
spaceDims = 3;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];


% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #39
% Define parameters
gradsFun = @(sampleNr, nGrads, spaceDims) char(100); % Char output
spaceDims = 2;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];


% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #40
% Define parameters
gradsFun = @(sampleNr, nGrads, spaceDims) char(100); % Char output
spaceDims = 3;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];


% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #41
% Define parameters
gradsFun = @(sampleNr, nGrads, spaceDims) string(); % String output
spaceDims = 2;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];


% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #42
% Define parameters
gradsFun = @(sampleNr, nGrads, spaceDims) string(); % String output
spaceDims = 3;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];


% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #43
% Define parameters
gradsFun = @(sampleNr, nGrads, spaceDims) struct(); % Struct output
spaceDims = 2;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];


% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #44
% Define parameters
gradsFun = @(sampleNr, nGrads, spaceDims) struct(); % Struct output
spaceDims = 3;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];


% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #45
% Define parameters
gradsFun = @(sampleNr, nGrads, spaceDims) {''}; % Cell output
spaceDims = 2;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];


% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #46
% Define parameters
gradsFun = @(sampleNr, nGrads, spaceDims) {''}; % Cell output
spaceDims = 3;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];


% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #47
% Define parameters
gradsFun = @(sampleNr, nGrads, spaceDims) table(0); % Table output
spaceDims = 2;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];


% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #48
% Define parameters
gradsFun = @(sampleNr, nGrads, spaceDims) table(0); % Table output
spaceDims = 3;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];


% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #49
% Define parameters
gradsFun = @(sampleNr, nGrads, spaceDims) @(sampleNr, nGrads, spaceDims) sampleNr; % Function handle output
spaceDims = 2;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];


% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #50
% Define parameters
gradsFun = @(sampleNr, nGrads, spaceDims) @(sampleNr, nGrads, spaceDims) sampleNr; % Function handle output
spaceDims = 3;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];


% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #51
% Define parameters
gradsFun = @(sampleNr, nGrads, spaceDims) []; % Empty output
spaceDims = 2;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];


% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #52
% Define parameters
gradsFun = @(sampleNr, nGrads, spaceDims) []; % Empty output
spaceDims = 3;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];


% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #53
% Define parameters
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(1); % Scalar output
spaceDims = 2;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];


% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #54
% Define parameters
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(1); % Scalar output
spaceDims = 3;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];


% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #55
% Define parameters
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(3, 3, 3, 3); % Rank-four tensor output
spaceDims = 2;

% Obtain value
val = checkGradsFun(gradsFun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];


% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.');

%% Test output size #56
% Define parameters
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(3, 3, 3, 3); % Rank-four tensor output
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
gradsFun = 'normMats';
spaceDims = 2;

% Obtain actual value
actVal = checkGradsFun(gradsFun, spaceDims);

% Define expected value
expVal = 0;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #2
% Define parameters
gradsFun = 'normMats';
spaceDims = 3;

% Obtain actual value
actVal = checkGradsFun(gradsFun, spaceDims);

% Define expected value
expVal = 0;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #3
% Define parameters
gradsFun = 'unifMats';
spaceDims = 2;

% Obtain actual value
actVal = checkGradsFun(gradsFun, spaceDims);

% Define expected value
expVal = 0;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #4
% Define parameters
gradsFun = 'unifMats';
spaceDims = 3;

% Obtain actual value
actVal = checkGradsFun(gradsFun, spaceDims);

% Define expected value
expVal = 0;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #5
% Define parameters
gradsFun = @(sampleNr, nGrads, spaceDims) reshape(1 : spaceDims * spaceDims * nGrads, spaceDims, spaceDims, nGrads);
spaceDims = 2;

% Obtain actual value
actVal = checkGradsFun(gradsFun, spaceDims);

% Define expected value
expVal = 0;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #6
% Define parameters
gradsFun = @(sampleNr, nGrads, spaceDims) reshape(1 : spaceDims * spaceDims * nGrads, spaceDims, spaceDims, nGrads);
spaceDims = 3;

% Obtain actual value
actVal = checkGradsFun(gradsFun, spaceDims);

% Define expected value
expVal = 0;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #7
% Define parameters
gradsFun = []; % Empty
spaceDims = 2;

% Obtain actual value
actVal = checkGradsFun(gradsFun, spaceDims);

% Define expected value
expVal = 1;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #8
% Define parameters
gradsFun = []; % Empty
spaceDims = 3;

% Obtain actual value
actVal = checkGradsFun(gradsFun, spaceDims);

% Define expected value
expVal = 1;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #9
% Define parameters
gradsFun = ''; % Empty
spaceDims = 2;

% Obtain actual value
actVal = checkGradsFun(gradsFun, spaceDims);

% Define expected value
expVal = 1;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #10
% Define parameters
gradsFun = ''; % Empty
spaceDims = 3;

% Obtain actual value
actVal = checkGradsFun(gradsFun, spaceDims);

% Define expected value
expVal = 1;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #11
% Define parameters
gradsFun = 10; % Double
spaceDims = 2;

% Obtain actual value
actVal = checkGradsFun(gradsFun, spaceDims);

% Define expected value
expVal = 2;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #12
% Define parameters
gradsFun = 10; % Double
spaceDims = 3;

% Obtain actual value
actVal = checkGradsFun(gradsFun, spaceDims);

% Define expected value
expVal = 2;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #13
% Define parameters
gradsFun = true; % Bool
spaceDims = 2;

% Obtain actual value
actVal = checkGradsFun(gradsFun, spaceDims);

% Define expected value
expVal = 2;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #14
% Define parameters
gradsFun = true; % Bool
spaceDims = 3;

% Obtain actual value
actVal = checkGradsFun(gradsFun, spaceDims);

% Define expected value
expVal = 2;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #15
% Define parameters
gradsFun = char(100); % Char
spaceDims = 2;

% Obtain actual value
actVal = checkGradsFun(gradsFun, spaceDims);

% Define expected value
expVal = 2;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #16
% Define parameters
gradsFun = char(100); % Char
spaceDims = 3;

% Obtain actual value
actVal = checkGradsFun(gradsFun, spaceDims);

% Define expected value
expVal = 2;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #17
% Define parameters
gradsFun = string(); % String
spaceDims = 2;

% Obtain actual value
actVal = checkGradsFun(gradsFun, spaceDims);

% Define expected value
expVal = 2;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #18
% Define parameters
gradsFun = string(); % String
spaceDims = 3;

% Obtain actual value
actVal = checkGradsFun(gradsFun, spaceDims);

% Define expected value
expVal = 2;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #19
% Define parameters
gradsFun = struct(); % Struct
spaceDims = 2;

% Obtain actual value
actVal = checkGradsFun(gradsFun, spaceDims);

% Define expected value
expVal = 2;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #20
% Define parameters
gradsFun = struct(); % Struct
spaceDims = 3;

% Obtain actual value
actVal = checkGradsFun(gradsFun, spaceDims);

% Define expected value
expVal = 2;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #21
% Define parameters
gradsFun = {''}; % Cell
spaceDims = 2;

% Obtain actual value
actVal = checkGradsFun(gradsFun, spaceDims);

% Define expected value
expVal = 2;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #22
% Define parameters
gradsFun = {''}; % Cell
spaceDims = 3;

% Obtain actual value
actVal = checkGradsFun(gradsFun, spaceDims);

% Define expected value
expVal = 2;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #23
% Define parameters
gradsFun = table(0); % Table
spaceDims = 2;

% Obtain actual value
actVal = checkGradsFun(gradsFun, spaceDims);

% Define expected value
expVal = 2;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #24
% Define parameters
gradsFun = table(0); % Table
spaceDims = 3;

% Obtain actual value
actVal = checkGradsFun(gradsFun, spaceDims);

% Define expected value
expVal = 2;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #25
% Define parameters
gradsFun = 'nonExistingFunctionName'; % Nonexisting function name
spaceDims = 2;

% Obtain actual value
actVal = checkGradsFun(gradsFun, spaceDims);

% Define expected value
expVal = 2;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #26
% Define parameters
gradsFun = 'nonExistingFunctionName'; % Nonexisting function name
spaceDims = 3;

% Obtain actual value
actVal = checkGradsFun(gradsFun, spaceDims);

% Define expected value
expVal = 2;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #27
% Define parameters
gradsFun = 'emptyScript'; % Nonevaluable script file
spaceDims = 2;

% Obtain actual value
actVal = checkGradsFun(gradsFun, spaceDims);

% Define expected value
expVal = 3;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #28
% Define parameters
gradsFun = 'emptyScript'; % Nonevaluable script file
spaceDims = 3;

% Obtain actual value
actVal = checkGradsFun(gradsFun, spaceDims);

% Define expected value
expVal = 3;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #29
% Define parameters
gradsFun = @() 1; % Zero input arguments
spaceDims = 2;

% Obtain actual value
actVal = checkGradsFun(gradsFun, spaceDims);

% Define expected value
expVal = 4;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #30
% Define parameters
gradsFun = @() 1; % Zero input arguments
spaceDims = 3;

% Obtain actual value
actVal = checkGradsFun(gradsFun, spaceDims);

% Define expected value
expVal = 4;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #31
% Define parameters
gradsFun = @(a, b, c, d, e, f, g, h, i, j) 1; % Ten input arguments
spaceDims = 2;

% Obtain actual value
actVal = checkGradsFun(gradsFun, spaceDims);

% Define expected value
expVal = 4;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #32
% Define parameters
gradsFun = @(a, b, c, d, e, f, g, h, i, j) 1; % Ten input arguments
spaceDims = 3;

% Obtain actual value
actVal = checkGradsFun(gradsFun, spaceDims);

% Define expected value
expVal = 4;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #33
% Define parameters
gradsFun = @(varargin) 1; % Variable number of input arguments
spaceDims = 2;

% Obtain actual value
actVal = checkGradsFun(gradsFun, spaceDims);

% Define expected value
expVal = 4;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #34
% Define parameters
gradsFun = @(varargin) 1; % Variable number of input arguments
spaceDims = 3;

% Obtain actual value
actVal = checkGradsFun(gradsFun, spaceDims);

% Define expected value
expVal = 4;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #35
% Define parameters
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(spaceDims + 1, spaceDims + 1) + zeros(spaceDims + 2, spaceDims + 2); % Invalid operation
spaceDims = 2;

% Obtain actual value
actVal = checkGradsFun(gradsFun, spaceDims);

% Define expected value
expVal = 5;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #36
% Define parameters
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(spaceDims + 1, spaceDims + 1) + zeros(spaceDims + 2, spaceDims + 2); % Invalid operation
spaceDims = 3;

% Obtain actual value
actVal = checkGradsFun(gradsFun, spaceDims);

% Define expected value
expVal = 5;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #37
% Define parameters
gradsFun = @(sampleNr, nGrads, spaceDims) true; % Bool output
spaceDims = 2;

% Obtain actual value
actVal = checkGradsFun(gradsFun, spaceDims);

% Define expected value
expVal = 7;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #38
% Define parameters
gradsFun = @(sampleNr, nGrads, spaceDims) true; % Bool output
spaceDims = 3;

% Obtain actual value
actVal = checkGradsFun(gradsFun, spaceDims);

% Define expected value
expVal = 7;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #39
% Define parameters
gradsFun = @(sampleNr, nGrads, spaceDims) char(100); % Char output
spaceDims = 2;

% Obtain actual value
actVal = checkGradsFun(gradsFun, spaceDims);

% Define expected value
expVal = 7;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #40
% Define parameters
gradsFun = @(sampleNr, nGrads, spaceDims) char(100); % Char output
spaceDims = 3;

% Obtain actual value
actVal = checkGradsFun(gradsFun, spaceDims);

% Define expected value
expVal = 7;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #41
% Define parameters
gradsFun = @(sampleNr, nGrads, spaceDims) string(); % String output
spaceDims = 2;

% Obtain actual value
actVal = checkGradsFun(gradsFun, spaceDims);

% Define expected value
expVal = 7;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #42
% Define parameters
gradsFun = @(sampleNr, nGrads, spaceDims) string(); % String output
spaceDims = 3;

% Obtain actual value
actVal = checkGradsFun(gradsFun, spaceDims);

% Define expected value
expVal = 7;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #43
% Define parameters
gradsFun = @(sampleNr, nGrads, spaceDims) struct(); % Struct output
spaceDims = 2;

% Obtain actual value
actVal = checkGradsFun(gradsFun, spaceDims);

% Define expected value
expVal = 7;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #44
% Define parameters
gradsFun = @(sampleNr, nGrads, spaceDims) struct(); % Struct output
spaceDims = 3;

% Obtain actual value
actVal = checkGradsFun(gradsFun, spaceDims);

% Define expected value
expVal = 7;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #45
% Define parameters
gradsFun = @(sampleNr, nGrads, spaceDims) {''}; % Cell output
spaceDims = 2;

% Obtain actual value
actVal = checkGradsFun(gradsFun, spaceDims);

% Define expected value
expVal = 7;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #46
% Define parameters
gradsFun = @(sampleNr, nGrads, spaceDims) {''}; % Cell output
spaceDims = 3;

% Obtain actual value
actVal = checkGradsFun(gradsFun, spaceDims);

% Define expected value
expVal = 7;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #47
% Define parameters
gradsFun = @(sampleNr, nGrads, spaceDims) table(0); % Table output
spaceDims = 2;

% Obtain actual value
actVal = checkGradsFun(gradsFun, spaceDims);

% Define expected value
expVal = 7;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #48
% Define parameters
gradsFun = @(sampleNr, nGrads, spaceDims) table(0); % Table output
spaceDims = 3;

% Obtain actual value
actVal = checkGradsFun(gradsFun, spaceDims);

% Define expected value
expVal = 7;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #49
% Define parameters
gradsFun = @(sampleNr, nGrads, spaceDims) @(sampleNr, nGrads, spaceDims) sampleNr; % Function handle output
spaceDims = 2;

% Obtain actual value
actVal = checkGradsFun(gradsFun, spaceDims);

% Define expected value
expVal = 7;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #50
% Define parameters
gradsFun = @(sampleNr, nGrads, spaceDims) @(sampleNr, nGrads, spaceDims) sampleNr; % Function handle output
spaceDims = 3;

% Obtain actual value
actVal = checkGradsFun(gradsFun, spaceDims);

% Define expected value
expVal = 7;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #51
% Define parameters
gradsFun = @(sampleNr, nGrads, spaceDims) []; % Empty output
spaceDims = 2;

% Obtain actual value
actVal = checkGradsFun(gradsFun, spaceDims);

% Define expected value
expVal = 9;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #52
% Define parameters
gradsFun = @(sampleNr, nGrads, spaceDims) []; % Empty output
spaceDims = 3;

% Obtain actual value
actVal = checkGradsFun(gradsFun, spaceDims);

% Define expected value
expVal = 9;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #53
% Define parameters
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(1); % Scalar output
spaceDims = 2;

% Obtain actual value
actVal = checkGradsFun(gradsFun, spaceDims);

% Define expected value
expVal = 11;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #54
% Define parameters
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(1); % Scalar output
spaceDims = 3;

% Obtain actual value
actVal = checkGradsFun(gradsFun, spaceDims);

% Define expected value
expVal = 11;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #55
% Define parameters
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(3, 3, 3, 3); % Rank-four tensor output
spaceDims = 2;

% Obtain actual value
actVal = checkGradsFun(gradsFun, spaceDims);

% Define expected value
expVal = 11;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');

%% Test actual output #56
% Define parameters
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(3, 3, 3, 3); % Rank-four tensor output
spaceDims = 3;

% Obtain actual value
actVal = checkGradsFun(gradsFun, spaceDims);

% Define expected value
expVal = 11;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output');
