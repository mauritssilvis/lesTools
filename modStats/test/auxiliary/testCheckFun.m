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
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #2
% Define parameters
fun = @(G) G;
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #3
% Define parameters
fun = @(G, S) S;
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #4
% Define parameters
fun = @(G, S) S;
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #5
% Define parameters
fun = @(G, S, W) W;
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #6
% Define parameters
fun = @(G, S, W) W;
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #7
% Define parameters
fun = @(G, S, W, I1) I1;
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #8
% Define parameters
fun = @(G, S, W, I1) I1;
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #9
% Define parameters
fun = @(G, S, W, I1, I2) I2;
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #10
% Define parameters
fun = @(G, S, W, I1, I2) I2;
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #11
% Define parameters
fun = @(G, S, W, I1, I2, I3) I3;
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #12
% Define parameters
fun = @(G, S, W, I1, I2, I3) I3;
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #13
% Define parameters
fun = @(G, S, W, I1, I2, I3, I4) I4;
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #14
% Define parameters
fun = @(G, S, W, I1, I2, I3, I4) I4;
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #15
% Define parameters
fun = @(G, S, W, I1, I2, I3, I4, I5) I5;
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #16
% Define parameters
fun = @(G, S, W, I1, I2, I3, I4, I5) I5;
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #17
% Define parameters
fun = @(G, S, W, I1, I2, I3, I4, I5, I6) G;
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #18
% Define parameters
fun = @(G, S, W, I1, I2, I3, I4, I5, I6) G;
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #19
% Define parameters
fun = @(G, S, W, I1, I2, I3, I4, I5, I6) I6;
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #20
% Define parameters
fun = @(G, S, W, I1, I2, I3, I4, I5, I6) I6;
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #21
% Define parameters
fun = 'nueAMD';
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #22
% Define parameters
fun = 'nueAMD';
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #23
% Define parameters
fun = 'nueQR';
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #24
% Define parameters
fun = 'nueQR';
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #25
% Define parameters
fun = 'nueS3PQ';
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #26
% Define parameters
fun = 'nueS3PQ';
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #27
% Define parameters
fun = 'nueS3PR';
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #28
% Define parameters
fun = 'nueS3PR';
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #29
% Define parameters
fun = 'nueS3QR';
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #30
% Define parameters
fun = 'nueS3QR';
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #31
% Define parameters
fun = 'nueSmagorinsky';
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #32
% Define parameters
fun = 'nueSmagorinsky';
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #33
% Define parameters
fun = 'nueVreman';
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #34
% Define parameters
fun = 'nueVreman';
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #35
% Define parameters
fun = 'nueVS';
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #36
% Define parameters
fun = 'nueVS';
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #37
% Define parameters
fun = 'mueVS';
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #38
% Define parameters
fun = 'mueVS';
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #39
% Define parameters
fun = 'nueWALE';
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #40
% Define parameters
fun = 'nueWALE';
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #41
% Define parameters
fun = []; % Empty
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #42
% Define parameters
fun = []; % Empty
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #43
% Define parameters
fun = ''; % Empty
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #44
% Define parameters
fun = ''; % Empty
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #45
% Define parameters
fun = 10; % Double
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #46
% Define parameters
fun = 10; % Double
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #47
% Define parameters
fun = true; % Bool
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #48
% Define parameters
fun = true; % Bool
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #49
% Define parameters
fun = char(100); % Char
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #50
% Define parameters
fun = char(100); % Char
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #51
% Define parameters
fun = string(); % String
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #52
% Define parameters
fun = string(); % String
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #53
% Define parameters
fun = struct(); % Struct
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #54
% Define parameters
fun = struct(); % Struct
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #55
% Define parameters
fun = {''}; % Cell
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #56
% Define parameters
fun = {''}; % Cell
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #57
% Define parameters
fun = table(0); % Table
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #58
% Define parameters
fun = table(0); % Table
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #59
% Define parameters
fun = 'nonExistingFunctionName'; % Nonexisting function name
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #60
% Define parameters
fun = 'nonExistingFunctionName'; % Nonexisting function name
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #61
% Define parameters
fun = 'emptyScript'; % Nonevaluable script file
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #62
% Define parameters
fun = 'emptyScript'; % Nonevaluable script file
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #63
% Define parameters
fun = @() 1; % Zero input arguments
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #64
% Define parameters
fun = @() 1; % Zero input arguments
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #65
% Define parameters
fun = @(a, b, c, d, e, f, g, h, i, j) 1; % Ten input arguments
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #66
% Define parameters
fun = @(a, b, c, d, e, f, g, h, i, j) 1; % Ten input arguments
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #67
% Define parameters
fun = @(varargin) 1; % Variable number of input arguments
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #68
% Define parameters
fun = @(varargin) 1; % Variable number of input arguments
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #69
% Define parameters
fun = @(G, S) zeros( size(G) ) + zeros( size(S) + 2 ); % Invalid operation
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #70
% Define parameters
fun = @(G, S) zeros( size(G) ) + zeros( size(S) + 2 ); % Invalid operation
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #71
% Define parameters
fun = @(G) true; % Bool output
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #72
% Define parameters
fun = @(G) true; % Bool output
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #73
% Define parameters
fun = @(G) char(100); % Char output
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #74
% Define parameters
fun = @(G) char(100); % Char output
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #75
% Define parameters
fun = @(G) string(); % String output
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #76
% Define parameters
fun = @(G) string(); % String output
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #77
% Define parameters
fun = @(G) struct(); % Struct output
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #78
% Define parameters
fun = @(G) struct(); % Struct output
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #79
% Define parameters
fun = @(G) {''}; % Cell output
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #80
% Define parameters
fun = @(G) {''}; % Cell output
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #81
% Define parameters
fun = @(G) table(0); % Table output
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #82
% Define parameters
fun = @(G) table(0); % Table output
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #83
% Define parameters
fun = @(G) @(G) G; % Function handle output
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #84
% Define parameters
fun = @(G) @(G) G; % Function handle output
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #85
% Define parameters
fun = @(G) []; % Empty output
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #86
% Define parameters
fun = @(G) []; % Empty output
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #87
% Define parameters
fun = @(G) zeros(3, 3, 3); % Rank-three tensor output
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #88
% Define parameters
fun = @(G) zeros(3, 3, 3); % Rank-three tensor output
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #89
% Define parameters
fun = @(G) zeros(3, 3, 3, 3); % Rank-four tensor output
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

