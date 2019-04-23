% Test modStats()

%% Test valid input #1
% Define parameters
fun = @(G) G;

% Obtain actual pass state
try
    modStats(fun);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = true;

% Test
assert(actPass == expPass, 'Refusing valid input.');

%% Test valid input #2
% Define parameters
fun = @(G, S, W, I1, I2, I3, I4, I5, I6) G;

% Obtain actual pass state
try
    modStats(fun);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = true;

% Test
assert(actPass == expPass, 'Refusing valid input.');

%% Test valid input #3
% Define parameters
fun = @(G, S, W, I1, I2, I3, I4, I5, I6) I6;

% Obtain actual pass state
try
    modStats(fun);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = true;

% Test
assert(actPass == expPass, 'Refusing valid input.');

%% Test valid input #4
% Define parameters
fun = 'nueVS';

% Obtain actual pass state
try
    modStats(fun);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = true;

% Test
assert(actPass == expPass, 'Refusing valid input.');

%% Test valid input #5
% Define parameters
fun = @(G) G;
precision = 1;

% Obtain actual pass state
try
    modStats(fun, precision);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = true;

%% Test valid input #6
% Define parameters
fun = @(G) G;
precision = 1;
nSamples = [];

% Obtain actual pass state
try
    modStats(fun, precision, nSamples);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = true;

% Test
assert(actPass == expPass, 'Refusing valid input.');

%% Test valid input #7
% Define parameters
fun = @(G) G;
precision = 1;
nSamples = 2;

% Obtain actual pass state
try
    modStats(fun, precision, nSamples);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = true;

% Test
assert(actPass == expPass, 'Refusing valid input.');

%% Test valid input #8
% Define parameters
fun = @(G) G;
precision = 1;
nSamples = 2;
nGrads = [];

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = true;

% Test
assert(actPass == expPass, 'Refusing valid input.');

%% Test valid input #9
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = true;

% Test
assert(actPass == expPass, 'Refusing valid input.');

%% Test valid input #10
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 2;

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = true;

% Test
assert(actPass == expPass, 'Refusing valid input.');

%% Test valid input #11
% Define parameters
fun = @(G) G;
precision = 1;
nSamples = 2;
nGrads = 1;

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = true;

% Test
assert(actPass == expPass, 'Refusing valid input.');

%% Test valid input #12
% Define parameters
fun = @(G) G;
precision = 1;
nSamples = 2;
nGrads = 2;

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = true;

% Test
assert(actPass == expPass, 'Refusing valid input.');

%% Test valid input #13
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = [];

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = true;

% Test
assert(actPass == expPass, 'Refusing valid input.');

%% Test valid input #14
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = '';

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = true;

% Test
assert(actPass == expPass, 'Refusing valid input.');

%% Test valid input #15
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = 'unifMats';

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = true;

% Test
assert(actPass == expPass, 'Refusing valid input.');

%% Test valid input #16
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = 'normMats';

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = true;

% Test
assert(actPass == expPass, 'Refusing valid input.');

%% Test valid input #17
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(spaceDims, spaceDims, nGrads);

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = true;

% Test
assert(actPass == expPass, 'Refusing valid input.');

%% Test valid input #18
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(spaceDims, spaceDims, nGrads);
spaceDims = [];

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = true;

% Test
assert(actPass == expPass, 'Refusing valid input.');

%% Test valid input #19
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(spaceDims, spaceDims, nGrads);
spaceDims = 2;

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = true;

% Test
assert(actPass == expPass, 'Refusing valid input.');

%% Test valid input #20
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(spaceDims, spaceDims, nGrads);
spaceDims = 3;

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = true;

% Test
assert(actPass == expPass, 'Refusing valid input.');

%% Test valid input #21
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(spaceDims, spaceDims, nGrads);
spaceDims = 2;
flowDims = 1;

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = true;

% Test
assert(actPass == expPass, 'Refusing valid input.');

%% Test valid input #22
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(spaceDims, spaceDims, nGrads);
spaceDims = 2;
flowDims = 2;

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = true;

% Test
assert(actPass == expPass, 'Refusing valid input.');

%% Test valid input #23
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(spaceDims, spaceDims, nGrads);
spaceDims = 2;
flowDims =  1 : 2;

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = true;

% Test
assert(actPass == expPass, 'Refusing valid input.');

%% Test valid input #24
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(spaceDims, spaceDims, nGrads);
spaceDims = 2;
flowDims = (1 : 2)';

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = true;

