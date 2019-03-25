% Test evalFun()

% Define parameters
nQuants1 = 1;
nQuants2 = 2;
nQuants3 = 3;
nQuants4 = 4;
nQuants5 = 5;
nQuants6 = 6;
nQuants7 = 7;
nQuants8 = 8;
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

% Define velocity-gradient-based quantities
gradsQts211 = gradsQuants(grads21, nQuants1);
gradsQts212 = gradsQuants(grads21, nQuants2);
gradsQts213 = gradsQuants(grads21, nQuants3);
gradsQts214 = gradsQuants(grads21, nQuants4);
gradsQts215 = gradsQuants(grads21, nQuants5);
gradsQts216 = gradsQuants(grads21, nQuants6);
gradsQts217 = gradsQuants(grads21, nQuants7);
gradsQts218 = gradsQuants(grads21, nQuants8);
gradsQts219 = gradsQuants(grads21, nQuants9);
gradsQts221 = gradsQuants(grads22, nQuants1);
gradsQts222 = gradsQuants(grads22, nQuants2);
gradsQts223 = gradsQuants(grads22, nQuants3);
gradsQts224 = gradsQuants(grads22, nQuants4);
gradsQts225 = gradsQuants(grads22, nQuants5);
gradsQts226 = gradsQuants(grads22, nQuants6);
gradsQts227 = gradsQuants(grads22, nQuants7);
gradsQts228 = gradsQuants(grads22, nQuants8);
gradsQts229 = gradsQuants(grads22, nQuants9);
gradsQts311 = gradsQuants(grads31, nQuants1);
gradsQts312 = gradsQuants(grads31, nQuants2);
gradsQts313 = gradsQuants(grads31, nQuants3);
gradsQts314 = gradsQuants(grads31, nQuants4);
gradsQts315 = gradsQuants(grads31, nQuants5);
gradsQts316 = gradsQuants(grads31, nQuants6);
gradsQts317 = gradsQuants(grads31, nQuants7);
gradsQts318 = gradsQuants(grads31, nQuants8);
gradsQts319 = gradsQuants(grads31, nQuants9);
gradsQts321 = gradsQuants(grads32, nQuants1);
gradsQts322 = gradsQuants(grads32, nQuants2);
gradsQts323 = gradsQuants(grads32, nQuants3);
gradsQts324 = gradsQuants(grads32, nQuants4);
gradsQts325 = gradsQuants(grads32, nQuants5);
gradsQts326 = gradsQuants(grads32, nQuants6);
gradsQts327 = gradsQuants(grads32, nQuants7);
gradsQts328 = gradsQuants(grads32, nQuants8);
gradsQts329 = gradsQuants(grads32, nQuants9);


% Define velocity-gradient-based functions
fun11 = @(G) G;
fun21 = @(G, S) G;
fun31 = @(G, S, W) G;
fun41 = @(G, S, W, I1) G;
fun51 = @(G, S, W, I1, I2) G;
fun61 = @(G, S, W, I1, I2, I3) G;
fun71 = @(G, S, W, I1, I2, I3, I4) G;
fun81 = @(G, S, W, I1, I2, I3, I4, I5) G;
fun91 = @(G, S, W, I1, I2, I3, I4, I5, I6) G;

fun1 = @(G) G;
fun2 = @(G, S) S;
fun3 = @(G, S, W) W;
fun4 = @(G, S, W, I1) I1;
fun5 = @(G, S, W, I1, I2) I2;
fun6 = @(G, S, W, I1, I2, I3) I3;
fun7 = @(G, S, W, I1, I2, I3, I4) I4;
fun8 = @(G, S, W, I1, I2, I3, I4, I5) I5;
fun9 = @(G, S, W, I1, I2, I3, I4, I5, I6) I6;

