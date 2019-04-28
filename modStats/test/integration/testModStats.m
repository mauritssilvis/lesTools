% Test modStats()

%% Test actual output #1
% Define parameters
fun = 'dissSmagorinsky';
precision = 0;
nSamples = 10;
nGrads = 10;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 3.04995903782450

% Define tolerance
tol = 0.778349650787433
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #2
% Define parameters
fun = 'dissSmagorinsky';
precision = 0;
nSamples = 10;
nGrads = 10;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 16.5791796031870

% Define tolerance
tol = 5.92089784513709
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #3
% Define parameters
fun = 'dissSmagorinsky';
precision = 0;
nSamples = 10;
nGrads = 100;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 3.38639486158652

% Define tolerance
tol = 0.289181403754396
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #4
% Define parameters
fun = 'dissSmagorinsky';
precision = 0;
nSamples = 10;
nGrads = 100;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 19.0386695144710

% Define tolerance
tol = 1.73963621637170
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #5
% Define parameters
fun = 'dissSmagorinsky';
precision = 0;
nSamples = 10;
nGrads = 1000;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 3.35594589419381

% Define tolerance
tol = 0.0527009068689602
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #6
% Define parameters
fun = 'dissSmagorinsky';
precision = 0;
nSamples = 10;
nGrads = 1000;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 18.0009934484760

% Define tolerance
tol = 0.633487487383415
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #7
% Define parameters
fun = 'dissSmagorinsky';
precision = 0;
nSamples = 10;
nGrads = 10000;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 3.34762857655517

% Define tolerance
tol = 0.0266634206437538
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #8
% Define parameters
fun = 'dissSmagorinsky';
precision = 0;
nSamples = 10;
nGrads = 10000;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 17.9714855688177

% Define tolerance
tol = 0.207692703835888
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #9
% Define parameters
fun = 'dissSmagorinsky';
precision = 0;
nSamples = 10;
nGrads = 100000;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 3.34444852024638

% Define tolerance
tol = 0.00979142513164642
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #10
% Define parameters
fun = 'dissSmagorinsky';
precision = 0;
nSamples = 10;
nGrads = 100000;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 18.0412136459669

% Define tolerance
tol = 0.0545972478159691
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #11
% Define parameters
fun = 'dissSmagorinsky';
precision = 0;
nSamples = 10;
nGrads = 1000000;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 3.34258212418411

% Define tolerance
tol = 0.00158044042396519
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #12
% Define parameters
fun = 'dissSmagorinsky';
precision = 0;
nSamples = 10;
nGrads = 1000000;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 18.0561981336723

% Define tolerance
tol = 0.0153651993227179
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #13
% Define parameters
fun = 'dissSmagorinsky';
precision = 0;
nSamples = 10;
nGrads = 10000000;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 3.34203368781265

% Define tolerance
tol = 0.000704290264811389
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #14
% Define parameters
fun = 'dissSmagorinsky';
precision = 0;
nSamples = 10;
nGrads = 10000000;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 18.0548830552385

% Define tolerance
tol = 0.00524075299975877
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #15
% Define parameters
fun = 'dissSmagorinsky';
precision = 0;
nSamples = 100;
nGrads = 10;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 3.34382618371445

% Define tolerance
tol = 0.871182478753965
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #16
% Define parameters
fun = 'dissSmagorinsky';
precision = 0;
nSamples = 100;
nGrads = 10;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 17.8576766761446

% Define tolerance
tol = 5.37219972907786
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #17
% Define parameters
fun = 'dissSmagorinsky';
precision = 0;
nSamples = 100;
nGrads = 100;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 3.30453724967723

% Define tolerance
tol = 0.253958603399886
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #18
% Define parameters
fun = 'dissSmagorinsky';
precision = 0;
nSamples = 100;
nGrads = 100;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 18.1760289023920

% Define tolerance
tol = 1.66797551321437
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #19
% Define parameters
fun = 'dissSmagorinsky';
precision = 0;
nSamples = 100;
nGrads = 1000;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 3.34991605294622

% Define tolerance
tol = 0.0805027873615413
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #20
% Define parameters
fun = 'dissSmagorinsky';
precision = 0;
nSamples = 100;
nGrads = 1000;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 18.0933317301356

% Define tolerance
tol = 0.475931326860831
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #21
% Define parameters
fun = 'dissSmagorinsky';
precision = 0;
nSamples = 100;
nGrads = 10000;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 3.34191871571260

% Define tolerance
tol = 0.0236387426009587
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #22
% Define parameters
fun = 'dissSmagorinsky';
precision = 0;
nSamples = 100;
nGrads = 10000;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 18.0715472341828

% Define tolerance
tol = 0.171989874741348
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #23
% Define parameters
fun = 'dissSmagorinsky';
precision = 0;
nSamples = 100;
nGrads = 100000;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 3.34167053045196

% Define tolerance
tol = 0.00775311257714689
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #24
% Define parameters
fun = 'dissSmagorinsky';
precision = 0;
nSamples = 100;
nGrads = 100000;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 18.0499369048817

% Define tolerance
tol = 0.0521537751524118
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #25
% Define parameters
fun = 'dissSmagorinsky';
precision = 0;
nSamples = 100;
nGrads = 1000000;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 3.34199852953224

% Define tolerance
tol = 0.00265380830821748
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #26
% Define parameters
fun = 'dissSmagorinsky';
precision = 0;
nSamples = 1000;
nGrads = 10;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 3.34060302667138

% Define tolerance
tol = 0.806352742170322
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #27
% Define parameters
fun = 'dissSmagorinsky';
precision = 0;
nSamples = 1000;
nGrads = 10;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 17.8831331323891