% Test
assert(actPass == expPass, 'Refusing valid input.');

%% Test valid input #25
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(spaceDims, spaceDims, nGrads);
spaceDims = 3;
flowDims = 1;

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = true;

% Test
assert(actPass == expPass, 'Refusing valid input.');

%% Test valid input #26
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(spaceDims, spaceDims, nGrads);
spaceDims = 3;
flowDims = 2;

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = true;

% Test
assert(actPass == expPass, 'Refusing valid input.');

%% Test valid input #27
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(spaceDims, spaceDims, nGrads);
spaceDims = 3;
flowDims = 3;

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = true;

% Test
assert(actPass == expPass, 'Refusing valid input.');

%% Test valid input #28
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(spaceDims, spaceDims, nGrads);
spaceDims = 3;
flowDims = [1, 2];

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = true;

% Test
assert(actPass == expPass, 'Refusing valid input.');

%% Test valid input #29
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(spaceDims, spaceDims, nGrads);
spaceDims = 3;
flowDims = [1, 2]';

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = true;

% Test
assert(actPass == expPass, 'Refusing valid input.');

%% Test valid input #30
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(spaceDims, spaceDims, nGrads);
spaceDims = 3;
flowDims = [1, 3];

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = true;

% Test
assert(actPass == expPass, 'Refusing valid input.');

%% Test valid input #31
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(spaceDims, spaceDims, nGrads);
spaceDims = 3;
flowDims = [1, 3]';

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = true;

% Test
assert(actPass == expPass, 'Refusing valid input.');

%% Test valid input #32
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(spaceDims, spaceDims, nGrads);
spaceDims = 3;
flowDims = [2, 3];

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = true;

% Test
assert(actPass == expPass, 'Refusing valid input.');

%% Test valid input #33
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(spaceDims, spaceDims, nGrads);
spaceDims = 3;
flowDims = [2, 3]';

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = true;

% Test
assert(actPass == expPass, 'Refusing valid input.');

%% Test valid input #34
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(spaceDims, spaceDims, nGrads);
spaceDims = 3;
flowDims =  1 : 3;

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = true;

% Test
assert(actPass == expPass, 'Refusing valid input.');

%% Test valid input #35
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(spaceDims, spaceDims, nGrads);
spaceDims = 3;
flowDims = (1 : 3)';

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = true;

% Test
assert(actPass == expPass, 'Refusing valid input.');

%% Test valid input #36
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(spaceDims, spaceDims, nGrads);
spaceDims = 2;
flowDims = 1 : 2;
makeIncompr = [];

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = true;

% Test
assert(actPass == expPass, 'Refusing valid input.');

%% Test valid input #37
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(spaceDims, spaceDims, nGrads);
spaceDims = 2;
flowDims = 1 : 2;
makeIncompr = true;

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = true;

% Test
assert(actPass == expPass, 'Refusing valid input.');

%% Test valid input #38
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(spaceDims, spaceDims, nGrads);
spaceDims = 2;
flowDims = 1 : 2;
makeIncompr = false;

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = true;

% Test
assert(actPass == expPass, 'Refusing valid input.');

%% Test valid input #39
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(spaceDims, spaceDims, nGrads);
spaceDims = 2;
flowDims = 1 : 2;
makeIncompr = false;
checkIncompr = [];

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = true;

% Test
assert(actPass == expPass, 'Refusing valid input.');

%% Test valid input #40
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(spaceDims, spaceDims, nGrads);
spaceDims = 2;
flowDims = 1 : 2;
makeIncompr = false;
checkIncompr = true;

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = true;

% Test
assert(actPass == expPass, 'Refusing valid input.');

%% Test valid input #41
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(spaceDims, spaceDims, nGrads);
spaceDims = 2;
flowDims = 1 : 2;
makeIncompr = false;
checkIncompr = false;

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = true;

% Test
assert(actPass == expPass, 'Refusing valid input.');

%% TODO: Test valid input with shiftAvg

%% Test invalid input #1
% Define parameters
fun = []; % Empty

% Obtain actual pass state
try
    modStats(fun);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #2
% Define parameters
fun = ''; % Empty

% Obtain actual pass state
try
    modStats(fun);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #3
% Define parameters
fun = 10; % Double

% Obtain actual pass state
try
    modStats(fun);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #4
% Define parameters
fun = true; % Bool

% Obtain actual pass state
try
    modStats(fun);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #5