%% Test output type #1
fun = fun11;
gradsQts = gradsQts211;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #2
fun = fun11;
gradsQts = gradsQts212;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #3
fun = fun11;
gradsQts = gradsQts213;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #4
fun = fun11;
gradsQts = gradsQts214;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #5
fun = fun11;
gradsQts = gradsQts215;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #6
fun = fun11;
gradsQts = gradsQts216;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #7
fun = fun11;
gradsQts = gradsQts217;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #8
fun = fun11;
gradsQts = gradsQts218;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #9
fun = fun11;
gradsQts = gradsQts219;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #10
fun = fun11;
gradsQts = gradsQts221;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #11
fun = fun11;
gradsQts = gradsQts222;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #12
fun = fun11;
gradsQts = gradsQts223;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #13
fun = fun11;
gradsQts = gradsQts224;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #14
fun = fun11;
gradsQts = gradsQts225;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #15
fun = fun11;
gradsQts = gradsQts226;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #16
fun = fun11;
gradsQts = gradsQts227;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #17
fun = fun11;
gradsQts = gradsQts228;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #18
fun = fun11;
gradsQts = gradsQts229;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #19
fun = fun11;
gradsQts = gradsQts311;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #20
fun = fun11;
gradsQts = gradsQts312;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #21
fun = fun11;
gradsQts = gradsQts313;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #22
fun = fun11;
gradsQts = gradsQts314;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #23
fun = fun11;
gradsQts = gradsQts315;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #24
fun = fun11;
gradsQts = gradsQts316;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #25
fun = fun11;
gradsQts = gradsQts317;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #26
fun = fun11;
gradsQts = gradsQts318;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #27
fun = fun11;
gradsQts = gradsQts319;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #28
fun = fun11;
gradsQts = gradsQts321;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #29
fun = fun11;
gradsQts = gradsQts322;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #30
fun = fun11;
gradsQts = gradsQts323;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #31
fun = fun11;
gradsQts = gradsQts324;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #32
fun = fun11;
gradsQts = gradsQts325;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #33
fun = fun11;
gradsQts = gradsQts326;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #34
fun = fun11;
gradsQts = gradsQts327;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #35
fun = fun11;
gradsQts = gradsQts328;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #36
fun = fun11;
gradsQts = gradsQts329;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #37
fun = fun11;
gradsQts = gradsQts211;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #38
fun = fun11;
gradsQts = gradsQts221;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #39
fun = fun11;
gradsQts = gradsQts311;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #40
fun = fun11;
gradsQts = gradsQts321;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #41
fun = fun21;
gradsQts = gradsQts212;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #42
fun = fun21;
gradsQts = gradsQts222;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #43
fun = fun21;
gradsQts = gradsQts312;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #44
fun = fun21;
gradsQts = gradsQts322;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #45
fun = fun31;
gradsQts = gradsQts213;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #46
fun = fun31;
gradsQts = gradsQts223;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #47
fun = fun31;
gradsQts = gradsQts313;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #48
fun = fun31;
gradsQts = gradsQts323;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #49
fun = fun41;
gradsQts = gradsQts214;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #50
fun = fun41;
gradsQts = gradsQts224;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #51
fun = fun41;
gradsQts = gradsQts314;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #52
fun = fun41;
gradsQts = gradsQts324;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #53
fun = fun51;
gradsQts = gradsQts215;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #54
fun = fun51;
gradsQts = gradsQts225;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #55
fun = fun51;
gradsQts = gradsQts315;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #56
fun = fun51;
gradsQts = gradsQts325;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #57
fun = fun61;
gradsQts = gradsQts216;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #58
fun = fun61;
gradsQts = gradsQts226;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #59
fun = fun61;
gradsQts = gradsQts316;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #60
fun = fun61;
gradsQts = gradsQts326;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #61
fun = fun71;
gradsQts = gradsQts217;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #62
fun = fun71;
gradsQts = gradsQts227;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #63
fun = fun71;
gradsQts = gradsQts317;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #64
fun = fun71;
gradsQts = gradsQts327;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #65
fun = fun81;
gradsQts = gradsQts218;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #66
fun = fun81;
gradsQts = gradsQts228;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #67
fun = fun81;
gradsQts = gradsQts318;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #68
fun = fun81;
gradsQts = gradsQts328;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #69
fun = fun91;
gradsQts = gradsQts219;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #70
fun = fun91;
gradsQts = gradsQts229;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #71
fun = fun91;
gradsQts = gradsQts319;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #72
fun = fun91;
gradsQts = gradsQts329;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #73
fun = fun11;
gradsQts = gradsQts219;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #74
fun = fun11;
gradsQts = gradsQts229;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #75
fun = fun11;
gradsQts = gradsQts319;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #76
fun = fun11;
gradsQts = gradsQts329;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #77
fun = fun21;
gradsQts = gradsQts219;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #78
fun = fun21;
gradsQts = gradsQts229;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #79
fun = fun21;
gradsQts = gradsQts319;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #80
fun = fun21;
gradsQts = gradsQts329;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #81
fun = fun31;
gradsQts = gradsQts219;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #82
fun = fun31;
gradsQts = gradsQts229;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #83
fun = fun31;
gradsQts = gradsQts319;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #84
fun = fun31;
gradsQts = gradsQts329;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #85
fun = fun41;
gradsQts = gradsQts219;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #86
fun = fun41;
gradsQts = gradsQts229;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #87
fun = fun41;
gradsQts = gradsQts319;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #88
fun = fun41;
gradsQts = gradsQts329;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #89
fun = fun51;
gradsQts = gradsQts219;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #90
fun = fun51;
gradsQts = gradsQts229;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #91
fun = fun51;
gradsQts = gradsQts319;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #92
fun = fun51;
gradsQts = gradsQts329;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #93
fun = fun61;
gradsQts = gradsQts219;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #94
fun = fun61;
gradsQts = gradsQts229;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #95
fun = fun61;
gradsQts = gradsQts319;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #96
fun = fun61;
gradsQts = gradsQts329;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #97
fun = fun71;
gradsQts = gradsQts219;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #98
fun = fun71;
gradsQts = gradsQts229;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #99
fun = fun71;
gradsQts = gradsQts319;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #100
fun = fun71;
gradsQts = gradsQts329;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #101
fun = fun81;
gradsQts = gradsQts219;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #102
fun = fun81;
gradsQts = gradsQts229;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #103
fun = fun81;
gradsQts = gradsQts319;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #104
fun = fun81;
gradsQts = gradsQts329;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #105
fun = fun91;
gradsQts = gradsQts219;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #106
fun = fun91;
gradsQts = gradsQts229;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #107
fun = fun91;
gradsQts = gradsQts319;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #108
fun = fun91;
gradsQts = gradsQts329;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #109
fun = fun1;
gradsQts = gradsQts211;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #110
fun = fun1;
gradsQts = gradsQts212;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #111
fun = fun1;
gradsQts = gradsQts213;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #112
fun = fun1;
gradsQts = gradsQts214;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #113
fun = fun1;
gradsQts = gradsQts215;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #114
fun = fun1;
gradsQts = gradsQts216;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #115
fun = fun1;
gradsQts = gradsQts217;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #116
fun = fun1;
gradsQts = gradsQts218;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #117
fun = fun1;
gradsQts = gradsQts219;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #118
fun = fun1;
gradsQts = gradsQts221;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #119
fun = fun1;
gradsQts = gradsQts222;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #120
fun = fun1;
gradsQts = gradsQts223;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #121
fun = fun1;
gradsQts = gradsQts224;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #122
fun = fun1;
gradsQts = gradsQts225;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #123
fun = fun1;
gradsQts = gradsQts226;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #124
fun = fun1;
gradsQts = gradsQts227;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #125
fun = fun1;
gradsQts = gradsQts228;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #126
fun = fun1;
gradsQts = gradsQts229;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #127
fun = fun1;
gradsQts = gradsQts311;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #128
fun = fun1;
gradsQts = gradsQts312;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #129
fun = fun1;
gradsQts = gradsQts313;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #130
fun = fun1;
gradsQts = gradsQts314;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #131
fun = fun1;
gradsQts = gradsQts315;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #132
fun = fun1;
gradsQts = gradsQts316;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #133
fun = fun1;
gradsQts = gradsQts317;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #134
fun = fun1;
gradsQts = gradsQts318;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #135
fun = fun1;
gradsQts = gradsQts319;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #136
fun = fun1;
gradsQts = gradsQts321;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #137
fun = fun1;
gradsQts = gradsQts322;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #138
fun = fun1;
gradsQts = gradsQts323;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #139
fun = fun1;
gradsQts = gradsQts324;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #140
fun = fun1;
gradsQts = gradsQts325;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #141
fun = fun1;
gradsQts = gradsQts326;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #142
fun = fun1;
gradsQts = gradsQts327;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #143
fun = fun1;
gradsQts = gradsQts328;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #144
fun = fun1;
gradsQts = gradsQts329;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #145
fun = fun1;
gradsQts = gradsQts211;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #146
fun = fun1;
gradsQts = gradsQts221;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #147
fun = fun1;
gradsQts = gradsQts311;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #148
fun = fun1;
gradsQts = gradsQts321;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #149
fun = fun2;
gradsQts = gradsQts212;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #150
fun = fun2;
gradsQts = gradsQts222;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #151
fun = fun2;
gradsQts = gradsQts312;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #152
fun = fun2;
gradsQts = gradsQts322;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #153
fun = fun3;
gradsQts = gradsQts213;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #154
fun = fun3;
gradsQts = gradsQts223;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #155
fun = fun3;
gradsQts = gradsQts313;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #156
fun = fun3;
gradsQts = gradsQts323;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #157
fun = fun4;
gradsQts = gradsQts214;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #158
fun = fun4;
gradsQts = gradsQts224;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #159
fun = fun4;
gradsQts = gradsQts314;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #160
fun = fun4;
gradsQts = gradsQts324;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #161
fun = fun5;
gradsQts = gradsQts215;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #162
fun = fun5;
gradsQts = gradsQts225;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #163
fun = fun5;
gradsQts = gradsQts315;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #164
fun = fun5;
gradsQts = gradsQts325;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #165
fun = fun6;
gradsQts = gradsQts216;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #166
fun = fun6;
gradsQts = gradsQts226;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #167
fun = fun6;
gradsQts = gradsQts316;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #168
fun = fun6;
gradsQts = gradsQts326;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #169
fun = fun7;
gradsQts = gradsQts217;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #170
fun = fun7;
gradsQts = gradsQts227;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #171
fun = fun7;
gradsQts = gradsQts317;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #172
fun = fun7;
gradsQts = gradsQts327;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #173
fun = fun8;
gradsQts = gradsQts218;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #174
fun = fun8;
gradsQts = gradsQts228;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #175
fun = fun8;
gradsQts = gradsQts318;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #176
fun = fun8;
gradsQts = gradsQts328;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #177
fun = fun9;
gradsQts = gradsQts219;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #178
fun = fun9;
gradsQts = gradsQts229;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #179
fun = fun9;
gradsQts = gradsQts319;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #180
fun = fun9;
gradsQts = gradsQts329;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #181
fun = fun1;
gradsQts = gradsQts219;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #182
fun = fun1;
gradsQts = gradsQts229;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #183
fun = fun1;
gradsQts = gradsQts319;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #184
fun = fun1;
gradsQts = gradsQts329;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #185
fun = fun2;
gradsQts = gradsQts219;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #186
fun = fun2;
gradsQts = gradsQts229;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #187
fun = fun2;
gradsQts = gradsQts319;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #188
fun = fun2;
gradsQts = gradsQts329;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #189
fun = fun3;
gradsQts = gradsQts219;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #190
fun = fun3;
gradsQts = gradsQts229;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #191
fun = fun3;
gradsQts = gradsQts319;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #192
fun = fun3;
gradsQts = gradsQts329;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #193
fun = fun4;
gradsQts = gradsQts219;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #194
fun = fun4;
gradsQts = gradsQts229;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #195
fun = fun4;
gradsQts = gradsQts319;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #196
fun = fun4;
gradsQts = gradsQts329;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #197
fun = fun5;
gradsQts = gradsQts219;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #198
fun = fun5;
gradsQts = gradsQts229;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #199
fun = fun5;
gradsQts = gradsQts319;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #200
fun = fun5;
gradsQts = gradsQts329;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #201
fun = fun6;
gradsQts = gradsQts219;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #202
fun = fun6;
gradsQts = gradsQts229;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #203
fun = fun6;
gradsQts = gradsQts319;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #204
fun = fun6;
gradsQts = gradsQts329;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #205
fun = fun7;
gradsQts = gradsQts219;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #206
fun = fun7;
gradsQts = gradsQts229;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #207
fun = fun7;
gradsQts = gradsQts319;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #208
fun = fun7;
gradsQts = gradsQts329;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #209
fun = fun8;
gradsQts = gradsQts219;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #210
fun = fun8;
gradsQts = gradsQts229;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #211
fun = fun8;
gradsQts = gradsQts319;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #212
fun = fun8;
gradsQts = gradsQts329;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #213
fun = fun9;
gradsQts = gradsQts219;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #214
fun = fun9;
gradsQts = gradsQts229;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #215
fun = fun9;
gradsQts = gradsQts319;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

%% Test output type #216
fun = fun9;
gradsQts = gradsQts329;
funVals = evalFun(fun, gradsQts);
expType = 'double';
assert( isa(funVals, 'double'), 'Output not of expected type ''double''.');