% Define tolerance
tol = 5.28211331113793
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #28
% Define parameters
fun = 'dissSmagorinsky';
precision = 0;
nSamples = 1000;
nGrads = 100;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 3.34893468451970

% Define tolerance
tol = 0.239960661251484
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #29
% Define parameters
fun = 'dissSmagorinsky';
precision = 0;
nSamples = 1000;
nGrads = 100;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 17.9594225519199

% Define tolerance
tol = 1.80267074902522
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #30
% Define parameters
fun = 'dissSmagorinsky';
precision = 0;
nSamples = 1000;
nGrads = 1000;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 3.34264044419768

% Define tolerance
tol = 0.0760166851102484
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #31
% Define parameters
fun = 'dissSmagorinsky';
precision = 0;
nSamples = 1000;
nGrads = 1000;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 18.0723054011757

% Define tolerance
tol = 0.560322707967264
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #32
% Define parameters
fun = 'dissSmagorinsky';
precision = 0;
nSamples = 1000;
nGrads = 10000;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 3.34255874531693

% Define tolerance
tol = 0.0233383778103114
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #33
% Define parameters
fun = 'dissSmagorinsky';
precision = 0;
nSamples = 1000;
nGrads = 10000;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 18.0529539104748

% Define tolerance
tol = 0.175791931565166
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #34
% Define parameters
fun = 'dissSmagorinsky';
precision = 0;
nSamples = 10000;
nGrads = 10;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 3.32839055838889

% Define tolerance
tol = 0.789208351022278
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #35
% Define parameters
fun = 'dissSmagorinsky';
precision = 0;
nSamples = 10000;
nGrads = 10;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 18.0970010795123

% Define tolerance
tol = 5.55005455281622
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #36
% Define parameters
fun = 'dissSmagorinsky';
precision = 0;
nSamples = 10000;
nGrads = 100;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 3.34015472656015

% Define tolerance
tol = 0.249119289341969
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #37
% Define parameters
fun = 'dissSmagorinsky';
precision = 0;
nSamples = 10000;
nGrads = 100;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 18.0590896474650

% Define tolerance
tol = 1.75799327443648
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #38
% Define parameters
fun = 'dissSmagorinsky';
precision = 0;
nSamples = 10000;
nGrads = 1000;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 3.34108698532870

% Define tolerance
tol = 0.0786222494305617
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #39
% Define parameters
fun = 'dissSmagorinsky';
precision = 0;
nSamples = 10000;
nGrads = 1000;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 18.0537403332977

% Define tolerance
tol = 0.551207182610547
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #40
% Define parameters
fun = 'dissSmagorinsky';
precision = 0;
nSamples = 100000;
nGrads = 10;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 3.34154373121853

% Define tolerance
tol = 0.790240731200708
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #41
% Define parameters
fun = 'dissSmagorinsky';
precision = 0;
nSamples = 100000;
nGrads = 10;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 18.0529738211384

% Define tolerance
tol = 5.51648214589824
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #42
% Define parameters
fun = 'dissSmagorinsky';
precision = 0;
nSamples = 100000;
nGrads = 100;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 3.34109520552838

% Define tolerance
tol = 0.248364564327123
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #43
% Define parameters
fun = 'dissSmagorinsky';
precision = 0;
nSamples = 100000;
nGrads = 100;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 18.0559690014198

% Define tolerance
tol = 1.73662566738634
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #44
% Define parameters
fun = 'dissSmagorinsky';
precision = 0;
nSamples = 1000000;
nGrads = 10;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 3.34196447485485

% Define tolerance
tol = 0.787259104290383
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #45
% Define parameters
fun = 'dissSmagorinsky';
precision = 0;
nSamples = 1000000;
nGrads = 10;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 18.0558332656928

% Define tolerance
tol = 5.52126664716801
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #46
% Define parameters
fun = 'dissQR';
precision = 0;
nSamples = 10;
nGrads = 10;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 0.0511457539497146

% Define tolerance
tol = 0.0302975628273224
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #47
% Define parameters
fun = 'dissQR';
precision = 0;
nSamples = 10;
nGrads = 10;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 0.316870026076449

% Define tolerance
tol = 0.184236700454983
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #48
% Define parameters
fun = 'dissQR';
precision = 0;
nSamples = 10;
nGrads = 100;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 0.0561707966138044

% Define tolerance
tol = 0.00640599037599948
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #49
% Define parameters
fun = 'dissQR';
precision = 0;
nSamples = 10;
nGrads = 100;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 0.304721429176514

% Define tolerance
tol = 0.0772401094476129
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #50
% Define parameters
fun = 'dissQR';
precision = 0;
nSamples = 10;
nGrads = 1000;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 0.0544035367980385

% Define tolerance
tol = 0.00218838957385068
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #51
% Define parameters
fun = 'dissQR';
precision = 0;
nSamples = 10;
nGrads = 1000;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 0.281762499649928

% Define tolerance
tol = 0.0158553172702989
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #52
% Define parameters
fun = 'dissQR';
precision = 0;
nSamples = 10;
nGrads = 10000;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 0.0548931972219218

% Define tolerance
tol = 0.000470846282639884
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #53
% Define parameters
fun = 'dissQR';
precision = 0;
nSamples = 10;
nGrads = 10000;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 0.290841619617823

% Define tolerance
tol = 0.00572209540854150
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #54
% Define parameters
fun = 'dissQR';
precision = 0;
nSamples = 10;
nGrads = 100000;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 0.0548403119337173

% Define tolerance
tol = 0.000296804530472369
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #55
% Define parameters
fun = 'dissQR';
precision = 0;
nSamples = 10;
nGrads = 100000;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 0.288939101451077