% Define parameters
fun = char(100); % Char

% Obtain actual pass state
try
    modStats(fun);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #6
% Define parameters
fun = string(); % String

% Obtain actual pass state
try
    modStats(fun);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #7
% Define parameters
fun = struct(); % Struct

% Obtain actual pass state
try
    modStats(fun);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #8
% Define parameters
fun = {''}; % Cell

% Obtain actual pass state
try
    modStats(fun);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #9
% Define parameters
fun = table(0); % Table

% Obtain actual pass state
try
    modStats(fun);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #10
% Define parameters
fun = 'nonExistingFunctionName'; % Nonexisting function name

% Obtain actual pass state
try
    modStats(fun);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #11
% Define parameters
fun = 'emptyScript'; % Nonevaluable script file

% Obtain actual pass state
try
    modStats(fun);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #12
% Define parameters
fun = @() 1; % Zero input arguments

% Obtain actual pass state
try
    modStats(fun);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #13
% Define parameters
fun = @(a, b, c, d, e, f, g, h, i, j) 1; % Ten input arguments

% Obtain actual pass state
try
    modStats(fun);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #14
% Define parameters
fun = @(varargin) 1; % Variable number of input arguments

% Obtain actual pass state
try
    modStats(fun);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #15
% Define parameters
fun = @(G, S) zeros( size(G) ) + zeros( size(S) + 2 ); % Invalid operation

% Obtain actual pass state
try
    modStats(fun);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #16
% Define parameters
fun = @(G) true; % Bool output

% Obtain actual pass state
try
    modStats(fun);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #17
% Define parameters
fun = @(G) char(100); % Char output

% Obtain actual pass state
try
    modStats(fun);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #18
% Define parameters
fun = @(G) string(); % String output

% Obtain actual pass state
try
    modStats(fun);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #19
% Define parameters
fun = @(G) struct(); % Struct output

% Obtain actual pass state
try
    modStats(fun);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #20
% Define parameters
fun = @(G) {''}; % Cell output

% Obtain actual pass state
try
    modStats(fun);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #21
% Define parameters
fun = @(G) table(0); % Table output

% Obtain actual pass state
try
    modStats(fun);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #22
% Define parameters
fun = @(G) @(G) G; % Function handle output

% Obtain actual pass state
try
    modStats(fun);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #23
% Define parameters
fun = @(G) []; % Empty output

% Obtain actual pass state
try
    modStats(fun);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #24
% Define parameters
fun = @(G) zeros(3, 3, 3); % Rank-three tensor output

% Obtain actual pass state
try
    modStats(fun);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #25
% Define parameters
fun = @(G) zeros(3, 3, 3, 3); % Rank-four tensor output

% Obtain actual pass state
try
    modStats(fun);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #26
% Define parameters
fun = @(G) G;
precision = 0; % Zero (invalid in combination with empty nGrads)

% Obtain actual pass state
try
    modStats(fun, precision);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #27
% Define parameters
fun = @(G) G;
precision = true; % Bool

% Obtain actual pass state
try
    modStats(fun, precision);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #28
% Define parameters
fun = @(G) G;
precision = char(100); % Char

% Obtain actual pass state
try
    modStats(fun, precision);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #29
% Define parameters
fun = @(G) G;
precision = string(); % String

% Obtain actual pass state
try
    modStats(fun, precision);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #30
% Define parameters
fun = @(G) G;
precision = struct(); % Struct

% Obtain actual pass state
try
    modStats(fun, precision);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #31
% Define parameters
fun = @(G) G;
precision = {''}; % Cell

% Obtain actual pass state
try
    modStats(fun, precision);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #32
% Define parameters
fun = @(G) G;
precision = table(0); % Table

% Obtain actual pass state
try
    modStats(fun, precision);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #33
% Define parameters
fun = @(G) G;
precision = zeros(2, 2); % Matrix

% Obtain actual pass state
try
    modStats(fun, precision);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #34
% Define parameters
fun = @(G) G;
precision = zeros(3, 3, 3); % Rank-three tensor

% Obtain actual pass state
try
    modStats(fun, precision);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #35
% Define parameters
fun = @(G) G;
precision = -7.5; % Negative double

% Obtain actual pass state
try
    modStats(fun, precision);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #36
% Define parameters
fun = @(G) G;
precision = -10; % Negative double

% Obtain actual pass state
try
    modStats(fun, precision);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #37