%% Test output type #90
% Define parameters
fun = @(G) zeros(3, 3, 3, 3); % Rank-four tensor output
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Define expected type
expType = 'double';

% Test
assert( isa(val, expType), ['Output not of expected type ''', expType, '''.'] );

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
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

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
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

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
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

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
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

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
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

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
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

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
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

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
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

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
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

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
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

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
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

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
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

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
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

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
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

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
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

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
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

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
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

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
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

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
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

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
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #21
% Define parameters
fun = 'nueAMD';
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #22
% Define parameters
fun = 'nueAMD';
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #23
% Define parameters
fun = 'nueQR';
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #24
% Define parameters
fun = 'nueQR';
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #25
% Define parameters
fun = 'nueS3PQ';
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #26
% Define parameters
fun = 'nueS3PQ';
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #27
% Define parameters
fun = 'nueS3PR';
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #28
% Define parameters
fun = 'nueS3PR';
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #29
% Define parameters
fun = 'nueS3QR';
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #30
% Define parameters
fun = 'nueS3QR';
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #31
% Define parameters
fun = 'nueSmagorinsky';
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #32
% Define parameters
fun = 'nueSmagorinsky';
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #33
% Define parameters
fun = 'nueVreman';
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #34
% Define parameters
fun = 'nueVreman';
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #35
% Define parameters
fun = 'nueVS';
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #36
% Define parameters
fun = 'nueVS';
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #37
% Define parameters
fun = 'mueVS';
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #38
% Define parameters
fun = 'mueVS';
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #39
% Define parameters
fun = 'nueWALE';
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #40
% Define parameters
fun = 'nueWALE';
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #41
% Define parameters
fun = []; % Empty
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #42
% Define parameters
fun = []; % Empty
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #43
% Define parameters
fun = ''; % Empty
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #44
% Define parameters
fun = ''; % Empty
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #45
% Define parameters
fun = 10; % Double
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #46
% Define parameters
fun = 10; % Double
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #47
% Define parameters
fun = true; % Bool
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #48
% Define parameters
fun = true; % Bool
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #49
% Define parameters
fun = char(100); % Char
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #50
% Define parameters
fun = char(100); % Char
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #51
% Define parameters
fun = string(); % String
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #52
% Define parameters
fun = string(); % String
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #53
% Define parameters
fun = struct(); % Struct
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #54
% Define parameters
fun = struct(); % Struct
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #55
% Define parameters
fun = {''}; % Cell
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #56
% Define parameters
fun = {''}; % Cell
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #57
% Define parameters
fun = table(0); % Table
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #58
% Define parameters
fun = table(0); % Table
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #59
% Define parameters
fun = 'nonExistingFunctionName'; % Nonexisting function name
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #60
% Define parameters
fun = 'nonExistingFunctionName'; % Nonexisting function name
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #61
% Define parameters
fun = 'emptyScript'; % Nonevaluable script file
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #62
% Define parameters
fun = 'emptyScript'; % Nonevaluable script file
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #63
% Define parameters
fun = @() 1; % Zero input arguments
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #64
% Define parameters
fun = @() 1; % Zero input arguments
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #65
% Define parameters
fun = @(a, b, c, d, e, f, g, h, i, j) 1; % Ten input arguments
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #66
% Define parameters
fun = @(a, b, c, d, e, f, g, h, i, j) 1; % Ten input arguments
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #67
% Define parameters
fun = @(varargin) 1; % Variable number of input arguments
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #68
% Define parameters
fun = @(varargin) 1; % Variable number of input arguments
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #69
% Define parameters
fun = @(G, S) zeros( size(G) ) + zeros( size(S) + 2 ); % Invalid operation
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #70
% Define parameters
fun = @(G, S) zeros( size(G) ) + zeros( size(S) + 2 ); % Invalid operation
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #71
% Define parameters
fun = @(G) true; % Bool output
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #72
% Define parameters
fun = @(G) true; % Bool output
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #73
% Define parameters
fun = @(G) char(100); % Char output
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #74
% Define parameters
fun = @(G) char(100); % Char output
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #75
% Define parameters
fun = @(G) string(); % String output
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #76
% Define parameters
fun = @(G) string(); % String output
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #77
% Define parameters
fun = @(G) struct(); % Struct output
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #78
% Define parameters
fun = @(G) struct(); % Struct output
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #79
% Define parameters
fun = @(G) {''}; % Cell output
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #80
% Define parameters
fun = @(G) {''}; % Cell output
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #81
% Define parameters
fun = @(G) table(0); % Table output
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #82
% Define parameters
fun = @(G) table(0); % Table output
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #83
% Define parameters
fun = @(G) @(G) G; % Function handle output
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #84
% Define parameters
fun = @(G) @(G) G; % Function handle output
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #85
% Define parameters
fun = @(G) []; % Empty output
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #86
% Define parameters
fun = @(G) []; % Empty output
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #87
% Define parameters
fun = @(G) zeros(3, 3, 3); % Rank-three tensor output
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #88
% Define parameters
fun = @(G) zeros(3, 3, 3); % Rank-three tensor output
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #89
% Define parameters
fun = @(G) zeros(3, 3, 3, 3); % Rank-four tensor output
spaceDims = 2;

% Obtain value
val = checkFun(fun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test output size #90
% Define parameters
fun = @(G) zeros(3, 3, 3, 3); % Rank-four tensor output
spaceDims = 3;

% Obtain value
val = checkFun(fun, spaceDims);

% Obtain actual size
actSize = [size(val, 1), size(val, 2), size(val, 3)];

% Define expected size
expSize = [1, 1, 1];

% Test
assert( numel( size(val) ) <= numel(expSize) && all(actSize == expSize), 'Output not of expected size.' );

%% Test actual output #1
% Define parameters
fun = @(G) G;
spaceDims = 2;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 0;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #2
% Define parameters
fun = @(G) G;
spaceDims = 3;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 0;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #3
% Define parameters
fun = @(G, S) S;
spaceDims = 2;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 0;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #4
% Define parameters
fun = @(G, S) S;
spaceDims = 3;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 0;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #5
% Define parameters
fun = @(G, S, W) W;
spaceDims = 2;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 0;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #6
% Define parameters
fun = @(G, S, W) W;
spaceDims = 3;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 0;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #7
% Define parameters
fun = @(G, S, W, I1) I1;
spaceDims = 2;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 0;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #8
% Define parameters
fun = @(G, S, W, I1) I1;
spaceDims = 3;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 0;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #9
% Define parameters
fun = @(G, S, W, I1, I2) I2;
spaceDims = 2;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 0;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #10
% Define parameters
fun = @(G, S, W, I1, I2) I2;
spaceDims = 3;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 0;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #11
% Define parameters
fun = @(G, S, W, I1, I2, I3) I3;
spaceDims = 2;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 0;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #12
% Define parameters
fun = @(G, S, W, I1, I2, I3) I3;
spaceDims = 3;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 0;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #13
% Define parameters
fun = @(G, S, W, I1, I2, I3, I4) I4;
spaceDims = 2;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 0;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #14
% Define parameters
fun = @(G, S, W, I1, I2, I3, I4) I4;
spaceDims = 3;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 0;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #15
% Define parameters
fun = @(G, S, W, I1, I2, I3, I4, I5) I5;
spaceDims = 2;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 0;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #16
% Define parameters
fun = @(G, S, W, I1, I2, I3, I4, I5) I5;
spaceDims = 3;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 0;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #17
% Define parameters
fun = @(G, S, W, I1, I2, I3, I4, I5, I6) G;
spaceDims = 2;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 0;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #18
% Define parameters
fun = @(G, S, W, I1, I2, I3, I4, I5, I6) G;
spaceDims = 3;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 0;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #19
% Define parameters
fun = @(G, S, W, I1, I2, I3, I4, I5, I6) I6;
spaceDims = 2;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 0;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #20
% Define parameters
fun = @(G, S, W, I1, I2, I3, I4, I5, I6) I6;
spaceDims = 3;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 0;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #21
% Define parameters
fun = 'nueAMD';
spaceDims = 2;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 0;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #22
% Define parameters
fun = 'nueAMD';
spaceDims = 3;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 0;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #23
% Define parameters
fun = 'nueQR';
spaceDims = 2;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 0;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #24
% Define parameters
fun = 'nueQR';
spaceDims = 3;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 0;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #25
% Define parameters
fun = 'nueS3PQ';
spaceDims = 2;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 0;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #26
% Define parameters
fun = 'nueS3PQ';
spaceDims = 3;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 0;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #27
% Define parameters
fun = 'nueS3PR';
spaceDims = 2;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 0;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #28
% Define parameters
fun = 'nueS3PR';
spaceDims = 3;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 0;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #29
% Define parameters
fun = 'nueS3QR';
spaceDims = 2;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 0;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #30
% Define parameters
fun = 'nueS3QR';
spaceDims = 3;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 0;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #31
% Define parameters
fun = 'nueSmagorinsky';
spaceDims = 2;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 0;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #32
% Define parameters
fun = 'nueSmagorinsky';
spaceDims = 3;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 0;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #33
% Define parameters
fun = 'nueVreman';
spaceDims = 2;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 0;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #34
% Define parameters
fun = 'nueVreman';
spaceDims = 3;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 0;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #35
% Define parameters
fun = 'nueVS';
spaceDims = 2;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 0;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #36
% Define parameters
fun = 'nueVS';
spaceDims = 3;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 0;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #37
% Define parameters
fun = 'mueVS';
spaceDims = 2;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 0;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #38
% Define parameters
fun = 'mueVS';
spaceDims = 3;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 0;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #39
% Define parameters
fun = 'nueWALE';
spaceDims = 2;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 0;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #40
% Define parameters
fun = 'nueWALE';
spaceDims = 3;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 0;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #41
% Define parameters
fun = []; % Empty
spaceDims = 2;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 1;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #42
% Define parameters
fun = []; % Empty
spaceDims = 3;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 1;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #43
% Define parameters
fun = ''; % Empty
spaceDims = 2;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 1;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #44
% Define parameters
fun = ''; % Empty
spaceDims = 3;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 1;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #45
% Define parameters
fun = 10; % Double
spaceDims = 2;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 2;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #46
% Define parameters
fun = 10; % Double
spaceDims = 3;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 2;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #47
% Define parameters
fun = true; % Bool
spaceDims = 2;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 2;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #48
% Define parameters
fun = true; % Bool
spaceDims = 3;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 2;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #49
% Define parameters
fun = char(100); % Char
spaceDims = 2;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 2;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #50
% Define parameters
fun = char(100); % Char
spaceDims = 3;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 2;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #51
% Define parameters
fun = string(); % String
spaceDims = 2;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 2;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #52
% Define parameters
fun = string(); % String
spaceDims = 3;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 2;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #53
% Define parameters
fun = struct(); % Struct
spaceDims = 2;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 2;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #54
% Define parameters
fun = struct(); % Struct
spaceDims = 3;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 2;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #55
% Define parameters
fun = {''}; % Cell
spaceDims = 2;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 2;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #56
% Define parameters
fun = {''}; % Cell
spaceDims = 3;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 2;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #57
% Define parameters
fun = table(0); % Table
spaceDims = 2;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 2;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #58
% Define parameters
fun = table(0); % Table
spaceDims = 3;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 2;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #59
% Define parameters
fun = 'nonExistingFunctionName'; % Nonexisting function name
spaceDims = 2;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 2;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #60
% Define parameters
fun = 'nonExistingFunctionName'; % Nonexisting function name
spaceDims = 3;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 2;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #61
% Define parameters
fun = 'emptyScript'; % Nonevaluable script file
spaceDims = 2;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 3;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #62
% Define parameters
fun = 'emptyScript'; % Nonevaluable script file
spaceDims = 3;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 3;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #63
% Define parameters
fun = @() 1; % Zero input arguments
spaceDims = 2;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 4;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #64
% Define parameters
fun = @() 1; % Zero input arguments
spaceDims = 3;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 4;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #65
% Define parameters
fun = @(a, b, c, d, e, f, g, h, i, j) 1; % Ten input arguments
spaceDims = 2;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 4;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #66
% Define parameters
fun = @(a, b, c, d, e, f, g, h, i, j) 1; % Ten input arguments
spaceDims = 3;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 4;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #67
% Define parameters
fun = @(varargin) 1; % Variable number of input arguments
spaceDims = 2;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 4;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #68
% Define parameters
fun = @(varargin) 1; % Variable number of input arguments
spaceDims = 3;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 4;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #69
% Define parameters
fun = @(G, S) zeros( size(G) ) + zeros( size(S) + 2 ); % Invalid operation
spaceDims = 2;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 5;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #70
% Define parameters
fun = @(G, S) zeros( size(G) ) + zeros( size(S) + 2 ); % Invalid operation
spaceDims = 3;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 5;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #71
% Define parameters
fun = @(G) true; % Bool output
spaceDims = 2;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 7;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #72
% Define parameters
fun = @(G) true; % Bool output
spaceDims = 3;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 7;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #73
% Define parameters
fun = @(G) char(100); % Char output
spaceDims = 2;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 7;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #74
% Define parameters
fun = @(G) char(100); % Char output
spaceDims = 3;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 7;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #75
% Define parameters
fun = @(G) string(); % String output
spaceDims = 2;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 7;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #76
% Define parameters
fun = @(G) string(); % String output
spaceDims = 3;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 7;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #77
% Define parameters
fun = @(G) struct(); % Struct output
spaceDims = 2;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 7;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #78
% Define parameters
fun = @(G) struct(); % Struct output
spaceDims = 3;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 7;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #79
% Define parameters
fun = @(G) {''}; % Cell output
spaceDims = 2;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 7;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #80
% Define parameters
fun = @(G) {''}; % Cell output
spaceDims = 3;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 7;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #81
% Define parameters
fun = @(G) table(0); % Table output
spaceDims = 2;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 7;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #82
% Define parameters
fun = @(G) table(0); % Table output
spaceDims = 3;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 7;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #83
% Define parameters
fun = @(G) @(G) G; % Function handle output
spaceDims = 2;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 7;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #84
% Define parameters
fun = @(G) @(G) G; % Function handle output
spaceDims = 3;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 7;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #85
% Define parameters
fun = @(G) []; % Empty output
spaceDims = 2;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 9;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #86
% Define parameters
fun = @(G) []; % Empty output
spaceDims = 3;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 9;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #87
% Define parameters
fun = @(G) zeros(3, 3, 3); % Rank-three tensor output
spaceDims = 2;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 11;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #88
% Define parameters
fun = @(G) zeros(3, 3, 3); % Rank-three tensor output
spaceDims = 3;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 11;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #89
% Define parameters
fun = @(G) zeros(3, 3, 3, 3); % Rank-four tensor output
spaceDims = 2;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 11;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );

%% Test actual output #90
% Define parameters
fun = @(G) zeros(3, 3, 3, 3); % Rank-four tensor output
spaceDims = 3;

% Obtain actual value
actVal = checkFun(fun, spaceDims);

% Define expected value
expVal = 11;

% Test
assert( all( all( all(actVal == expVal) ) ), 'Unexpected output.' );