% Define tolerance
tol = 0.00147004057823630
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #56
% Define parameters
fun = 'dissQR';
precision = 0;
nSamples = 10;
nGrads = 1000000;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 0.0546630948907545

% Define tolerance
tol = 9.18457948065146e-05
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #57
% Define parameters
fun = 'dissQR';
precision = 0;
nSamples = 10;
nGrads = 1000000;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 0.289392950041919

% Define tolerance
tol = 0.000510757146171806
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #58
% Define parameters
fun = 'dissQR';
precision = 0;
nSamples = 10;
nGrads = 10000000;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 0.0546521317512738

% Define tolerance
tol = 3.74260144377589e-05
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #59
% Define parameters
fun = 'dissQR';
precision = 0;
nSamples = 10;
nGrads = 10000000;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 0.289475898413013

% Define tolerance
tol = 0.000134842252578866
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #60
% Define parameters
fun = 'dissQR';
precision = 0;
nSamples = 100;
nGrads = 10;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 0.0519499368289584

% Define tolerance
tol = 0.0333105967307993
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #61
% Define parameters
fun = 'dissQR';
precision = 0;
nSamples = 100;
nGrads = 10;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 0.294966744396304

% Define tolerance
tol = 0.194577387780892
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #62
% Define parameters
fun = 'dissQR';
precision = 0;
nSamples = 100;
nGrads = 100;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 0.0544316738120973

% Define tolerance
tol = 0.0103923136009951
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #63
% Define parameters
fun = 'dissQR';
precision = 0;
nSamples = 100;
nGrads = 100;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 0.284064509836160

% Define tolerance
tol = 0.0483162649745485
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #64
% Define parameters
fun = 'dissQR';
precision = 0;
nSamples = 100;
nGrads = 1000;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 0.0550190592443401

% Define tolerance
tol = 0.00297323220416964
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #65
% Define parameters
fun = 'dissQR';
precision = 0;
nSamples = 100;
nGrads = 1000;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 0.288092643492170

% Define tolerance
tol = 0.0178350036261380
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #66
% Define parameters
fun = 'dissQR';
precision = 0;
nSamples = 100;
nGrads = 10000;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 0.0546991777700341

% Define tolerance
tol = 0.000942643043255600
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #67
% Define parameters
fun = 'dissQR';
precision = 0;
nSamples = 100;
nGrads = 10000;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 0.289439515598697

% Define tolerance
tol = 0.00601890173623717
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #68
% Define parameters
fun = 'dissQR';
precision = 0;
nSamples = 100;
nGrads = 100000;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 0.0545711775587329

% Define tolerance
tol = 0.000317429774489361
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #69
% Define parameters
fun = 'dissQR';
precision = 0;
nSamples = 100;
nGrads = 100000;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 0.289742877571703

% Define tolerance
tol = 0.00181448296877475
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #70
% Define parameters
fun = 'dissQR';
precision = 0;
nSamples = 100;
nGrads = 1000000;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 0.0546725750334901

% Define tolerance
tol = 9.34929355183769e-05
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #71
% Define parameters
fun = 'dissQR';
precision = 0;
nSamples = 1000;
nGrads = 10;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 0.0560904646257197

% Define tolerance
tol = 0.0304438344539915
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #72
% Define parameters
fun = 'dissQR';
precision = 0;
nSamples = 1000;
nGrads = 10;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 0.290543161077493

% Define tolerance
tol = 0.188246719412389
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #73
% Define parameters
fun = 'dissQR';
precision = 0;
nSamples = 1000;
nGrads = 100;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 0.0546512350793322

% Define tolerance
tol = 0.00917434847376151
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #74
% Define parameters
fun = 'dissQR';
precision = 0;
nSamples = 1000;
nGrads = 100;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 0.287934836422995

% Define tolerance
tol = 0.0617213289482887
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #75
% Define parameters
fun = 'dissQR';
precision = 0;
nSamples = 1000;
nGrads = 1000;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 0.0547009837368311

% Define tolerance
tol = 0.00308340022064442
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #76
% Define parameters
fun = 'dissQR';
precision = 0;
nSamples = 1000;
nGrads = 1000;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 0.289749236578247

% Define tolerance
tol = 0.0183142322675657
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #77
% Define parameters
fun = 'dissQR';
precision = 0;
nSamples = 1000;
nGrads = 10000;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 0.0546630631138179

% Define tolerance
tol = 0.000959382345353000
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #78
% Define parameters
fun = 'dissQR';
precision = 0;
nSamples = 1000;
nGrads = 10000;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 0.289251068837558

% Define tolerance
tol = 0.00579058026694321
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #79
% Define parameters
fun = 'dissQR';
precision = 0;
nSamples = 10000;
nGrads = 10;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 0.0547126138788115

% Define tolerance
tol = 0.0303397169603908
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #80
% Define parameters
fun = 'dissQR';
precision = 0;
nSamples = 10000;
nGrads = 10;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 0.292076042936310

% Define tolerance
tol = 0.186145700103849
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #81
% Define parameters
fun = 'dissQR';
precision = 0;
nSamples = 10000;
nGrads = 100;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 0.0546483939170530

% Define tolerance
tol = 0.00952494404888223
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #82
% Define parameters
fun = 'dissQR';
precision = 0;
nSamples = 10000;
nGrads = 100;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 0.290383004915089

% Define tolerance
tol = 0.0586568875002083
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #83
% Define parameters
fun = 'dissQR';
precision = 0;
nSamples = 10000;
nGrads = 1000;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 0.0547221837938968

% Define tolerance
tol = 0.00305075341653916
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #84
% Define parameters
fun = 'dissQR';
precision = 0;
nSamples = 10000;
nGrads = 1000;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 0.289348017900904