% Define parameters
fun = @(G) G;
precision = 1;
nSamples = true; % Bool

% Obtain actual pass state
try
    modStats(fun, precision, nSamples);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #38
% Define parameters
fun = @(G) G;
precision = 1;
nSamples = char(100); % Char

% Obtain actual pass state
try
    modStats(fun, precision, nSamples);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #39
% Define parameters
fun = @(G) G;
precision = 1;
nSamples = string(); % String

% Obtain actual pass state
try
    modStats(fun, precision, nSamples);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #40
% Define parameters
fun = @(G) G;
precision = 1;
nSamples = struct(); % Struct

% Obtain actual pass state
try
    modStats(fun, precision, nSamples);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #41
% Define parameters
fun = @(G) G;
precision = 1;
nSamples = {''}; % Cell

% Obtain actual pass state
try
    modStats(fun, precision, nSamples);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #42
% Define parameters
fun = @(G) G;
precision = 1;
nSamples = table(0); % Table

% Obtain actual pass state
try
    modStats(fun, precision, nSamples);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #43
% Define parameters
fun = @(G) G;
precision = 1;
nSamples = zeros(2, 2); % Matrix

% Obtain actual pass state
try
    modStats(fun, precision, nSamples);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #44
% Define parameters
fun = @(G) G;
precision = 1;
nSamples = zeros(3, 3, 3); % Rank-three tensor

% Obtain actual pass state
try
    modStats(fun, precision, nSamples);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #45
% Define parameters
fun = @(G) G;
precision = 1;
nSamples = -7.5; % Negative double

% Obtain actual pass state
try
    modStats(fun, precision, nSamples);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #46
% Define parameters
fun = @(G) G;
precision = 1;
nSamples = -10; % Negative double

% Obtain actual pass state
try
    modStats(fun, precision, nSamples);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #47
% Define parameters
fun = @(G) G;
precision = 1;
nSamples = 7.5; % Noninteger double

% Obtain actual pass state
try
    modStats(fun, precision, nSamples);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #48