% Define tolerance
tol = 0.0185087058410166
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #85
% Define parameters
fun = 'dissQR';
precision = 0;
nSamples = 100000;
nGrads = 10;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 0.0546548473983216

% Define tolerance
tol = 0.0304840622014949
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #86
% Define parameters
fun = 'dissQR';
precision = 0;
nSamples = 100000;
nGrads = 10;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 0.289225478905320

% Define tolerance
tol = 0.186935180734054
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #87
% Define parameters
fun = 'dissQR';
precision = 0;
nSamples = 100000;
nGrads = 100;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 0.0546564098664780

% Define tolerance
tol = 0.00963299131173826
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #88
% Define parameters
fun = 'dissQR';
precision = 0;
nSamples = 100000;
nGrads = 100;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 0.289578207630261

% Define tolerance
tol = 0.0589994219521602
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #89
% Define parameters
fun = 'dissQR';
precision = 0;
nSamples = 1000000;
nGrads = 10;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 0.0547096729150231

% Define tolerance
tol = 0.0304447982656329
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #90
% Define parameters
fun = 'dissQR';
precision = 0;
nSamples = 1000000;
nGrads = 10;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 0.289839919490978

% Define tolerance
tol = 0.186755657499498
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #91
% Define parameters
fun = 'dissVreman';
precision = 0;
nSamples = 10;
nGrads = 10;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 1.23565550172542

% Define tolerance
tol = 0.118488757102610
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #92
% Define parameters
fun = 'dissVreman';
precision = 0;
nSamples = 10;
nGrads = 10;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 6.14239829796883

% Define tolerance
tol = 2.09551417330146
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #93
% Define parameters
fun = 'dissVreman';
precision = 0;
nSamples = 10;
nGrads = 100;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 1.32738128375933

% Define tolerance
tol = 0.0966796680450501
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #94
% Define parameters
fun = 'dissVreman';
precision = 0;
nSamples = 10;
nGrads = 100;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 6.63724025157395

% Define tolerance
tol = 0.529215196457952
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #95
% Define parameters
fun = 'dissVreman';
precision = 0;
nSamples = 10;
nGrads = 1000;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 1.29101103771329

% Define tolerance
tol = 0.0217310172806671
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #96
% Define parameters
fun = 'dissVreman';
precision = 0;
nSamples = 10;
nGrads = 1000;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 6.68229407632857

% Define tolerance
tol = 0.184648400093576
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #97
% Define parameters
fun = 'dissVreman';
precision = 0;
nSamples = 10;
nGrads = 10000;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 1.28247069599359

% Define tolerance
tol = 0.00750329110493799
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #98
% Define parameters
fun = 'dissVreman';
precision = 0;
nSamples = 10;
nGrads = 10000;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 6.62645856163217

% Define tolerance
tol = 0.0502477969585551
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #99
% Define parameters
fun = 'dissVreman';
precision = 0;
nSamples = 10;
nGrads = 100000;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 1.28152932151098

% Define tolerance
tol = 0.00271795414831302
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #100
% Define parameters
fun = 'dissVreman';
precision = 0;
nSamples = 10;
nGrads = 100000;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 6.64094083702132

% Define tolerance
tol = 0.0158035473076911
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #101
% Define parameters
fun = 'dissVreman';
precision = 0;
nSamples = 10;
nGrads = 1000000;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 1.28195664739527

% Define tolerance
tol = 0.00129647741322909
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #102
% Define parameters
fun = 'dissVreman';
precision = 0;
nSamples = 10;
nGrads = 1000000;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 6.64149623289970

% Define tolerance
tol = 0.00718519451819007
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #103
% Define parameters
fun = 'dissVreman';
precision = 0;
nSamples = 10;
nGrads = 10000000;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 1.28160399462204

% Define tolerance
tol = 0.000304288621480337
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #104
% Define parameters
fun = 'dissVreman';
precision = 0;
nSamples = 10;
nGrads = 10000000;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 6.64338028491859

% Define tolerance
tol = 0.00165232441561874
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #105
% Define parameters
fun = 'dissVreman';
precision = 0;
nSamples = 100;
nGrads = 10;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 1.24241936489847

% Define tolerance
tol = 0.273943972652716
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #106
% Define parameters
fun = 'dissVreman';
precision = 0;
nSamples = 100;
nGrads = 10;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 6.54061777216032

% Define tolerance
tol = 1.81735795351860
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #107
% Define parameters
fun = 'dissVreman';
precision = 0;
nSamples = 100;
nGrads = 100;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 1.27409540104732

% Define tolerance
tol = 0.0902204026554022
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #108
% Define parameters
fun = 'dissVreman';
precision = 0;
nSamples = 100;
nGrads = 100;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 6.69425793609536

% Define tolerance
tol = 0.521720595200181
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #109
% Define parameters
fun = 'dissVreman';
precision = 0;
nSamples = 100;
nGrads = 1000;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 1.28414151995538

% Define tolerance
tol = 0.0308619616923321
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #110
% Define parameters
fun = 'dissVreman';
precision = 0;
nSamples = 100;
nGrads = 1000;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 6.66553783316359

% Define tolerance
tol = 0.202544348438703
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #111
% Define parameters
fun = 'dissVreman';
precision = 0;
nSamples = 100;
nGrads = 10000;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 1.28316404192189

% Define tolerance
tol = 0.00892142103102418
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #112
% Define parameters
fun = 'dissVreman';
precision = 0;
nSamples = 100;
nGrads = 10000;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 6.63366595866085

% Define tolerance
tol = 0.0636661295600869
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #113
% Define parameters
fun = 'dissVreman';
precision = 0;
nSamples = 100;
nGrads = 100000;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 1.28143565957841

% Define tolerance
tol = 0.00252057395582631
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #114
% Define parameters
fun = 'dissVreman';
precision = 0;
nSamples = 100;
nGrads = 100000;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 6.64537838919101

% Define tolerance
tol = 0.0200700483273150
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #115
% Define parameters
fun = 'dissVreman';
precision = 0;
nSamples = 100;
nGrads = 1000000;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 1.28152687570086

% Define tolerance
tol = 0.000955402682290380
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #116
% Define parameters
fun = 'dissVreman';
precision = 0;
nSamples = 1000;
nGrads = 10;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 1.28092063348507

% Define tolerance
tol = 0.275148299757462
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #117
% Define parameters
fun = 'dissVreman';
precision = 0;
nSamples = 1000;
nGrads = 10;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 6.65948995999987

% Define tolerance
tol = 2.03198430289538
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #118
% Define parameters
fun = 'dissVreman';
precision = 0;
nSamples = 1000;
nGrads = 100;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 1.27841805384942

% Define tolerance
tol = 0.0890248559177025
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #119
% Define parameters
fun = 'dissVreman';
precision = 0;
nSamples = 1000;
nGrads = 100;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 6.63785847147300

% Define tolerance
tol = 0.602499304823082
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #120
% Define parameters
fun = 'dissVreman';
precision = 0;
nSamples = 1000;
nGrads = 1000;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 1.28034304068277

% Define tolerance
tol = 0.0287466141292430
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #121
% Define parameters
fun = 'dissVreman';
precision = 0;
nSamples = 1000;
nGrads = 1000;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 6.63802132148450

% Define tolerance
tol = 0.188099298944301
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #122
% Define parameters
fun = 'dissVreman';
precision = 0;
nSamples = 1000;
nGrads = 10000;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 1.28193726509430

% Define tolerance
tol = 0.00881027052750623
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #123
% Define parameters
fun = 'dissVreman';
precision = 0;
nSamples = 1000;
nGrads = 10000;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 6.64002408000543

% Define tolerance
tol = 0.0626522278653963
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #124
% Define parameters
fun = 'dissVreman';
precision = 0;
nSamples = 10000;
nGrads = 10;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 1.28243659302594

% Define tolerance
tol = 0.284897886622619
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #125
% Define parameters
fun = 'dissVreman';
precision = 0;
nSamples = 10000;
nGrads = 10;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 6.65867611258239

% Define tolerance
tol = 1.95382768238328
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #126
% Define parameters
fun = 'dissVreman';
precision = 0;
nSamples = 10000;
nGrads = 100;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 1.28187233420116

% Define tolerance
tol = 0.0897314414781100
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #127
% Define parameters
fun = 'dissVreman';
precision = 0;
nSamples = 10000;
nGrads = 100;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 6.63288796173267

% Define tolerance
tol = 0.605971158288046
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #128
% Define parameters
fun = 'dissVreman';
precision = 0;
nSamples = 10000;
nGrads = 1000;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 1.28124230743009

% Define tolerance
tol = 0.0286907653352649
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #129
% Define parameters
fun = 'dissVreman';
precision = 0;
nSamples = 10000;
nGrads = 1000;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 6.64482144736645

% Define tolerance
tol = 0.197095172667666
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #130
% Define parameters
fun = 'dissVreman';
precision = 0;
nSamples = 100000;
nGrads = 10;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 1.28245724572355

% Define tolerance
tol = 0.284676506939631
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #131
% Define parameters
fun = 'dissVreman';
precision = 0;
nSamples = 100000;
nGrads = 10;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 6.64552573295572

% Define tolerance
tol = 1.95519715758388
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #132
% Define parameters
fun = 'dissVreman';
precision = 0;
nSamples = 100000;
nGrads = 100;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 1.28183584465003

% Define tolerance
tol = 0.0897872144519707
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #133
% Define parameters
fun = 'dissVreman';
precision = 0;
nSamples = 100000;
nGrads = 100;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 6.64043799666220

% Define tolerance
tol = 0.620250901679605
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #134
% Define parameters
fun = 'dissVreman';
precision = 0;
nSamples = 1000000;
nGrads = 10;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 1.28165276868344

% Define tolerance
tol = 0.283498515362392
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #135
% Define parameters
fun = 'dissVreman';
precision = 0;
nSamples = 1000000;
nGrads = 10;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 6.64410057665894

% Define tolerance
tol = 1.95962220538781
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #136
% Define parameters
fun = 'dissVortexStretching';
precision = 0;
nSamples = 10;
nGrads = 10;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 0.229771744015915

% Define tolerance
tol = 0.0661818420085460
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #137
% Define parameters
fun = 'dissVortexStretching';
precision = 0;
nSamples = 10;
nGrads = 10;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 1.18673465986537

% Define tolerance
tol = 0.506558276797091
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #138
% Define parameters
fun = 'dissVortexStretching';
precision = 0;
nSamples = 10;
nGrads = 100;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 0.255724190214970

% Define tolerance
tol = 0.0210402918964253
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #139
% Define parameters
fun = 'dissVortexStretching';
precision = 0;
nSamples = 10;
nGrads = 100;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 1.29715718530684

% Define tolerance
tol = 0.179586412830813
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #140
% Define parameters
fun = 'dissVortexStretching';
precision = 0;
nSamples = 10;
nGrads = 1000;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 0.287229976072972

% Define tolerance
tol = 0.0102803843366851
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #141
% Define parameters
fun = 'dissVortexStretching';
precision = 0;
nSamples = 10;
nGrads = 1000;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 1.30761809691983

% Define tolerance
tol = 0.0605885022496470
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #142
% Define parameters
fun = 'dissVortexStretching';
precision = 0;
nSamples = 10;
nGrads = 10000;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 0.286366466003434