% Define parameters
fun = @(G) G;
precision = 0; % Zero (invalid in combination with empty nGrads)
nSamples = 2;
nGrads = []; % Empty (invalid in combination with zero precision)

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #49
% Define parameters
fun = @(G) G;
precision = 1;
nSamples = 2;
nGrads = true; % Bool

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #50
% Define parameters
fun = @(G) G;
precision = 1;
nSamples = 2;
nGrads = char(100); % Char

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #51
% Define parameters
fun = @(G) G;
precision = 1;
nSamples = 2;
nGrads = string(); % String

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #52
% Define parameters
fun = @(G) G;
precision = 1;
nSamples = 2;
nGrads = struct(); % Struct

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #53
% Define parameters
fun = @(G) G;
precision = 1;
nSamples = 2;
nGrads = {''}; % Cell

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #54
% Define parameters
fun = @(G) G;
precision = 1;
nSamples = 2;
nGrads = table(0); % Table

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #55
% Define parameters
fun = @(G) G;
precision = 1;
nSamples = 2;
nGrads = zeros(2, 2); % Matrix

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #56
% Define parameters
fun = @(G) G;
precision = 1;
nSamples = 2;
nGrads = zeros(3, 3, 3); % Rank-three tensor

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #57
% Define parameters
fun = @(G) G;
precision = 1;
nSamples = 2;
nGrads = -7.5; % Negative double

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #58
% Define parameters
fun = @(G) G;
precision = 1;
nSamples = 2;
nGrads = -10; % Negative double

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #59
% Define parameters
fun = @(G) G;
precision = 1;
nSamples = 2;
nGrads = 7.5; % Noninteger double

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #60
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = 10; % Double

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #61
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = true; % Bool

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #62
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = char(100); % Char

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #63
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = string(); % String

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #64
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = struct(); % Struct

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #65
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = {''}; % Cell

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #66
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = table(0); % Table

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #67
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = 'nonExistingFunctionName'; % Nonexisting function name

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #68
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = 'emptyScript'; % Nonevaluable script file

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #69
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = @() 1; % Zero input arguments

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #70
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = @(a, b, c, d, e, f, g, h, i, j) 1; % Ten input arguments

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #71
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = @(varargin) 1; % Variable number of input arguments

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #72
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(spaceDims + 1, spaceDims + 1) + zeros(spaceDims + 2, spaceDims + 2); % Invalid operation

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #73
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = @(sampleNr, nGrads, spaceDims) true; % Bool output

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #74
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = @(sampleNr, nGrads, spaceDims) char(100); % Char output

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #75
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = @(sampleNr, nGrads, spaceDims) string(); % String output

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #76
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = @(sampleNr, nGrads, spaceDims) struct(); % Struct output

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #77
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = @(sampleNr, nGrads, spaceDims) {''}; % Cell output

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #78
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = @(sampleNr, nGrads, spaceDims) table(0); % Table output

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #79
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = @(sampleNr, nGrads, spaceDims) @(sampleNr, nGrads, spaceDims) sampleNr; % Function handle output

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #80
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = @(sampleNr, nGrads, spaceDims) []; % Empty output

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #81
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(1); % Scalar output

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #82
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(3, 3, 3, 3); % Rank-four tensor output

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #83
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(spaceDims, spaceDims, nGrads);
spaceDims = true; % Bool

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #84
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(spaceDims, spaceDims, nGrads);
spaceDims = char(100); % Char

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #85
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(spaceDims, spaceDims, nGrads);
spaceDims = string(); % String

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #86
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(spaceDims, spaceDims, nGrads);
spaceDims = struct(); % Struct

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #87
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(spaceDims, spaceDims, nGrads);
spaceDims = {''}; % Cell

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #88
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(spaceDims, spaceDims, nGrads);
spaceDims = table(0); % Table

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #89
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(spaceDims, spaceDims, nGrads);
spaceDims = zeros(2, 2); % Matrix

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #90
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(spaceDims, spaceDims, nGrads);
spaceDims = zeros(3, 3, 3); % Rank-three tensor

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #91
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(spaceDims, spaceDims, nGrads);
spaceDims = -7.5; % Negative double

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #92
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(spaceDims, spaceDims, nGrads);
spaceDims = -10; % Negative double

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #93
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(spaceDims, spaceDims, nGrads);
spaceDims = 7.5; % Noninteger double

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #94
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(spaceDims, spaceDims, nGrads);
spaceDims = 2;
flowDims = true; % Bool

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #95
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(spaceDims, spaceDims, nGrads);
spaceDims = 2;
flowDims = char(100); % Char

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #96
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(spaceDims, spaceDims, nGrads);
spaceDims = 2;
flowDims = string(); % String

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #97
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(spaceDims, spaceDims, nGrads);
spaceDims = 2;
flowDims = struct(); % Struct

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #98
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(spaceDims, spaceDims, nGrads);
spaceDims = 2;
flowDims = {''}; % Cell

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #99
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(spaceDims, spaceDims, nGrads);
spaceDims = 2;
flowDims = table(0); % Table

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #100
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(spaceDims, spaceDims, nGrads);
spaceDims = 2;
flowDims = zeros(2, 2); % Matrix

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #101
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(spaceDims, spaceDims, nGrads);
spaceDims = 2;
flowDims = zeros(3, 3, 3); % Rank-three tensor

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #102
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(spaceDims, spaceDims, nGrads);
spaceDims = 2;
flowDims = -7.5; % Negative double

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #103
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(spaceDims, spaceDims, nGrads);
spaceDims = 2;
flowDims = -10; % Negative double

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #104
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(spaceDims, spaceDims, nGrads);
spaceDims = 2;
flowDims = 7.5; % Noninteger double

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #105
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(spaceDims, spaceDims, nGrads);
spaceDims = 2;
flowDims = 0; % Zero

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #106
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(spaceDims, spaceDims, nGrads);
spaceDims = 2;
flowDims =  0 : 2; % Zero

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #107
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(spaceDims, spaceDims, nGrads);
spaceDims = 2;
flowDims = (0 : 2)'; % Zero

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #108
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(spaceDims, spaceDims, nGrads);
spaceDims = 2;
flowDims = 3; % Larger than spaceDims

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #109
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(spaceDims, spaceDims, nGrads);
spaceDims = 2;
flowDims =  1 : 3; % Larger than spaceDims

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #110
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(spaceDims, spaceDims, nGrads);
spaceDims = 2;
flowDims = (1 : 3)'; % Larger than spaceDims

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #111
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(spaceDims, spaceDims, nGrads);
spaceDims = 3;
flowDims = true; % Bool

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #112
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(spaceDims, spaceDims, nGrads);
spaceDims = 3;
flowDims = char(100); % Char

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #113
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(spaceDims, spaceDims, nGrads);
spaceDims = 3;
flowDims = string(); % String

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #114
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(spaceDims, spaceDims, nGrads);
spaceDims = 3;
flowDims = struct(); % Struct

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #115
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(spaceDims, spaceDims, nGrads);
spaceDims = 3;
flowDims = {''}; % Cell

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #116
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(spaceDims, spaceDims, nGrads);
spaceDims = 3;
flowDims = table(0); % Table

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #117
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(spaceDims, spaceDims, nGrads);
spaceDims = 3;
flowDims = zeros(2, 2); % Matrix

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #118
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(spaceDims, spaceDims, nGrads);
spaceDims = 3;
flowDims = zeros(3, 3, 3); % Rank-three tensor

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #119
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(spaceDims, spaceDims, nGrads);
spaceDims = 3;
flowDims = -7.5; % Negative double

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #120
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(spaceDims, spaceDims, nGrads);
spaceDims = 3;
flowDims = -10; % Negative double

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #121
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(spaceDims, spaceDims, nGrads);
spaceDims = 3;
flowDims = 7.5; % Noninteger double

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #122
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(spaceDims, spaceDims, nGrads);
spaceDims = 3;
flowDims = 0; % Zero

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #123
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(spaceDims, spaceDims, nGrads);
spaceDims = 3;
flowDims =  0 : 2; % Zero

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #124
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(spaceDims, spaceDims, nGrads);
spaceDims = 3;
flowDims = (0 : 2)'; % Zero

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #125
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(spaceDims, spaceDims, nGrads);
spaceDims = 3;
flowDims = 4; % Larger than spaceDims

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #126
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(spaceDims, spaceDims, nGrads);
spaceDims = 3;
flowDims =  1 : 4; % Larger than spaceDims

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #127
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(spaceDims, spaceDims, nGrads);
spaceDims = 3;
flowDims = (1 : 4)'; % Larger than spaceDims

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #128
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(spaceDims, spaceDims, nGrads);
spaceDims = 2;
flowDims = 1 : 2;
makeIncompr = char(100); % Char

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #129
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(spaceDims, spaceDims, nGrads);
spaceDims = 2;
flowDims = 1 : 2;
makeIncompr = string(); % String

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #130
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(spaceDims, spaceDims, nGrads);
spaceDims = 2;
flowDims = 1 : 2;
makeIncompr = struct(); % Struct

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #131
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(spaceDims, spaceDims, nGrads);
spaceDims = 2;
flowDims = 1 : 2;
makeIncompr = {''}; % Cell

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #132
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(spaceDims, spaceDims, nGrads);
spaceDims = 2;
flowDims = 1 : 2;
makeIncompr = table(0); % Table

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #133
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(spaceDims, spaceDims, nGrads);
spaceDims = 2;
flowDims = 1 : 2;
makeIncompr = 10; % Double

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #134
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(spaceDims, spaceDims, nGrads);
spaceDims = 2;
flowDims = 1 : 2;
makeIncompr = false;
checkIncompr = char(100); % Char

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #135
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(spaceDims, spaceDims, nGrads);
spaceDims = 2;
flowDims = 1 : 2;
makeIncompr = false;
checkIncompr = string(); % String

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #136
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(spaceDims, spaceDims, nGrads);
spaceDims = 2;
flowDims = 1 : 2;
makeIncompr = false;
checkIncompr = struct(); % Struct

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #137
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(spaceDims, spaceDims, nGrads);
spaceDims = 2;
flowDims = 1 : 2;
makeIncompr = false;
checkIncompr = {''}; % Cell

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #138
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(spaceDims, spaceDims, nGrads);
spaceDims = 2;
flowDims = 1 : 2;
makeIncompr = false;
checkIncompr = table(0); % Table

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% Test invalid input #139
% Define parameters
fun = @(G) G;
precision = 0;
nSamples = 2;
nGrads = 1;
gradsFun = @(sampleNr, nGrads, spaceDims) zeros(spaceDims, spaceDims, nGrads);
spaceDims = 2;
flowDims = 1 : 2;
makeIncompr = false;
checkIncompr = 10; % Double

% Obtain actual pass state
try
    modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr);
    actPass = true;
catch
    actPass = false;
end

% Define expected pass state
expPass = false;

% Test
assert(actPass == expPass, 'Accepting invalid input.');

%% TODO: Test invalid input with shiftAvg

%% Test output type #...

%% Test output size #...

%% Test actual output #...