% Define tolerance
tol = 0.00253630803677041
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #143
% Define parameters
fun = 'dissVortexStretching';
precision = 0;
nSamples = 10;
nGrads = 10000;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 1.31774615677224

% Define tolerance
tol = 0.0181110062154605
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #144
% Define parameters
fun = 'dissVortexStretching';
precision = 0;
nSamples = 10;
nGrads = 100000;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 0.286068792112272

% Define tolerance
tol = 0.000859609330462605
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #145
% Define parameters
fun = 'dissVortexStretching';
precision = 0;
nSamples = 10;
nGrads = 100000;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 1.32587004679787

% Define tolerance
tol = 0.00426957826062220
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #146
% Define parameters
fun = 'dissVortexStretching';
precision = 0;
nSamples = 10;
nGrads = 1000000;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 0.286382029791750

% Define tolerance
tol = 0.000278995750932072
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #147
% Define parameters
fun = 'dissVortexStretching';
precision = 0;
nSamples = 10;
nGrads = 1000000;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 1.32666196636345

% Define tolerance
tol = 0.00173789432877404
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #148
% Define parameters
fun = 'dissVortexStretching';
precision = 0;
nSamples = 10;
nGrads = 10000000;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 0.286392315924729

% Define tolerance
tol = 9.31691590945284e-05
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #149
% Define parameters
fun = 'dissVortexStretching';
precision = 0;
nSamples = 10;
nGrads = 10000000;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 1.32528085268486

% Define tolerance
tol = 0.000755824334562773
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #150
% Define parameters
fun = 'dissVortexStretching';
precision = 0;
nSamples = 100;
nGrads = 10;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 0.276373079119770

% Define tolerance
tol = 0.0957402841001844
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #151
% Define parameters
fun = 'dissVortexStretching';
precision = 0;
nSamples = 100;
nGrads = 10;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 1.31664666167216

% Define tolerance
tol = 0.529630273605779
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #152
% Define parameters
fun = 'dissVortexStretching';
precision = 0;
nSamples = 100;
nGrads = 100;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 0.286125420893181

% Define tolerance
tol = 0.0260985363719459
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #153
% Define parameters
fun = 'dissVortexStretching';
precision = 0;
nSamples = 100;
nGrads = 100;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 1.35789818577808

% Define tolerance
tol = 0.167981430254345
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #154
% Define parameters
fun = 'dissVortexStretching';
precision = 0;
nSamples = 100;
nGrads = 1000;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 0.286663995447568

% Define tolerance
tol = 0.00916764765263229
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #155
% Define parameters
fun = 'dissVortexStretching';
precision = 0;
nSamples = 100;
nGrads = 1000;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 1.32453551055315

% Define tolerance
tol = 0.0462286354685700
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #156
% Define parameters
fun = 'dissVortexStretching';
precision = 0;
nSamples = 100;
nGrads = 10000;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 0.286401301147681

% Define tolerance
tol = 0.00301263731688989
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #157
% Define parameters
fun = 'dissVortexStretching';
precision = 0;
nSamples = 100;
nGrads = 10000;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 1.32463866365371

% Define tolerance
tol = 0.0153612786655373
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #158
% Define parameters
fun = 'dissVortexStretching';
precision = 0;
nSamples = 100;
nGrads = 100000;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 0.286236449653585

% Define tolerance
tol = 0.000970270087962174
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #159
% Define parameters
fun = 'dissVortexStretching';
precision = 0;
nSamples = 100;
nGrads = 100000;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 1.32512545745122

% Define tolerance
tol = 0.00539914901487491
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #160
% Define parameters
fun = 'dissVortexStretching';
precision = 0;
nSamples = 100;
nGrads = 1000000;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 0.286458780297613

% Define tolerance
tol = 0.000283611305265074
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #161
% Define parameters
fun = 'dissVortexStretching';
precision = 0;
nSamples = 1000;
nGrads = 10;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 0.284367093668974

% Define tolerance
tol = 0.0865636161998417
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #162
% Define parameters
fun = 'dissVortexStretching';
precision = 0;
nSamples = 1000;
nGrads = 10;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 1.32292270476817

% Define tolerance
tol = 0.526181056231857
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #163
% Define parameters
fun = 'dissVortexStretching';
precision = 0;
nSamples = 1000;
nGrads = 100;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 0.287868603977292

% Define tolerance
tol = 0.0290738686617525
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #164
% Define parameters
fun = 'dissVortexStretching';
precision = 0;
nSamples = 1000;
nGrads = 100;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 1.32115594750028

% Define tolerance
tol = 0.163460763818049
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #165
% Define parameters
fun = 'dissVortexStretching';
precision = 0;
nSamples = 1000;
nGrads = 1000;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 0.286314445925158

% Define tolerance
tol = 0.00918867196370703
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #166
% Define parameters
fun = 'dissVortexStretching';
precision = 0;
nSamples = 1000;
nGrads = 1000;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 1.32617940256161

% Define tolerance
tol = 0.0529603155101405
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #167
% Define parameters
fun = 'dissVortexStretching';
precision = 0;
nSamples = 1000;
nGrads = 10000;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 0.286378382702660

% Define tolerance
tol = 0.00282971476377769
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #168
% Define parameters
fun = 'dissVortexStretching';
precision = 0;
nSamples = 1000;
nGrads = 10000;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 1.32677000010896

% Define tolerance
tol = 0.0169529181308944
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #169
% Define parameters
fun = 'dissVortexStretching';
precision = 0;
nSamples = 10000;
nGrads = 10;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 0.287744195732872

% Define tolerance
tol = 0.0915266869959630
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #170
% Define parameters
fun = 'dissVortexStretching';
precision = 0;
nSamples = 10000;
nGrads = 10;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 1.32228053749468

% Define tolerance
tol = 0.529286488845745
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #171
% Define parameters
fun = 'dissVortexStretching';
precision = 0;
nSamples = 10000;
nGrads = 100;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 0.286061809706380

% Define tolerance
tol = 0.0288965088678839
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #172
% Define parameters
fun = 'dissVortexStretching';
precision = 0;
nSamples = 10000;
nGrads = 100;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 1.32326292629502

% Define tolerance
tol = 0.170138865231337
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #173
% Define parameters
fun = 'dissVortexStretching';
precision = 0;
nSamples = 10000;
nGrads = 1000;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 0.286474212378136

% Define tolerance
tol = 0.00926588154930336
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #174
% Define parameters
fun = 'dissVortexStretching';
precision = 0;
nSamples = 10000;
nGrads = 1000;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 1.32576236603340

% Define tolerance
tol = 0.0539755950548580
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #175
% Define parameters
fun = 'dissVortexStretching';
precision = 0;
nSamples = 100000;
nGrads = 10;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 0.286153128919485

% Define tolerance
tol = 0.0912190381458519
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #176
% Define parameters
fun = 'dissVortexStretching';
precision = 0;
nSamples = 100000;
nGrads = 10;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 1.32518252457263

% Define tolerance
tol = 0.535969625364101
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #177
% Define parameters
fun = 'dissVortexStretching';
precision = 0;
nSamples = 100000;
nGrads = 100;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 0.286270491017532

% Define tolerance
tol = 0.0288392326378905
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #178
% Define parameters
fun = 'dissVortexStretching';
precision = 0;
nSamples = 100000;
nGrads = 100;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 1.32509580573427

% Define tolerance
tol = 0.169239741954575
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #179
% Define parameters
fun = 'dissVortexStretching';
precision = 0;
nSamples = 1000000;
nGrads = 10;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 0.286432865884777

% Define tolerance
tol = 0.0910406725360461
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #180
% Define parameters
fun = 'dissVortexStretching';
precision = 0;
nSamples = 1000000;
nGrads = 10;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 1.32632424460160

% Define tolerance
tol = 0.534892084973896
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #181
% Define parameters
fun = 'dissWALE';
precision = 0;
nSamples = 10;
nGrads = 10;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 0.247352456810982

% Define tolerance
tol = 0.0456254962224393
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #182
% Define parameters
fun = 'dissWALE';
precision = 0;
nSamples = 10;
nGrads = 10;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 1.20670922664111

% Define tolerance
tol = 0.295933452675532
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #183
% Define parameters
fun = 'dissWALE';
precision = 0;
nSamples = 10;
nGrads = 100;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 0.282402400962819

% Define tolerance
tol = 0.0189192576944731
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #184
% Define parameters
fun = 'dissWALE';
precision = 0;
nSamples = 10;
nGrads = 100;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 1.36209433244226

% Define tolerance
tol = 0.0818959450677254
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #185
% Define parameters
fun = 'dissWALE';
precision = 0;
nSamples = 10;
nGrads = 1000;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 0.281229648796210

% Define tolerance
tol = 0.00594490126285538
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #186
% Define parameters
fun = 'dissWALE';
precision = 0;
nSamples = 10;
nGrads = 1000;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 1.38305398808067

% Define tolerance
tol = 0.0483947821475354
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #187
% Define parameters
fun = 'dissWALE';
precision = 0;
nSamples = 10;
nGrads = 10000;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 0.280637010670399

% Define tolerance
tol = 0.000772782318611559
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #188
% Define parameters
fun = 'dissWALE';
precision = 0;
nSamples = 10;
nGrads = 10000;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 1.39464300369134

% Define tolerance
tol = 0.0121848474571037
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #189
% Define parameters
fun = 'dissWALE';
precision = 0;
nSamples = 10;
nGrads = 100000;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 0.280566286653724

% Define tolerance
tol = 0.000742131792143847
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #190
% Define parameters
fun = 'dissWALE';
precision = 0;
nSamples = 10;
nGrads = 100000;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 1.38800640131317

% Define tolerance
tol = 0.00438765300047741
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #191
% Define parameters
fun = 'dissWALE';
precision = 0;
nSamples = 10;
nGrads = 1000000;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 0.280707253400829

% Define tolerance
tol = 0.000214452039031858
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #192
% Define parameters
fun = 'dissWALE';
precision = 0;
nSamples = 10;
nGrads = 1000000;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 1.38762840882129

% Define tolerance
tol = 0.00127776258799121
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #193
% Define parameters
fun = 'dissWALE';
precision = 0;
nSamples = 10;
nGrads = 10000000;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 0.280724116225109

% Define tolerance
tol = 4.61321250330477e-05
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #194
% Define parameters
fun = 'dissWALE';
precision = 0;
nSamples = 10;
nGrads = 10000000;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 1.38801011607125

% Define tolerance
tol = 0.000298400024347414
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #195
% Define parameters
fun = 'dissWALE';
precision = 0;
nSamples = 100;
nGrads = 10;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 0.286141540745013

% Define tolerance
tol = 0.0578551432681803
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #196
% Define parameters
fun = 'dissWALE';
precision = 0;
nSamples = 100;
nGrads = 10;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 1.37561616229600

% Define tolerance
tol = 0.455278998578281
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #197
% Define parameters
fun = 'dissWALE';
precision = 0;
nSamples = 100;
nGrads = 100;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 0.281745495668418

% Define tolerance
tol = 0.0167126388989301
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #198
% Define parameters
fun = 'dissWALE';
precision = 0;
nSamples = 100;
nGrads = 100;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 1.38143885159518

% Define tolerance
tol = 0.116712309406699
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #199
% Define parameters
fun = 'dissWALE';
precision = 0;
nSamples = 100;
nGrads = 1000;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 0.281194520473858

% Define tolerance
tol = 0.00542436397962782
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #200
% Define parameters
fun = 'dissWALE';
precision = 0;
nSamples = 100;
nGrads = 1000;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 1.38242511282720

% Define tolerance
tol = 0.0380029311989749
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #201
% Define parameters
fun = 'dissWALE';
precision = 0;
nSamples = 100;
nGrads = 10000;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 0.280646594019304

% Define tolerance
tol = 0.00169472791449360
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #202
% Define parameters
fun = 'dissWALE';
precision = 0;
nSamples = 100;
nGrads = 10000;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 1.38802540923848

% Define tolerance
tol = 0.0128977741245280
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #203
% Define parameters
fun = 'dissWALE';
precision = 0;
nSamples = 100;
nGrads = 100000;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 0.280717751018996

% Define tolerance
tol = 0.000616782825053326
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #204
% Define parameters
fun = 'dissWALE';
precision = 0;
nSamples = 100;
nGrads = 100000;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 1.38767693930840

% Define tolerance
tol = 0.00369948436606909
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #205
% Define parameters
fun = 'dissWALE';
precision = 0;
nSamples = 1000;
nGrads = 10;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 0.280584106435894

% Define tolerance
tol = 0.0598699587631442
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #206
% Define parameters
fun = 'dissWALE';
precision = 0;
nSamples = 1000;
nGrads = 10;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 1.37433556703961

% Define tolerance
tol = 0.389811010990616
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #207
% Define parameters
fun = 'dissWALE';
precision = 0;
nSamples = 1000;
nGrads = 100;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 0.281424275594879

% Define tolerance
tol = 0.0184515307853046
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #208
% Define parameters
fun = 'dissWALE';
precision = 0;
nSamples = 1000;
nGrads = 100;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 1.38980332558555

% Define tolerance
tol = 0.128840258213115
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #209
% Define parameters
fun = 'dissWALE';
precision = 0;
nSamples = 1000;
nGrads = 1000;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 0.280762036420381

% Define tolerance
tol = 0.00593859725233584
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #210
% Define parameters
fun = 'dissWALE';
precision = 0;
nSamples = 1000;
nGrads = 1000;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 1.38873129401476

% Define tolerance
tol = 0.0396596425322009
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #211
% Define parameters
fun = 'dissWALE';
precision = 0;
nSamples = 1000;
nGrads = 10000;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 0.280695506050068

% Define tolerance
tol = 0.00186384461284634
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #212
% Define parameters
fun = 'dissWALE';
precision = 0;
nSamples = 1000;
nGrads = 10000;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 1.38769571416656

% Define tolerance
tol = 0.0135153279752095
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #213
% Define parameters
fun = 'dissWALE';
precision = 0;
nSamples = 10000;
nGrads = 10;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 0.281569823873324

% Define tolerance
tol = 0.0594377289996862
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #214
% Define parameters
fun = 'dissWALE';
precision = 0;
nSamples = 10000;
nGrads = 10;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 1.38748783566020

% Define tolerance
tol = 0.412430763618955
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #215
% Define parameters
fun = 'dissWALE';
precision = 0;
nSamples = 10000;
nGrads = 100;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 0.280665102533654

% Define tolerance
tol = 0.0185273026240074
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #216
% Define parameters
fun = 'dissWALE';
precision = 0;
nSamples = 10000;
nGrads = 100;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 1.38884929912569

% Define tolerance
tol = 0.130602237045997
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #217
% Define parameters
fun = 'dissWALE';
precision = 0;
nSamples = 10000;
nGrads = 1000;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 0.280689555259654

% Define tolerance
tol = 0.00589286667793038
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #218
% Define parameters
fun = 'dissWALE';
precision = 0;
nSamples = 10000;
nGrads = 1000;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 1.38857211645952

% Define tolerance
tol = 0.0411964687177032
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #219
% Define parameters
fun = 'dissWALE';
precision = 0;
nSamples = 100000;
nGrads = 10;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 0.280826610218265

% Define tolerance
tol = 0.0591672530636998
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #220
% Define parameters
fun = 'dissWALE';
precision = 0;
nSamples = 100000;
nGrads = 10;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 1.38798547088045

% Define tolerance
tol = 0.409658139544050
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #221
% Define parameters
fun = 'dissWALE';
precision = 0;
nSamples = 100000;
nGrads = 100;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 0.280768833746424

% Define tolerance
tol = 0.0186977563492634
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #222
% Define parameters
fun = 'dissWALE';
precision = 0;
nSamples = 100000;
nGrads = 100;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 1.38747045420982

% Define tolerance
tol = 0.130443736560695
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #223
% Define parameters
fun = 'dissWALE';
precision = 0;
nSamples = 1000000;
nGrads = 10;
gradsFun = 'unifMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 0.280773544538043

% Define tolerance
tol = 0.0592752634557872
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );

%% Test actual output #224
% Define parameters
fun = 'dissWALE';
precision = 0;
nSamples = 1000000;
nGrads = 10;
gradsFun = 'normMats';
spaceDims = 3;
flowDims = [1, 2, 3];
makeIncompr = true;
checkIncompr = true;
shiftAvg = 1;

% Obtain actual value
tic
val = modStats(fun, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg);
field = 'avg';
actVal = val.avg

% Define expected value
expVal = 2 * 1.38753319759301

% Define tolerance
tol = 0.409654109516651
toc

% Test
assert( all( all( all( abs( actVal - expVal ) < tol ) ) ), 'Unexpected output.' );
