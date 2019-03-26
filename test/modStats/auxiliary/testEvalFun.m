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
grads22 = ones(spaceDims2, spaceDims2, nGrads2);
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

%% Test output size #1
nQuants = nQuants1;
spaceDims = spaceDims2;
nGrads = nGrads1;
gradsQts = gradsQts211;
fun = fun11;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #2
nQuants = nQuants2;
spaceDims = spaceDims2;
nGrads = nGrads1;
gradsQts = gradsQts212;
fun = fun11;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #3
nQuants = nQuants3;
spaceDims = spaceDims2;
nGrads = nGrads1;
gradsQts = gradsQts213;
fun = fun11;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #4
nQuants = nQuants4;
spaceDims = spaceDims2;
nGrads = nGrads1;
gradsQts = gradsQts214;
fun = fun11;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #5
nQuants = nQuants5;
spaceDims = spaceDims2;
nGrads = nGrads1;
gradsQts = gradsQts215;
fun = fun11;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #6
nQuants = nQuants6;
spaceDims = spaceDims2;
nGrads = nGrads1;
gradsQts = gradsQts216;
fun = fun11;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #7
nQuants = nQuants7;
spaceDims = spaceDims2;
nGrads = nGrads1;
gradsQts = gradsQts217;
fun = fun11;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #8
nQuants = nQuants8;
spaceDims = spaceDims2;
nGrads = nGrads1;
gradsQts = gradsQts218;
fun = fun11;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #9
nQuants = nQuants9;
spaceDims = spaceDims2;
nGrads = nGrads1;
gradsQts = gradsQts219;
fun = fun11;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #10
nQuants = nQuants1;
spaceDims = spaceDims2;
nGrads = nGrads2;
gradsQts = gradsQts221;
fun = fun11;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #11
nQuants = nQuants2;
spaceDims = spaceDims2;
nGrads = nGrads2;
gradsQts = gradsQts222;
fun = fun11;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #12
nQuants = nQuants3;
spaceDims = spaceDims2;
nGrads = nGrads2;
gradsQts = gradsQts223;
fun = fun11;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #13
nQuants = nQuants4;
spaceDims = spaceDims2;
nGrads = nGrads2;
gradsQts = gradsQts224;
fun = fun11;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #14
nQuants = nQuants5;
spaceDims = spaceDims2;
nGrads = nGrads2;
gradsQts = gradsQts225;
fun = fun11;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #15
nQuants = nQuants6;
spaceDims = spaceDims2;
nGrads = nGrads2;
gradsQts = gradsQts226;
fun = fun11;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #16
nQuants = nQuants7;
spaceDims = spaceDims2;
nGrads = nGrads2;
gradsQts = gradsQts227;
fun = fun11;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #17
nQuants = nQuants8;
spaceDims = spaceDims2;
nGrads = nGrads2;
gradsQts = gradsQts228;
fun = fun11;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #18
nQuants = nQuants9;
spaceDims = spaceDims2;
nGrads = nGrads2;
gradsQts = gradsQts229;
fun = fun11;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #19
nQuants = nQuants1;
spaceDims = spaceDims3;
nGrads = nGrads1;
gradsQts = gradsQts311;
fun = fun11;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #20
nQuants = nQuants2;
spaceDims = spaceDims3;
nGrads = nGrads1;
gradsQts = gradsQts312;
fun = fun11;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #21
nQuants = nQuants3;
spaceDims = spaceDims3;
nGrads = nGrads1;
gradsQts = gradsQts313;
fun = fun11;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #22
nQuants = nQuants4;
spaceDims = spaceDims3;
nGrads = nGrads1;
gradsQts = gradsQts314;
fun = fun11;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #23
nQuants = nQuants5;
spaceDims = spaceDims3;
nGrads = nGrads1;
gradsQts = gradsQts315;
fun = fun11;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #24
nQuants = nQuants6;
spaceDims = spaceDims3;
nGrads = nGrads1;
gradsQts = gradsQts316;
fun = fun11;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #25
nQuants = nQuants7;
spaceDims = spaceDims3;
nGrads = nGrads1;
gradsQts = gradsQts317;
fun = fun11;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #26
nQuants = nQuants8;
spaceDims = spaceDims3;
nGrads = nGrads1;
gradsQts = gradsQts318;
fun = fun11;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #27
nQuants = nQuants9;
spaceDims = spaceDims3;
nGrads = nGrads1;
gradsQts = gradsQts319;
fun = fun11;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #28
nQuants = nQuants1;
spaceDims = spaceDims3;
nGrads = nGrads2;
gradsQts = gradsQts321;
fun = fun11;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #29
nQuants = nQuants2;
spaceDims = spaceDims3;
nGrads = nGrads2;
gradsQts = gradsQts322;
fun = fun11;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #30
nQuants = nQuants3;
spaceDims = spaceDims3;
nGrads = nGrads2;
gradsQts = gradsQts323;
fun = fun11;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #31
nQuants = nQuants4;
spaceDims = spaceDims3;
nGrads = nGrads2;
gradsQts = gradsQts324;
fun = fun11;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #32
nQuants = nQuants5;
spaceDims = spaceDims3;
nGrads = nGrads2;
gradsQts = gradsQts325;
fun = fun11;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #33
nQuants = nQuants6;
spaceDims = spaceDims3;
nGrads = nGrads2;
gradsQts = gradsQts326;
fun = fun11;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #34
nQuants = nQuants7;
spaceDims = spaceDims3;
nGrads = nGrads2;
gradsQts = gradsQts327;
fun = fun11;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #35
nQuants = nQuants8;
spaceDims = spaceDims3;
nGrads = nGrads2;
gradsQts = gradsQts328;
fun = fun11;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #36
nQuants = nQuants9;
spaceDims = spaceDims3;
nGrads = nGrads2;
gradsQts = gradsQts329;
fun = fun11;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #37
nQuants = nQuants1;
spaceDims = spaceDims2;
nGrads = nGrads1;
gradsQts = gradsQts211;
fun = fun11;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #38
nQuants = nQuants1;
spaceDims = spaceDims2;
nGrads = nGrads2;
gradsQts = gradsQts221;
fun = fun11;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #39
nQuants = nQuants1;
spaceDims = spaceDims3;
nGrads = nGrads1;
gradsQts = gradsQts311;
fun = fun11;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #40
nQuants = nQuants1;
spaceDims = spaceDims3;
nGrads = nGrads2;
gradsQts = gradsQts321;
fun = fun11;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #41
nQuants = nQuants2;
spaceDims = spaceDims2;
nGrads = nGrads1;
gradsQts = gradsQts212;
fun = fun21;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #42
nQuants = nQuants2;
spaceDims = spaceDims2;
nGrads = nGrads2;
gradsQts = gradsQts222;
fun = fun21;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #43
nQuants = nQuants2;
spaceDims = spaceDims3;
nGrads = nGrads1;
gradsQts = gradsQts312;
fun = fun21;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #44
nQuants = nQuants2;
spaceDims = spaceDims3;
nGrads = nGrads2;
gradsQts = gradsQts322;
fun = fun21;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #45
nQuants = nQuants3;
spaceDims = spaceDims2;
nGrads = nGrads1;
gradsQts = gradsQts213;
fun = fun31;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #46
nQuants = nQuants3;
spaceDims = spaceDims2;
nGrads = nGrads2;
gradsQts = gradsQts223;
fun = fun31;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #47
nQuants = nQuants3;
spaceDims = spaceDims3;
nGrads = nGrads1;
gradsQts = gradsQts313;
fun = fun31;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #48
nQuants = nQuants3;
spaceDims = spaceDims3;
nGrads = nGrads2;
gradsQts = gradsQts323;
fun = fun31;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #49
nQuants = nQuants4;
spaceDims = spaceDims2;
nGrads = nGrads1;
gradsQts = gradsQts214;
fun = fun41;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #50
nQuants = nQuants4;
spaceDims = spaceDims2;
nGrads = nGrads2;
gradsQts = gradsQts224;
fun = fun41;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #51
nQuants = nQuants4;
spaceDims = spaceDims3;
nGrads = nGrads1;
gradsQts = gradsQts314;
fun = fun41;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #52
nQuants = nQuants4;
spaceDims = spaceDims3;
nGrads = nGrads2;
gradsQts = gradsQts324;
fun = fun41;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #53
nQuants = nQuants5;
spaceDims = spaceDims2;
nGrads = nGrads1;
gradsQts = gradsQts215;
fun = fun51;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #54
nQuants = nQuants5;
spaceDims = spaceDims2;
nGrads = nGrads2;
gradsQts = gradsQts225;
fun = fun51;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #55
nQuants = nQuants5;
spaceDims = spaceDims3;
nGrads = nGrads1;
gradsQts = gradsQts315;
fun = fun51;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #56
nQuants = nQuants5;
spaceDims = spaceDims3;
nGrads = nGrads2;
gradsQts = gradsQts325;
fun = fun51;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #57
nQuants = nQuants6;
spaceDims = spaceDims2;
nGrads = nGrads1;
gradsQts = gradsQts216;
fun = fun61;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #58
nQuants = nQuants6;
spaceDims = spaceDims2;
nGrads = nGrads2;
gradsQts = gradsQts226;
fun = fun61;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #59
nQuants = nQuants6;
spaceDims = spaceDims3;
nGrads = nGrads1;
gradsQts = gradsQts316;
fun = fun61;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #60
nQuants = nQuants6;
spaceDims = spaceDims3;
nGrads = nGrads2;
gradsQts = gradsQts326;
fun = fun61;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #61
nQuants = nQuants7;
spaceDims = spaceDims2;
nGrads = nGrads1;
gradsQts = gradsQts217;
fun = fun71;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #62
nQuants = nQuants7;
spaceDims = spaceDims2;
nGrads = nGrads2;
gradsQts = gradsQts227;
fun = fun71;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #63
nQuants = nQuants7;
spaceDims = spaceDims3;
nGrads = nGrads1;
gradsQts = gradsQts317;
fun = fun71;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #64
nQuants = nQuants7;
spaceDims = spaceDims3;
nGrads = nGrads2;
gradsQts = gradsQts327;
fun = fun71;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #65
nQuants = nQuants8;
spaceDims = spaceDims2;
nGrads = nGrads1;
gradsQts = gradsQts218;
fun = fun81;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #66
nQuants = nQuants8;
spaceDims = spaceDims2;
nGrads = nGrads2;
gradsQts = gradsQts228;
fun = fun81;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #67
nQuants = nQuants8;
spaceDims = spaceDims3;
nGrads = nGrads1;
gradsQts = gradsQts318;
fun = fun81;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #68
nQuants = nQuants8;
spaceDims = spaceDims3;
nGrads = nGrads2;
gradsQts = gradsQts328;
fun = fun81;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #69
nQuants = nQuants9;
spaceDims = spaceDims2;
nGrads = nGrads1;
gradsQts = gradsQts219;
fun = fun91;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #70
nQuants = nQuants9;
spaceDims = spaceDims2;
nGrads = nGrads2;
gradsQts = gradsQts229;
fun = fun91;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #71
nQuants = nQuants9;
spaceDims = spaceDims3;
nGrads = nGrads1;
gradsQts = gradsQts319;
fun = fun91;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #72
nQuants = nQuants9;
spaceDims = spaceDims3;
nGrads = nGrads2;
gradsQts = gradsQts329;
fun = fun91;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #73
nQuants = nQuants9;
spaceDims = spaceDims2;
nGrads = nGrads1;
gradsQts = gradsQts219;
fun = fun11;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #74
nQuants = nQuants9;
spaceDims = spaceDims2;
nGrads = nGrads2;
gradsQts = gradsQts229;
fun = fun11;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #75
nQuants = nQuants9;
spaceDims = spaceDims3;
nGrads = nGrads1;
gradsQts = gradsQts319;
fun = fun11;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #76
nQuants = nQuants9;
spaceDims = spaceDims3;
nGrads = nGrads2;
gradsQts = gradsQts329;
fun = fun11;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #77
nQuants = nQuants9;
spaceDims = spaceDims2;
nGrads = nGrads1;
gradsQts = gradsQts219;
fun = fun21;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #78
nQuants = nQuants9;
spaceDims = spaceDims2;
nGrads = nGrads2;
gradsQts = gradsQts229;
fun = fun21;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #79
nQuants = nQuants9;
spaceDims = spaceDims3;
nGrads = nGrads1;
gradsQts = gradsQts319;
fun = fun21;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #80
nQuants = nQuants9;
spaceDims = spaceDims3;
nGrads = nGrads2;
gradsQts = gradsQts329;
fun = fun21;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #81
nQuants = nQuants9;
spaceDims = spaceDims2;
nGrads = nGrads1;
gradsQts = gradsQts219;
fun = fun31;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #82
nQuants = nQuants9;
spaceDims = spaceDims2;
nGrads = nGrads2;
gradsQts = gradsQts229;
fun = fun31;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #83
nQuants = nQuants9;
spaceDims = spaceDims3;
nGrads = nGrads1;
gradsQts = gradsQts319;
fun = fun31;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #84
nQuants = nQuants9;
spaceDims = spaceDims3;
nGrads = nGrads2;
gradsQts = gradsQts329;
fun = fun31;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #85
nQuants = nQuants9;
spaceDims = spaceDims2;
nGrads = nGrads1;
gradsQts = gradsQts219;
fun = fun41;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #86
nQuants = nQuants9;
spaceDims = spaceDims2;
nGrads = nGrads2;
gradsQts = gradsQts229;
fun = fun41;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #87
nQuants = nQuants9;
spaceDims = spaceDims3;
nGrads = nGrads1;
gradsQts = gradsQts319;
fun = fun41;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #88
nQuants = nQuants9;
spaceDims = spaceDims3;
nGrads = nGrads2;
gradsQts = gradsQts329;
fun = fun41;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #89
nQuants = nQuants9;
spaceDims = spaceDims2;
nGrads = nGrads1;
gradsQts = gradsQts219;
fun = fun51;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #90
nQuants = nQuants9;
spaceDims = spaceDims2;
nGrads = nGrads2;
gradsQts = gradsQts229;
fun = fun51;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #91
nQuants = nQuants9;
spaceDims = spaceDims3;
nGrads = nGrads1;
gradsQts = gradsQts319;
fun = fun51;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #92
nQuants = nQuants9;
spaceDims = spaceDims3;
nGrads = nGrads2;
gradsQts = gradsQts329;
fun = fun51;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #93
nQuants = nQuants9;
spaceDims = spaceDims2;
nGrads = nGrads1;
gradsQts = gradsQts219;
fun = fun61;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #94
nQuants = nQuants9;
spaceDims = spaceDims2;
nGrads = nGrads2;
gradsQts = gradsQts229;
fun = fun61;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #95
nQuants = nQuants9;
spaceDims = spaceDims3;
nGrads = nGrads1;
gradsQts = gradsQts319;
fun = fun61;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #96
nQuants = nQuants9;
spaceDims = spaceDims3;
nGrads = nGrads2;
gradsQts = gradsQts329;
fun = fun61;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #97
nQuants = nQuants9;
spaceDims = spaceDims2;
nGrads = nGrads1;
gradsQts = gradsQts219;
fun = fun71;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #98
nQuants = nQuants9;
spaceDims = spaceDims2;
nGrads = nGrads2;
gradsQts = gradsQts229;
fun = fun71;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #99
nQuants = nQuants9;
spaceDims = spaceDims3;
nGrads = nGrads1;
gradsQts = gradsQts319;
fun = fun71;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #100
nQuants = nQuants9;
spaceDims = spaceDims3;
nGrads = nGrads2;
gradsQts = gradsQts329;
fun = fun71;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #101
nQuants = nQuants9;
spaceDims = spaceDims2;
nGrads = nGrads1;
gradsQts = gradsQts219;
fun = fun81;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #102
nQuants = nQuants9;
spaceDims = spaceDims2;
nGrads = nGrads2;
gradsQts = gradsQts229;
fun = fun81;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #103
nQuants = nQuants9;
spaceDims = spaceDims3;
nGrads = nGrads1;
gradsQts = gradsQts319;
fun = fun81;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #104
nQuants = nQuants9;
spaceDims = spaceDims3;
nGrads = nGrads2;
gradsQts = gradsQts329;
fun = fun81;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #105
nQuants = nQuants9;
spaceDims = spaceDims2;
nGrads = nGrads1;
gradsQts = gradsQts219;
fun = fun91;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #106
nQuants = nQuants9;
spaceDims = spaceDims2;
nGrads = nGrads2;
gradsQts = gradsQts229;
fun = fun91;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #107
nQuants = nQuants9;
spaceDims = spaceDims3;
nGrads = nGrads1;
gradsQts = gradsQts319;
fun = fun91;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #108
nQuants = nQuants9;
spaceDims = spaceDims3;
nGrads = nGrads2;
gradsQts = gradsQts329;
fun = fun91;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #109
nQuants = nQuants1;
spaceDims =spaceDims2;
nGrads = nGrads1;
gradsQts = gradsQts211;
fun = fun1;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #110
nQuants = nQuants2;
spaceDims =spaceDims2;
nGrads = nGrads1;
gradsQts = gradsQts212;
fun = fun1;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #111
nQuants = nQuants3;
spaceDims =spaceDims2;
nGrads = nGrads1;
gradsQts = gradsQts213;
fun = fun1;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #112
nQuants = nQuants4;
spaceDims =spaceDims2;
nGrads = nGrads1;
gradsQts = gradsQts214;
fun = fun1;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #113
nQuants = nQuants5;
spaceDims =spaceDims2;
nGrads = nGrads1;
gradsQts = gradsQts215;
fun = fun1;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #114
nQuants = nQuants6;
spaceDims =spaceDims2;
nGrads = nGrads1;
gradsQts = gradsQts216;
fun = fun1;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #115
nQuants = nQuants7;
spaceDims =spaceDims2;
nGrads = nGrads1;
gradsQts = gradsQts217;
fun = fun1;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #116
nQuants = nQuants8;
spaceDims =spaceDims2;
nGrads = nGrads1;
gradsQts = gradsQts218;
fun = fun1;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #117
nQuants = nQuants9;
spaceDims =spaceDims2;
nGrads = nGrads1;
gradsQts = gradsQts219;
fun = fun1;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #118
nQuants = nQuants1;
spaceDims =spaceDims2;
nGrads = nGrads2;
gradsQts = gradsQts221;
fun = fun1;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #119
nQuants = nQuants2;
spaceDims =spaceDims2;
nGrads = nGrads2;
gradsQts = gradsQts222;
fun = fun1;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #120
nQuants = nQuants3;
spaceDims =spaceDims2;
nGrads = nGrads2;
gradsQts = gradsQts223;
fun = fun1;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #121
nQuants = nQuants4;
spaceDims =spaceDims2;
nGrads = nGrads2;
gradsQts = gradsQts224;
fun = fun1;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #122
nQuants = nQuants5;
spaceDims =spaceDims2;
nGrads = nGrads2;
gradsQts = gradsQts225;
fun = fun1;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #123
nQuants = nQuants6;
spaceDims =spaceDims2;
nGrads = nGrads2;
gradsQts = gradsQts226;
fun = fun1;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #124
nQuants = nQuants7;
spaceDims =spaceDims2;
nGrads = nGrads2;
gradsQts = gradsQts227;
fun = fun1;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #125
nQuants = nQuants8;
spaceDims =spaceDims2;
nGrads = nGrads2;
gradsQts = gradsQts228;
fun = fun1;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #126
nQuants = nQuants9;
spaceDims =spaceDims2;
nGrads = nGrads2;
gradsQts = gradsQts229;
fun = fun1;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #127
nQuants = nQuants1;
spaceDims =spaceDims3;
nGrads = nGrads1;
gradsQts = gradsQts311;
fun = fun1;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #128
nQuants = nQuants2;
spaceDims =spaceDims3;
nGrads = nGrads1;
gradsQts = gradsQts312;
fun = fun1;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #129
nQuants = nQuants3;
spaceDims =spaceDims3;
nGrads = nGrads1;
gradsQts = gradsQts313;
fun = fun1;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #130
nQuants = nQuants4;
spaceDims =spaceDims3;
nGrads = nGrads1;
gradsQts = gradsQts314;
fun = fun1;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #131
nQuants = nQuants5;
spaceDims =spaceDims3;
nGrads = nGrads1;
gradsQts = gradsQts315;
fun = fun1;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #132
nQuants = nQuants6;
spaceDims =spaceDims3;
nGrads = nGrads1;
gradsQts = gradsQts316;
fun = fun1;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #133
nQuants = nQuants7;
spaceDims =spaceDims3;
nGrads = nGrads1;
gradsQts = gradsQts317;
fun = fun1;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #134
nQuants = nQuants8;
spaceDims =spaceDims3;
nGrads = nGrads1;
gradsQts = gradsQts318;
fun = fun1;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #135
nQuants = nQuants9;
spaceDims =spaceDims3;
nGrads = nGrads1;
gradsQts = gradsQts319;
fun = fun1;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #136
nQuants = nQuants1;
spaceDims =spaceDims3;
nGrads = nGrads2;
gradsQts = gradsQts321;
fun = fun1;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #137
nQuants = nQuants2;
spaceDims =spaceDims3;
nGrads = nGrads2;
gradsQts = gradsQts322;
fun = fun1;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #138
nQuants = nQuants3;
spaceDims =spaceDims3;
nGrads = nGrads2;
gradsQts = gradsQts323;
fun = fun1;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #139
nQuants = nQuants4;
spaceDims =spaceDims3;
nGrads = nGrads2;
gradsQts = gradsQts324;
fun = fun1;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #140
nQuants = nQuants5;
spaceDims =spaceDims3;
nGrads = nGrads2;
gradsQts = gradsQts325;
fun = fun1;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #141
nQuants = nQuants6;
spaceDims =spaceDims3;
nGrads = nGrads2;
gradsQts = gradsQts326;
fun = fun1;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #142
nQuants = nQuants7;
spaceDims =spaceDims3;
nGrads = nGrads2;
gradsQts = gradsQts327;
fun = fun1;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #143
nQuants = nQuants8;
spaceDims =spaceDims3;
nGrads = nGrads2;
gradsQts = gradsQts328;
fun = fun1;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #144
nQuants = nQuants9;
spaceDims =spaceDims3;
nGrads = nGrads2;
gradsQts = gradsQts329;
fun = fun1;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #145
nQuants = nQuants1;
spaceDims =spaceDims2;
nGrads = nGrads1;
gradsQts = gradsQts211;
fun = fun1;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #146
nQuants = nQuants1;
spaceDims =spaceDims2;
nGrads = nGrads2;
gradsQts = gradsQts221;
fun = fun1;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #147
nQuants = nQuants1;
spaceDims =spaceDims3;
nGrads = nGrads1;
gradsQts = gradsQts311;
fun = fun1;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #148
nQuants = nQuants1;
spaceDims =spaceDims3;
nGrads = nGrads2;
gradsQts = gradsQts321;
fun = fun1;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #149
nQuants = nQuants2;
spaceDims =spaceDims2;
nGrads = nGrads1;
gradsQts = gradsQts212;
fun = fun2;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #150
nQuants = nQuants2;
spaceDims =spaceDims2;
nGrads = nGrads2;
gradsQts = gradsQts222;
fun = fun2;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #151
nQuants = nQuants2;
spaceDims =spaceDims3;
nGrads = nGrads1;
gradsQts = gradsQts312;
fun = fun2;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #152
nQuants = nQuants2;
spaceDims =spaceDims3;
nGrads = nGrads2;
gradsQts = gradsQts322;
fun = fun2;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #153
nQuants = nQuants3;
spaceDims =spaceDims2;
nGrads = nGrads1;
gradsQts = gradsQts213;
fun = fun3;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #154
nQuants = nQuants3;
spaceDims =spaceDims2;
nGrads = nGrads2;
gradsQts = gradsQts223;
fun = fun3;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #155
nQuants = nQuants3;
spaceDims =spaceDims3;
nGrads = nGrads1;
gradsQts = gradsQts313;
fun = fun3;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #156
nQuants = nQuants3;
spaceDims =spaceDims3;
nGrads = nGrads2;
gradsQts = gradsQts323;
fun = fun3;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #157
nQuants = nQuants4;
spaceDims =spaceDims2;
nGrads = nGrads1;
gradsQts = gradsQts214;
fun = fun4;
expSize = [1, 1, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #158
nQuants = nQuants4;
spaceDims =spaceDims2;
nGrads = nGrads2;
gradsQts = gradsQts224;
fun = fun4;
expSize = [1, 1, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #159
nQuants = nQuants4;
spaceDims =spaceDims3;
nGrads = nGrads1;
gradsQts = gradsQts314;
fun = fun4;
expSize = [1, 1, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #160
nQuants = nQuants4;
spaceDims =spaceDims3;
nGrads = nGrads2;
gradsQts = gradsQts324;
fun = fun4;
expSize = [1, 1, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #161
nQuants = nQuants5;
spaceDims =spaceDims2;
nGrads = nGrads1;
gradsQts = gradsQts215;
fun = fun5;
expSize = [1, 1, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #162
nQuants = nQuants5;
spaceDims =spaceDims2;
nGrads = nGrads2;
gradsQts = gradsQts225;
fun = fun5;
expSize = [1, 1, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #163
nQuants = nQuants5;
spaceDims =spaceDims3;
nGrads = nGrads1;
gradsQts = gradsQts315;
fun = fun5;
expSize = [1, 1, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #164
nQuants = nQuants5;
spaceDims =spaceDims3;
nGrads = nGrads2;
gradsQts = gradsQts325;
fun = fun5;
expSize = [1, 1, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #165
nQuants = nQuants6;
spaceDims =spaceDims2;
nGrads = nGrads1;
gradsQts = gradsQts216;
fun = fun6;
expSize = [1, 1, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #166
nQuants = nQuants6;
spaceDims =spaceDims2;
nGrads = nGrads2;
gradsQts = gradsQts226;
fun = fun6;
expSize = [1, 1, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #167
nQuants = nQuants6;
spaceDims =spaceDims3;
nGrads = nGrads1;
gradsQts = gradsQts316;
fun = fun6;
expSize = [1, 1, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #168
nQuants = nQuants6;
spaceDims =spaceDims3;
nGrads = nGrads2;
gradsQts = gradsQts326;
fun = fun6;
expSize = [1, 1, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #169
nQuants = nQuants7;
spaceDims =spaceDims2;
nGrads = nGrads1;
gradsQts = gradsQts217;
fun = fun7;
expSize = [1, 1, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #170
nQuants = nQuants7;
spaceDims =spaceDims2;
nGrads = nGrads2;
gradsQts = gradsQts227;
fun = fun7;
expSize = [1, 1, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #171
nQuants = nQuants7;
spaceDims =spaceDims3;
nGrads = nGrads1;
gradsQts = gradsQts317;
fun = fun7;
expSize = [1, 1, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #172
nQuants = nQuants7;
spaceDims =spaceDims3;
nGrads = nGrads2;
gradsQts = gradsQts327;
fun = fun7;
expSize = [1, 1, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #173
nQuants = nQuants8;
spaceDims =spaceDims2;
nGrads = nGrads1;
gradsQts = gradsQts218;
fun = fun8;
expSize = [1, 1, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #174
nQuants = nQuants8;
spaceDims =spaceDims2;
nGrads = nGrads2;
gradsQts = gradsQts228;
fun = fun8;
expSize = [1, 1, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #175
nQuants = nQuants8;
spaceDims =spaceDims3;
nGrads = nGrads1;
gradsQts = gradsQts318;
fun = fun8;
expSize = [1, 1, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #176
nQuants = nQuants8;
spaceDims =spaceDims3;
nGrads = nGrads2;
gradsQts = gradsQts328;
fun = fun8;
expSize = [1, 1, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #177
nQuants = nQuants9;
spaceDims =spaceDims2;
nGrads = nGrads1;
gradsQts = gradsQts219;
fun = fun9;
expSize = [1, 1, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #178
nQuants = nQuants9;
spaceDims =spaceDims2;
nGrads = nGrads2;
gradsQts = gradsQts229;
fun = fun9;
expSize = [1, 1, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #179
nQuants = nQuants9;
spaceDims =spaceDims3;
nGrads = nGrads1;
gradsQts = gradsQts319;
fun = fun9;
expSize = [1, 1, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #180
nQuants = nQuants9;
spaceDims =spaceDims3;
nGrads = nGrads2;
gradsQts = gradsQts329;
fun = fun9;
expSize = [1, 1, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #181
nQuants = nQuants9;
spaceDims =spaceDims2;
nGrads = nGrads1;
gradsQts = gradsQts219;
fun = fun1;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #182
nQuants = nQuants9;
spaceDims =spaceDims2;
nGrads = nGrads2;
gradsQts = gradsQts229;
fun = fun1;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #183
nQuants = nQuants9;
spaceDims =spaceDims3;
nGrads = nGrads1;
gradsQts = gradsQts319;
fun = fun1;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #184
nQuants = nQuants9;
spaceDims =spaceDims3;
nGrads = nGrads2;
gradsQts = gradsQts329;
fun = fun1;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #185
nQuants = nQuants9;
spaceDims =spaceDims2;
nGrads = nGrads1;
gradsQts = gradsQts219;
fun = fun2;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #186
nQuants = nQuants9;
spaceDims =spaceDims2;
nGrads = nGrads2;
gradsQts = gradsQts229;
fun = fun2;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #187
nQuants = nQuants9;
spaceDims =spaceDims3;
nGrads = nGrads1;
gradsQts = gradsQts319;
fun = fun2;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #188
nQuants = nQuants9;
spaceDims =spaceDims3;
nGrads = nGrads2;
gradsQts = gradsQts329;
fun = fun2;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #189
nQuants = nQuants9;
spaceDims =spaceDims2;
nGrads = nGrads1;
gradsQts = gradsQts219;
fun = fun3;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #190
nQuants = nQuants9;
spaceDims =spaceDims2;
nGrads = nGrads2;
gradsQts = gradsQts229;
fun = fun3;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #191
nQuants = nQuants9;
spaceDims =spaceDims3;
nGrads = nGrads1;
gradsQts = gradsQts319;
fun = fun3;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #192
nQuants = nQuants9;
spaceDims =spaceDims3;
nGrads = nGrads2;
gradsQts = gradsQts329;
fun = fun3;
expSize = [spaceDims, spaceDims, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #193
nQuants = nQuants9;
spaceDims =spaceDims2;
nGrads = nGrads1;
gradsQts = gradsQts219;
fun = fun4;
expSize = [1, 1, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #194
nQuants = nQuants9;
spaceDims =spaceDims2;
nGrads = nGrads2;
gradsQts = gradsQts229;
fun = fun4;
expSize = [1, 1, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #195
nQuants = nQuants9;
spaceDims =spaceDims3;
nGrads = nGrads1;
gradsQts = gradsQts319;
fun = fun4;
expSize = [1, 1, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #196
nQuants = nQuants9;
spaceDims =spaceDims3;
nGrads = nGrads2;
gradsQts = gradsQts329;
fun = fun4;
expSize = [1, 1, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #197
nQuants = nQuants9;
spaceDims =spaceDims2;
nGrads = nGrads1;
gradsQts = gradsQts219;
fun = fun5;
expSize = [1, 1, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #198
nQuants = nQuants9;
spaceDims =spaceDims2;
nGrads = nGrads2;
gradsQts = gradsQts229;
fun = fun5;
expSize = [1, 1, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #199
nQuants = nQuants9;
spaceDims =spaceDims3;
nGrads = nGrads1;
gradsQts = gradsQts319;
fun = fun5;
expSize = [1, 1, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #200
nQuants = nQuants9;
spaceDims =spaceDims3;
nGrads = nGrads2;
gradsQts = gradsQts329;
fun = fun5;
expSize = [1, 1, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #201
nQuants = nQuants9;
spaceDims =spaceDims2;
nGrads = nGrads1;
gradsQts = gradsQts219;
fun = fun6;
expSize = [1, 1, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #202
nQuants = nQuants9;
spaceDims =spaceDims2;
nGrads = nGrads2;
gradsQts = gradsQts229;
fun = fun6;
expSize = [1, 1, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #203
nQuants = nQuants9;
spaceDims =spaceDims3;
nGrads = nGrads1;
gradsQts = gradsQts319;
fun = fun6;
expSize = [1, 1, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #204
nQuants = nQuants9;
spaceDims =spaceDims3;
nGrads = nGrads2;
gradsQts = gradsQts329;
fun = fun6;
expSize = [1, 1, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #205
nQuants = nQuants9;
spaceDims =spaceDims2;
nGrads = nGrads1;
gradsQts = gradsQts219;
fun = fun7;
expSize = [1, 1, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #206
nQuants = nQuants9;
spaceDims =spaceDims2;
nGrads = nGrads2;
gradsQts = gradsQts229;
fun = fun7;
expSize = [1, 1, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #207
nQuants = nQuants9;
spaceDims =spaceDims3;
nGrads = nGrads1;
gradsQts = gradsQts319;
fun = fun7;
expSize = [1, 1, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #208
nQuants = nQuants9;
spaceDims =spaceDims3;
nGrads = nGrads2;
gradsQts = gradsQts329;
fun = fun7;
expSize = [1, 1, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #209
nQuants = nQuants9;
spaceDims =spaceDims2;
nGrads = nGrads1;
gradsQts = gradsQts219;
fun = fun8;
expSize = [1, 1, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #210
nQuants = nQuants9;
spaceDims =spaceDims2;
nGrads = nGrads2;
gradsQts = gradsQts229;
fun = fun8;
expSize = [1, 1, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #211
nQuants = nQuants9;
spaceDims =spaceDims3;
nGrads = nGrads1;
gradsQts = gradsQts319;
fun = fun8;
expSize = [1, 1, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #212
nQuants = nQuants9;
spaceDims =spaceDims3;
nGrads = nGrads2;
gradsQts = gradsQts329;
fun = fun8;
expSize = [1, 1, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #213
nQuants = nQuants9;
spaceDims =spaceDims2;
nGrads = nGrads1;
gradsQts = gradsQts219;
fun = fun9;
expSize = [1, 1, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #214
nQuants = nQuants9;
spaceDims =spaceDims2;
nGrads = nGrads2;
gradsQts = gradsQts229;
fun = fun9;
expSize = [1, 1, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #215
nQuants = nQuants9;
spaceDims =spaceDims3;
nGrads = nGrads1;
gradsQts = gradsQts319;
fun = fun9;
expSize = [1, 1, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test output size #216
nQuants = nQuants9;
spaceDims =spaceDims3;
nGrads = nGrads2;
gradsQts = gradsQts329;
fun = fun9;
expSize = [1, 1, nGrads];
funVals = evalFun(fun, gradsQts);
actSize = [size(funVals, 1), size(funVals, 2), size(funVals, 3)];
assert( all(expSize == actSize), 'Output not of expected size.');

%% Test actual output #1
grad = [
    1, 2;
    3, 4;
];
nQuants = nQuants1;
gradsQts = gradsQuants(grad, nQuants);
fun = fun11;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #2
grad = [
    1, 2;
    3, 4;
];
nQuants = nQuants2;
gradsQts = gradsQuants(grad, nQuants);
fun = fun11;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #3
grad = [
    1, 2;
    3, 4;
];
nQuants = nQuants3;
gradsQts = gradsQuants(grad, nQuants);
fun = fun11;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #4
grad = [
    1, 2;
    3, 4;
];
nQuants = nQuants4;
gradsQts = gradsQuants(grad, nQuants);
fun = fun11;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #5
grad = [
    1, 2;
    3, 4;
];
nQuants = nQuants5;
gradsQts = gradsQuants(grad, nQuants);
fun = fun11;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #6
grad = [
    1, 2;
    3, 4;
];
nQuants = nQuants6;
gradsQts = gradsQuants(grad, nQuants);
fun = fun11;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #7
grad = [
    1, 2;
    3, 4;
];
nQuants = nQuants7;
gradsQts = gradsQuants(grad, nQuants);
fun = fun11;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #8
grad = [
    1, 2;
    3, 4;
];
nQuants = nQuants8;
gradsQts = gradsQuants(grad, nQuants);
fun = fun11;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #9
grad = [
    1, 2;
    3, 4;
];
nQuants = nQuants9;
gradsQts = gradsQuants(grad, nQuants);
fun = fun11;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #10
grads = [];
grad1 = [
    1, 2;
    3, 4;
];
grad2 = [
    5, 6;
    7, 8;
];
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants1;
gradsQts = gradsQuants(grads, nQuants);
fun = fun11;
actVal = evalFun(fun, gradsQts);
expVal = grads;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #11
grads = [];
grad1 = [
    1, 2;
    3, 4;
];
grad2 = [
    5, 6;
    7, 8;
];
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants2;
gradsQts = gradsQuants(grads, nQuants);
fun = fun11;
actVal = evalFun(fun, gradsQts);
expVal = grads;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #12
grads = [];
grad1 = [
    1, 2;
    3, 4;
];
grad2 = [
    5, 6;
    7, 8;
];
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants3;
gradsQts = gradsQuants(grads, nQuants);
fun = fun11;
actVal = evalFun(fun, gradsQts);
expVal = grads;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #13
grads = [];
grad1 = [
    1, 2;
    3, 4;
];
grad2 = [
    5, 6;
    7, 8;
];
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants4;
gradsQts = gradsQuants(grads, nQuants);
fun = fun11;
actVal = evalFun(fun, gradsQts);
expVal = grads;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #14
grads = [];
grad1 = [
    1, 2;
    3, 4;
];
grad2 = [
    5, 6;
    7, 8;
];
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants5;
gradsQts = gradsQuants(grads, nQuants);
fun = fun11;
actVal = evalFun(fun, gradsQts);
expVal = grads;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #15
grads = [];
grad1 = [
    1, 2;
    3, 4;
];
grad2 = [
    5, 6;
    7, 8;
];
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants6;
gradsQts = gradsQuants(grads, nQuants);
fun = fun11;
actVal = evalFun(fun, gradsQts);
expVal = grads;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #16
grads = [];
grad1 = [
    1, 2;
    3, 4;
];
grad2 = [
    5, 6;
    7, 8;
];
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants7;
gradsQts = gradsQuants(grads, nQuants);
fun = fun11;
actVal = evalFun(fun, gradsQts);
expVal = grads;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #17
grads = [];
grad1 = [
    1, 2;
    3, 4;
];
grad2 = [
    5, 6;
    7, 8;
];
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants8;
gradsQts = gradsQuants(grads, nQuants);
fun = fun11;
actVal = evalFun(fun, gradsQts);
expVal = grads;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #18
grads = [];
grad1 = [
    1, 2;
    3, 4;
];
grad2 = [
    5, 6;
    7, 8;
];
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants9;
gradsQts = gradsQuants(grads, nQuants);
fun = fun11;
actVal = evalFun(fun, gradsQts);
expVal = grads;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #19
grad = [
    1, 2, 3;
    4, 5, 6;
    7, 8, 9;
];
nQuants = nQuants1;
gradsQts = gradsQuants(grad, nQuants);
fun = fun11;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #20
grad = [
    1, 2, 3;
    4, 5, 6;
    7, 8, 9;
];
nQuants = nQuants2;
gradsQts = gradsQuants(grad, nQuants);
fun = fun11;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #21
grad = [
    1, 2, 3;
    4, 5, 6;
    7, 8, 9;
];
nQuants = nQuants3;
gradsQts = gradsQuants(grad, nQuants);
fun = fun11;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #22
grad = [
    1, 2, 3;
    4, 5, 6;
    7, 8, 9;
];
nQuants = nQuants4;
gradsQts = gradsQuants(grad, nQuants);
fun = fun11;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #23
grad = [
    1, 2, 3;
    4, 5, 6;
    7, 8, 9;
];
nQuants = nQuants5;
gradsQts = gradsQuants(grad, nQuants);
fun = fun11;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #24
grad = [
    1, 2, 3;
    4, 5, 6;
    7, 8, 9;
];
nQuants = nQuants6;
gradsQts = gradsQuants(grad, nQuants);
fun = fun11;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #25
grad = [
    1, 2, 3;
    4, 5, 6;
    7, 8, 9;
];
nQuants = nQuants7;
gradsQts = gradsQuants(grad, nQuants);
fun = fun11;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #26
grad = [
    1, 2, 3;
    4, 5, 6;
    7, 8, 9;
];
nQuants = nQuants8;
gradsQts = gradsQuants(grad, nQuants);
fun = fun11;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #27
grad = [
    1, 2, 3;
    4, 5, 6;
    7, 8, 9;
];
nQuants = nQuants9;
gradsQts = gradsQuants(grad, nQuants);
fun = fun11;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #28
grads = [];
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
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants1;
gradsQts = gradsQuants(grads, nQuants);
fun = fun11;
actVal = evalFun(fun, gradsQts);
expVal = grads;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #29
grads = [];
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
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants2;
gradsQts = gradsQuants(grads, nQuants);
fun = fun11;
actVal = evalFun(fun, gradsQts);
expVal = grads;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #30
grads = [];
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
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants3;
gradsQts = gradsQuants(grads, nQuants);
fun = fun11;
actVal = evalFun(fun, gradsQts);
expVal = grads;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #31
grads = [];
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
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants4;
gradsQts = gradsQuants(grads, nQuants);
fun = fun11;
actVal = evalFun(fun, gradsQts);
expVal = grads;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #32
grads = [];
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
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants5;
gradsQts = gradsQuants(grads, nQuants);
fun = fun11;
actVal = evalFun(fun, gradsQts);
expVal = grads;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #33
grads = [];
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
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants6;
gradsQts = gradsQuants(grads, nQuants);
fun = fun11;
actVal = evalFun(fun, gradsQts);
expVal = grads;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #34
grads = [];
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
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants7;
gradsQts = gradsQuants(grads, nQuants);
fun = fun11;
actVal = evalFun(fun, gradsQts);
expVal = grads;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #35
grads = [];
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
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants8;
gradsQts = gradsQuants(grads, nQuants);
fun = fun11;
actVal = evalFun(fun, gradsQts);
expVal = grads;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #36
grads = [];
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
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants9;
gradsQts = gradsQuants(grads, nQuants);
fun = fun11;
actVal = evalFun(fun, gradsQts);
expVal = grads;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #37
grad = [
     1,  2,  4;
     7, 11, 16;
    22, 29, 37;
];
nQuants = nQuants1;
gradsQts = gradsQuants(grad, nQuants);
fun = fun11;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #38
grad = [
     1,  2,  4;
     7, 11, 16;
    22, 29, 37;
];
nQuants = nQuants2;
gradsQts = gradsQuants(grad, nQuants);
fun = fun11;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #39
grad = [
     1,  2,  4;
     7, 11, 16;
    22, 29, 37;
];
nQuants = nQuants3;
gradsQts = gradsQuants(grad, nQuants);
fun = fun11;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #40
grad = [
     1,  2,  4;
     7, 11, 16;
    22, 29, 37;
];
nQuants = nQuants4;
gradsQts = gradsQuants(grad, nQuants);
fun = fun11;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #41
grad = [
     1,  2,  4;
     7, 11, 16;
    22, 29, 37;
];
nQuants = nQuants5;
gradsQts = gradsQuants(grad, nQuants);
fun = fun11;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #42
grad = [
     1,  2,  4;
     7, 11, 16;
    22, 29, 37;
];
nQuants = nQuants6;
gradsQts = gradsQuants(grad, nQuants);
fun = fun11;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #43
grad = [
     1,  2,  4;
     7, 11, 16;
    22, 29, 37;
];
nQuants = nQuants7;
gradsQts = gradsQuants(grad, nQuants);
fun = fun11;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #44
grad = [
     1,  2,  4;
     7, 11, 16;
    22, 29, 37;
];
nQuants = nQuants8;
gradsQts = gradsQuants(grad, nQuants);
fun = fun11;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #45
grad = [
     1,  2,  4;
     7, 11, 16;
    22, 29, 37;
];
nQuants = nQuants9;
gradsQts = gradsQuants(grad, nQuants);
fun = fun11;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #46
grad = [
    1, 2;
    3, 4;
];
nQuants = nQuants1;
gradsQts = gradsQuants(grad, nQuants);
fun = fun11;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #47
grads = [];
grad1 = [
    1, 2;
    3, 4;
];
grad2 = [
    5, 6;
    7, 8;
];
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants1;
gradsQts = gradsQuants(grads, nQuants);
fun = fun11;
actVal = evalFun(fun, gradsQts);
expVal = grads;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #48
grad = [
    1, 2, 3;
    4, 5, 6;
    7, 8, 9;
];
nQuants = nQuants1;
gradsQts = gradsQuants(grad, nQuants);
fun = fun11;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #49
grads = [];
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
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants1;
gradsQts = gradsQuants(grads, nQuants);
fun = fun11;
actVal = evalFun(fun, gradsQts);
expVal = grads;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #50
grad = [
     1,  2,  4;
     7, 11, 16;
    22, 29, 37;
];
nQuants = nQuants1;
gradsQts = gradsQuants(grad, nQuants);
fun = fun11;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #51
grad = [
    1, 2;
    3, 4;
];
nQuants = nQuants2;
gradsQts = gradsQuants(grad, nQuants);
fun = fun21;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #52
grads = [];
grad1 = [
    1, 2;
    3, 4;
];
grad2 = [
    5, 6;
    7, 8;
];
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants2;
gradsQts = gradsQuants(grads, nQuants);
fun = fun21;
actVal = evalFun(fun, gradsQts);
expVal = grads;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #53
grad = [
    1, 2, 3;
    4, 5, 6;
    7, 8, 9;
];
nQuants = nQuants2;
gradsQts = gradsQuants(grad, nQuants);
fun = fun21;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #54
grads = [];
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
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants2;
gradsQts = gradsQuants(grads, nQuants);
fun = fun21;
actVal = evalFun(fun, gradsQts);
expVal = grads;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #55
grad = [
     1,  2,  4;
     7, 11, 16;
    22, 29, 37;
];
nQuants = nQuants2;
gradsQts = gradsQuants(grad, nQuants);
fun = fun21;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #56
grad = [
    1, 2;
    3, 4;
];
nQuants = nQuants3;
gradsQts = gradsQuants(grad, nQuants);
fun = fun31;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #57
grads = [];
grad1 = [
    1, 2;
    3, 4;
];
grad2 = [
    5, 6;
    7, 8;
];
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants3;
gradsQts = gradsQuants(grads, nQuants);
fun = fun31;
actVal = evalFun(fun, gradsQts);
expVal = grads;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #58
grad = [
    1, 2, 3;
    4, 5, 6;
    7, 8, 9;
];
nQuants = nQuants3;
gradsQts = gradsQuants(grad, nQuants);
fun = fun31;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #59
grads = [];
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
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants3;
gradsQts = gradsQuants(grads, nQuants);
fun = fun31;
actVal = evalFun(fun, gradsQts);
expVal = grads;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #60
grad = [
     1,  2,  4;
     7, 11, 16;
    22, 29, 37;
];
nQuants = nQuants3;
gradsQts = gradsQuants(grad, nQuants);
fun = fun31;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #61
grad = [
    1, 2;
    3, 4;
];
nQuants = nQuants4;
gradsQts = gradsQuants(grad, nQuants);
fun = fun41;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #62
grads = [];
grad1 = [
    1, 2;
    3, 4;
];
grad2 = [
    5, 6;
    7, 8;
];
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants4;
gradsQts = gradsQuants(grads, nQuants);
fun = fun41;
actVal = evalFun(fun, gradsQts);
expVal = grads;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #63
grad = [
    1, 2, 3;
    4, 5, 6;
    7, 8, 9;
];
nQuants = nQuants4;
gradsQts = gradsQuants(grad, nQuants);
fun = fun41;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #64
grads = [];
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
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants4;
gradsQts = gradsQuants(grads, nQuants);
fun = fun41;
actVal = evalFun(fun, gradsQts);
expVal = grads;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #65
grad = [
     1,  2,  4;
     7, 11, 16;
    22, 29, 37;
];
nQuants = nQuants4;
gradsQts = gradsQuants(grad, nQuants);
fun = fun41;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #66
grad = [
    1, 2;
    3, 4;
];
nQuants = nQuants5;
gradsQts = gradsQuants(grad, nQuants);
fun = fun51;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #67
grads = [];
grad1 = [
    1, 2;
    3, 4;
];
grad2 = [
    5, 6;
    7, 8;
];
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants5;
gradsQts = gradsQuants(grads, nQuants);
fun = fun51;
actVal = evalFun(fun, gradsQts);
expVal = grads;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #68
grad = [
    1, 2, 3;
    4, 5, 6;
    7, 8, 9;
];
nQuants = nQuants5;
gradsQts = gradsQuants(grad, nQuants);
fun = fun51;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #69
grads = [];
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
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants5;
gradsQts = gradsQuants(grads, nQuants);
fun = fun51;
actVal = evalFun(fun, gradsQts);
expVal = grads;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #70
grad = [
     1,  2,  4;
     7, 11, 16;
    22, 29, 37;
];
nQuants = nQuants5;
gradsQts = gradsQuants(grad, nQuants);
fun = fun51;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #71
grad = [
    1, 2;
    3, 4;
];
nQuants = nQuants6;
gradsQts = gradsQuants(grad, nQuants);
fun = fun61;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #72
grads = [];
grad1 = [
    1, 2;
    3, 4;
];
grad2 = [
    5, 6;
    7, 8;
];
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants6;
gradsQts = gradsQuants(grads, nQuants);
fun = fun61;
actVal = evalFun(fun, gradsQts);
expVal = grads;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #73
grad = [
    1, 2, 3;
    4, 5, 6;
    7, 8, 9;
];
nQuants = nQuants6;
gradsQts = gradsQuants(grad, nQuants);
fun = fun61;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #74
grads = [];
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
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants6;
gradsQts = gradsQuants(grads, nQuants);
fun = fun61;
actVal = evalFun(fun, gradsQts);
expVal = grads;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #75
grad = [
     1,  2,  4;
     7, 11, 16;
    22, 29, 37;
];
nQuants = nQuants6;
gradsQts = gradsQuants(grad, nQuants);
fun = fun61;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #76
grad = [
    1, 2;
    3, 4;
];
nQuants = nQuants7;
gradsQts = gradsQuants(grad, nQuants);
fun = fun71;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #77
grads = [];
grad1 = [
    1, 2;
    3, 4;
];
grad2 = [
    5, 6;
    7, 8;
];
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants7;
gradsQts = gradsQuants(grads, nQuants);
fun = fun71;
actVal = evalFun(fun, gradsQts);
expVal = grads;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #78
grad = [
    1, 2, 3;
    4, 5, 6;
    7, 8, 9;
];
nQuants = nQuants7;
gradsQts = gradsQuants(grad, nQuants);
fun = fun71;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #79
grads = [];
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
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants7;
gradsQts = gradsQuants(grads, nQuants);
fun = fun71;
actVal = evalFun(fun, gradsQts);
expVal = grads;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #80
grad = [
     1,  2,  4;
     7, 11, 16;
    22, 29, 37;
];
nQuants = nQuants7;
gradsQts = gradsQuants(grad, nQuants);
fun = fun71;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #81
grad = [
    1, 2;
    3, 4;
];
nQuants = nQuants8;
gradsQts = gradsQuants(grad, nQuants);
fun = fun81;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #82
grads = [];
grad1 = [
    1, 2;
    3, 4;
];
grad2 = [
    5, 6;
    7, 8;
];
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants8;
gradsQts = gradsQuants(grads, nQuants);
fun = fun81;
actVal = evalFun(fun, gradsQts);
expVal = grads;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #83
grad = [
    1, 2, 3;
    4, 5, 6;
    7, 8, 9;
];
nQuants = nQuants8;
gradsQts = gradsQuants(grad, nQuants);
fun = fun81;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #84
grads = [];
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
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants8;
gradsQts = gradsQuants(grads, nQuants);
fun = fun81;
actVal = evalFun(fun, gradsQts);
expVal = grads;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #85
grad = [
     1,  2,  4;
     7, 11, 16;
    22, 29, 37;
];
nQuants = nQuants8;
gradsQts = gradsQuants(grad, nQuants);
fun = fun81;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #86
grad = [
    1, 2;
    3, 4;
];
nQuants = nQuants9;
gradsQts = gradsQuants(grad, nQuants);
fun = fun91;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #87
grads = [];
grad1 = [
    1, 2;
    3, 4;
];
grad2 = [
    5, 6;
    7, 8;
];
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants9;
gradsQts = gradsQuants(grads, nQuants);
fun = fun91;
actVal = evalFun(fun, gradsQts);
expVal = grads;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #88
grad = [
    1, 2, 3;
    4, 5, 6;
    7, 8, 9;
];
nQuants = nQuants9;
gradsQts = gradsQuants(grad, nQuants);
fun = fun91;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #89
grads = [];
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
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants9;
gradsQts = gradsQuants(grads, nQuants);
fun = fun91;
actVal = evalFun(fun, gradsQts);
expVal = grads;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #90
grad = [
     1,  2,  4;
     7, 11, 16;
    22, 29, 37;
];
nQuants = nQuants9;
gradsQts = gradsQuants(grad, nQuants);
fun = fun91;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #91
grad = [
    1, 2;
    3, 4;
];
nQuants = nQuants9;
gradsQts = gradsQuants(grad, nQuants);
fun = fun11;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #92
grads = [];
grad1 = [
    1, 2;
    3, 4;
];
grad2 = [
    5, 6;
    7, 8;
];
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants9;
gradsQts = gradsQuants(grads, nQuants);
fun = fun11;
actVal = evalFun(fun, gradsQts);
expVal = grads;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #93
grad = [
    1, 2, 3;
    4, 5, 6;
    7, 8, 9;
];
nQuants = nQuants9;
gradsQts = gradsQuants(grad, nQuants);
fun = fun11;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #94
grads = [];
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
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants9;
gradsQts = gradsQuants(grads, nQuants);
fun = fun11;
actVal = evalFun(fun, gradsQts);
expVal = grads;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #95
grad = [
     1,  2,  4;
     7, 11, 16;
    22, 29, 37;
];
nQuants = nQuants9;
gradsQts = gradsQuants(grad, nQuants);
fun = fun11;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #96
grad = [
    1, 2;
    3, 4;
];
nQuants = nQuants9;
gradsQts = gradsQuants(grad, nQuants);
fun = fun21;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #97
grads = [];
grad1 = [
    1, 2;
    3, 4;
];
grad2 = [
    5, 6;
    7, 8;
];
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants9;
gradsQts = gradsQuants(grads, nQuants);
fun = fun21;
actVal = evalFun(fun, gradsQts);
expVal = grads;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #98
grad = [
    1, 2, 3;
    4, 5, 6;
    7, 8, 9;
];
nQuants = nQuants9;
gradsQts = gradsQuants(grad, nQuants);
fun = fun21;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #99
grads = [];
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
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants9;
gradsQts = gradsQuants(grads, nQuants);
fun = fun21;
actVal = evalFun(fun, gradsQts);
expVal = grads;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #100
grad = [
     1,  2,  4;
     7, 11, 16;
    22, 29, 37;
];
nQuants = nQuants9;
gradsQts = gradsQuants(grad, nQuants);
fun = fun21;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #101
grad = [
    1, 2;
    3, 4;
];
nQuants = nQuants9;
gradsQts = gradsQuants(grad, nQuants);
fun = fun31;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #102
grads = [];
grad1 = [
    1, 2;
    3, 4;
];
grad2 = [
    5, 6;
    7, 8;
];
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants9;
gradsQts = gradsQuants(grads, nQuants);
fun = fun31;
actVal = evalFun(fun, gradsQts);
expVal = grads;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #103
grad = [
    1, 2, 3;
    4, 5, 6;
    7, 8, 9;
];
nQuants = nQuants9;
gradsQts = gradsQuants(grad, nQuants);
fun = fun31;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #104
grads = [];
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
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants9;
gradsQts = gradsQuants(grads, nQuants);
fun = fun31;
actVal = evalFun(fun, gradsQts);
expVal = grads;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #105
grad = [
     1,  2,  4;
     7, 11, 16;
    22, 29, 37;
];
nQuants = nQuants9;
gradsQts = gradsQuants(grad, nQuants);
fun = fun31;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #106
grad = [
    1, 2;
    3, 4;
];
nQuants = nQuants9;
gradsQts = gradsQuants(grad, nQuants);
fun = fun41;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #107
grads = [];
grad1 = [
    1, 2;
    3, 4;
];
grad2 = [
    5, 6;
    7, 8;
];
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants9;
gradsQts = gradsQuants(grads, nQuants);
fun = fun41;
actVal = evalFun(fun, gradsQts);
expVal = grads;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #108
grad = [
    1, 2, 3;
    4, 5, 6;
    7, 8, 9;
];
nQuants = nQuants9;
gradsQts = gradsQuants(grad, nQuants);
fun = fun41;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #109
grads = [];
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
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants9;
gradsQts = gradsQuants(grads, nQuants);
fun = fun41;
actVal = evalFun(fun, gradsQts);
expVal = grads;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #110
grad = [
     1,  2,  4;
     7, 11, 16;
    22, 29, 37;
];
nQuants = nQuants9;
gradsQts = gradsQuants(grad, nQuants);
fun = fun41;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #111
grad = [
    1, 2;
    3, 4;
];
nQuants = nQuants9;
gradsQts = gradsQuants(grad, nQuants);
fun = fun51;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #112
grads = [];
grad1 = [
    1, 2;
    3, 4;
];
grad2 = [
    5, 6;
    7, 8;
];
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants9;
gradsQts = gradsQuants(grads, nQuants);
fun = fun51;
actVal = evalFun(fun, gradsQts);
expVal = grads;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #113
grad = [
    1, 2, 3;
    4, 5, 6;
    7, 8, 9;
];
nQuants = nQuants9;
gradsQts = gradsQuants(grad, nQuants);
fun = fun51;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #114
grads = [];
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
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants9;
gradsQts = gradsQuants(grads, nQuants);
fun = fun51;
actVal = evalFun(fun, gradsQts);
expVal = grads;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #115
grad = [
     1,  2,  4;
     7, 11, 16;
    22, 29, 37;
];
nQuants = nQuants9;
gradsQts = gradsQuants(grad, nQuants);
fun = fun51;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #116
grad = [
    1, 2;
    3, 4;
];
nQuants = nQuants9;
gradsQts = gradsQuants(grad, nQuants);
fun = fun61;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #117
grads = [];
grad1 = [
    1, 2;
    3, 4;
];
grad2 = [
    5, 6;
    7, 8;
];
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants9;
gradsQts = gradsQuants(grads, nQuants);
fun = fun61;
actVal = evalFun(fun, gradsQts);
expVal = grads;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #118
grad = [
    1, 2, 3;
    4, 5, 6;
    7, 8, 9;
];
nQuants = nQuants9;
gradsQts = gradsQuants(grad, nQuants);
fun = fun61;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #119
grads = [];
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
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants9;
gradsQts = gradsQuants(grads, nQuants);
fun = fun61;
actVal = evalFun(fun, gradsQts);
expVal = grads;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #120
grad = [
     1,  2,  4;
     7, 11, 16;
    22, 29, 37;
];
nQuants = nQuants9;
gradsQts = gradsQuants(grad, nQuants);
fun = fun61;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #121
grad = [
    1, 2;
    3, 4;
];
nQuants = nQuants9;
gradsQts = gradsQuants(grad, nQuants);
fun = fun71;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #122
grads = [];
grad1 = [
    1, 2;
    3, 4;
];
grad2 = [
    5, 6;
    7, 8;
];
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants9;
gradsQts = gradsQuants(grads, nQuants);
fun = fun71;
actVal = evalFun(fun, gradsQts);
expVal = grads;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #123
grad = [
    1, 2, 3;
    4, 5, 6;
    7, 8, 9;
];
nQuants = nQuants9;
gradsQts = gradsQuants(grad, nQuants);
fun = fun71;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #124
grads = [];
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
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants9;
gradsQts = gradsQuants(grads, nQuants);
fun = fun71;
actVal = evalFun(fun, gradsQts);
expVal = grads;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #125
grad = [
     1,  2,  4;
     7, 11, 16;
    22, 29, 37;
];
nQuants = nQuants9;
gradsQts = gradsQuants(grad, nQuants);
fun = fun71;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #126
grad = [
    1, 2;
    3, 4;
];
nQuants = nQuants9;
gradsQts = gradsQuants(grad, nQuants);
fun = fun81;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #127
grads = [];
grad1 = [
    1, 2;
    3, 4;
];
grad2 = [
    5, 6;
    7, 8;
];
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants9;
gradsQts = gradsQuants(grads, nQuants);
fun = fun81;
actVal = evalFun(fun, gradsQts);
expVal = grads;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #128
grad = [
    1, 2, 3;
    4, 5, 6;
    7, 8, 9;
];
nQuants = nQuants9;
gradsQts = gradsQuants(grad, nQuants);
fun = fun81;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #129
grads = [];
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
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants9;
gradsQts = gradsQuants(grads, nQuants);
fun = fun81;
actVal = evalFun(fun, gradsQts);
expVal = grads;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #130
grad = [
     1,  2,  4;
     7, 11, 16;
    22, 29, 37;
];
nQuants = nQuants9;
gradsQts = gradsQuants(grad, nQuants);
fun = fun81;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #131
grad = [
    1, 2;
    3, 4;
];
nQuants = nQuants9;
gradsQts = gradsQuants(grad, nQuants);
fun = fun91;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #132
grads = [];
grad1 = [
    1, 2;
    3, 4;
];
grad2 = [
    5, 6;
    7, 8;
];
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants9;
gradsQts = gradsQuants(grads, nQuants);
fun = fun91;
actVal = evalFun(fun, gradsQts);
expVal = grads;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #133
grad = [
    1, 2, 3;
    4, 5, 6;
    7, 8, 9;
];
nQuants = nQuants9;
gradsQts = gradsQuants(grad, nQuants);
fun = fun91;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #134
grads = [];
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
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants9;
gradsQts = gradsQuants(grads, nQuants);
fun = fun91;
actVal = evalFun(fun, gradsQts);
expVal = grads;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #135
grad = [
     1,  2,  4;
     7, 11, 16;
    22, 29, 37;
];
nQuants = nQuants9;
gradsQts = gradsQuants(grad, nQuants);
fun = fun91;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #136
grad = [
    1, 2;
    3, 4;
];
nQuants = nQuants1;
gradsQts = gradsQuants(grad, nQuants);
fun = fun1;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #137
grad = [
    1, 2;
    3, 4;
];
nQuants = nQuants2;
gradsQts = gradsQuants(grad, nQuants);
fun = fun1;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #138
grad = [
    1, 2;
    3, 4;
];
nQuants = nQuants3;
gradsQts = gradsQuants(grad, nQuants);
fun = fun1;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #139
grad = [
    1, 2;
    3, 4;
];
nQuants = nQuants4;
gradsQts = gradsQuants(grad, nQuants);
fun = fun1;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #140
grad = [
    1, 2;
    3, 4;
];
nQuants = nQuants5;
gradsQts = gradsQuants(grad, nQuants);
fun = fun1;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #141
grad = [
    1, 2;
    3, 4;
];
nQuants = nQuants6;
gradsQts = gradsQuants(grad, nQuants);
fun = fun1;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #142
grad = [
    1, 2;
    3, 4;
];
nQuants = nQuants7;
gradsQts = gradsQuants(grad, nQuants);
fun = fun1;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #143
grad = [
    1, 2;
    3, 4;
];
nQuants = nQuants8;
gradsQts = gradsQuants(grad, nQuants);
fun = fun1;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #144
grad = [
    1, 2;
    3, 4;
];
nQuants = nQuants9;
gradsQts = gradsQuants(grad, nQuants);
fun = fun1;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #145
grads = [];
grad1 = [
    1, 2;
    3, 4;
];
grad2 = [
    5, 6;
    7, 8;
];
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants1;
gradsQts = gradsQuants(grads, nQuants);
fun = fun1;
actVal = evalFun(fun, gradsQts);
expVal = grads;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #146
grads = [];
grad1 = [
    1, 2;
    3, 4;
];
grad2 = [
    5, 6;
    7, 8;
];
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants2;
gradsQts = gradsQuants(grads, nQuants);
fun = fun1;
actVal = evalFun(fun, gradsQts);
expVal = grads;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #147
grads = [];
grad1 = [
    1, 2;
    3, 4;
];
grad2 = [
    5, 6;
    7, 8;
];
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants3;
gradsQts = gradsQuants(grads, nQuants);
fun = fun1;
actVal = evalFun(fun, gradsQts);
expVal = grads;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #148
grads = [];
grad1 = [
    1, 2;
    3, 4;
];
grad2 = [
    5, 6;
    7, 8;
];
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants4;
gradsQts = gradsQuants(grads, nQuants);
fun = fun1;
actVal = evalFun(fun, gradsQts);
expVal = grads;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #149
grads = [];
grad1 = [
    1, 2;
    3, 4;
];
grad2 = [
    5, 6;
    7, 8;
];
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants5;
gradsQts = gradsQuants(grads, nQuants);
fun = fun1;
actVal = evalFun(fun, gradsQts);
expVal = grads;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #150
grads = [];
grad1 = [
    1, 2;
    3, 4;
];
grad2 = [
    5, 6;
    7, 8;
];
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants6;
gradsQts = gradsQuants(grads, nQuants);
fun = fun1;
actVal = evalFun(fun, gradsQts);
expVal = grads;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #151
grads = [];
grad1 = [
    1, 2;
    3, 4;
];
grad2 = [
    5, 6;
    7, 8;
];
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants7;
gradsQts = gradsQuants(grads, nQuants);
fun = fun1;
actVal = evalFun(fun, gradsQts);
expVal = grads;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #152
grads = [];
grad1 = [
    1, 2;
    3, 4;
];
grad2 = [
    5, 6;
    7, 8;
];
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants8;
gradsQts = gradsQuants(grads, nQuants);
fun = fun1;
actVal = evalFun(fun, gradsQts);
expVal = grads;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #153
grads = [];
grad1 = [
    1, 2;
    3, 4;
];
grad2 = [
    5, 6;
    7, 8;
];
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants9;
gradsQts = gradsQuants(grads, nQuants);
fun = fun1;
actVal = evalFun(fun, gradsQts);
expVal = grads;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #154
grad = [
    1, 2, 3;
    4, 5, 6;
    7, 8, 9;
];
nQuants = nQuants1;
gradsQts = gradsQuants(grad, nQuants);
fun = fun1;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #155
grad = [
    1, 2, 3;
    4, 5, 6;
    7, 8, 9;
];
nQuants = nQuants2;
gradsQts = gradsQuants(grad, nQuants);
fun = fun1;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #156
grad = [
    1, 2, 3;
    4, 5, 6;
    7, 8, 9;
];
nQuants = nQuants3;
gradsQts = gradsQuants(grad, nQuants);
fun = fun1;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #157
grad = [
    1, 2, 3;
    4, 5, 6;
    7, 8, 9;
];
nQuants = nQuants4;
gradsQts = gradsQuants(grad, nQuants);
fun = fun1;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #158
grad = [
    1, 2, 3;
    4, 5, 6;
    7, 8, 9;
];
nQuants = nQuants5;
gradsQts = gradsQuants(grad, nQuants);
fun = fun1;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #159
grad = [
    1, 2, 3;
    4, 5, 6;
    7, 8, 9;
];
nQuants = nQuants6;
gradsQts = gradsQuants(grad, nQuants);
fun = fun1;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #160
grad = [
    1, 2, 3;
    4, 5, 6;
    7, 8, 9;
];
nQuants = nQuants7;
gradsQts = gradsQuants(grad, nQuants);
fun = fun1;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #161
grad = [
    1, 2, 3;
    4, 5, 6;
    7, 8, 9;
];
nQuants = nQuants8;
gradsQts = gradsQuants(grad, nQuants);
fun = fun1;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #162
grad = [
    1, 2, 3;
    4, 5, 6;
    7, 8, 9;
];
nQuants = nQuants9;
gradsQts = gradsQuants(grad, nQuants);
fun = fun1;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #163
grads = [];
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
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants1;
gradsQts = gradsQuants(grads, nQuants);
fun = fun1;
actVal = evalFun(fun, gradsQts);
expVal = grads;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #164
grads = [];
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
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants2;
gradsQts = gradsQuants(grads, nQuants);
fun = fun1;
actVal = evalFun(fun, gradsQts);
expVal = grads;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #165
grads = [];
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
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants3;
gradsQts = gradsQuants(grads, nQuants);
fun = fun1;
actVal = evalFun(fun, gradsQts);
expVal = grads;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #166
grads = [];
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
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants4;
gradsQts = gradsQuants(grads, nQuants);
fun = fun1;
actVal = evalFun(fun, gradsQts);
expVal = grads;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #167
grads = [];
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
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants5;
gradsQts = gradsQuants(grads, nQuants);
fun = fun1;
actVal = evalFun(fun, gradsQts);
expVal = grads;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #168
grads = [];
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
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants6;
gradsQts = gradsQuants(grads, nQuants);
fun = fun1;
actVal = evalFun(fun, gradsQts);
expVal = grads;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #169
grads = [];
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
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants7;
gradsQts = gradsQuants(grads, nQuants);
fun = fun1;
actVal = evalFun(fun, gradsQts);
expVal = grads;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #170
grads = [];
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
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants8;
gradsQts = gradsQuants(grads, nQuants);
fun = fun1;
actVal = evalFun(fun, gradsQts);
expVal = grads;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #171
grads = [];
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
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants9;
gradsQts = gradsQuants(grads, nQuants);
fun = fun1;
actVal = evalFun(fun, gradsQts);
expVal = grads;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #172
grad = [
     1,  2,  4;
     7, 11, 16;
    22, 29, 37;
];
nQuants = nQuants1;
gradsQts = gradsQuants(grad, nQuants);
fun = fun1;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #173
grad = [
     1,  2,  4;
     7, 11, 16;
    22, 29, 37;
];
nQuants = nQuants2;
gradsQts = gradsQuants(grad, nQuants);
fun = fun1;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #174
grad = [
     1,  2,  4;
     7, 11, 16;
    22, 29, 37;
];
nQuants = nQuants3;
gradsQts = gradsQuants(grad, nQuants);
fun = fun1;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #175
grad = [
     1,  2,  4;
     7, 11, 16;
    22, 29, 37;
];
nQuants = nQuants4;
gradsQts = gradsQuants(grad, nQuants);
fun = fun1;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #176
grad = [
     1,  2,  4;
     7, 11, 16;
    22, 29, 37;
];
nQuants = nQuants5;
gradsQts = gradsQuants(grad, nQuants);
fun = fun1;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #177
grad = [
     1,  2,  4;
     7, 11, 16;
    22, 29, 37;
];
nQuants = nQuants6;
gradsQts = gradsQuants(grad, nQuants);
fun = fun1;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #178
grad = [
     1,  2,  4;
     7, 11, 16;
    22, 29, 37;
];
nQuants = nQuants7;
gradsQts = gradsQuants(grad, nQuants);
fun = fun1;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #179
grad = [
     1,  2,  4;
     7, 11, 16;
    22, 29, 37;
];
nQuants = nQuants8;
gradsQts = gradsQuants(grad, nQuants);
fun = fun1;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #180
grad = [
     1,  2,  4;
     7, 11, 16;
    22, 29, 37;
];
nQuants = nQuants9;
gradsQts = gradsQuants(grad, nQuants);
fun = fun1;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #181
grad = [
    1, 2;
    3, 4;
];
nQuants = nQuants1;
gradsQts = gradsQuants(grad, nQuants);
fun = fun1;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #182
grads = [];
grad1 = [
    1, 2;
    3, 4;
];
grad2 = [
    5, 6;
    7, 8;
];
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants1;
gradsQts = gradsQuants(grads, nQuants);
fun = fun1;
actVal = evalFun(fun, gradsQts);
expVal = grads;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #183
grad = [
    1, 2, 3;
    4, 5, 6;
    7, 8, 9;
];
nQuants = nQuants1;
gradsQts = gradsQuants(grad, nQuants);
fun = fun1;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #184
grads = [];
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
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants1;
gradsQts = gradsQuants(grads, nQuants);
fun = fun1;
actVal = evalFun(fun, gradsQts);
expVal = grads;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #185
grad = [
     1,  2,  4;
     7, 11, 16;
    22, 29, 37;
];
nQuants = nQuants1;
gradsQts = gradsQuants(grad, nQuants);
fun = fun1;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #186
grad = [
    1, 2;
    3, 4;
];
nQuants = nQuants2;
gradsQts = gradsQuants(grad, nQuants);
fun = fun2;
actVal = evalFun(fun, gradsQts);
expVal = [
    1.0, 2.5;
    2.5, 4.0;
];
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #187
grads = [];
grad1 = [
    1, 2;
    3, 4;
];
grad2 = [
    5, 6;
    7, 8;
];
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants2;
gradsQts = gradsQuants(grads, nQuants);
fun = fun2;
actVal = evalFun(fun, gradsQts);
expVal(:, :, 2) = [
    5.0, 6.5;
    6.5, 8.0;
];
expVal(:, :, 1) = [
    1.0, 2.5;
    2.5, 4.0;
];
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #188
grad = [
    1, 2, 3;
    4, 5, 6;
    7, 8, 9;
];
nQuants = nQuants2;
gradsQts = gradsQuants(grad, nQuants);
fun = fun2;
actVal = evalFun(fun, gradsQts);
expVal = [
    1, 3, 5;
    3, 5, 7;
    5, 7, 9;
];
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #189
grads = [];
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
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants2;
gradsQts = gradsQuants(grads, nQuants);
fun = fun2;
actVal = evalFun(fun, gradsQts);
expVal(:, :, 2) = [
    10, 12, 14;
    12, 14, 16;
    14, 16, 18;
];
expVal(:, :, 1) = [
    1, 3, 5;
    3, 5, 7;
    5, 7, 9;
];
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #190
grad = [
     1,  2,  4;
     7, 11, 16;
    22, 29, 37;
];
nQuants = nQuants2;
gradsQts = gradsQuants(grad, nQuants);
fun = fun2;
actVal = evalFun(fun, gradsQts);
expVal = [
     1.0,  4.5, 13.0;
     4.5, 11.0, 22.5;
    13.0, 22.5, 37.0;
];
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #191
grad = [
    1, 2;
    3, 4;
];
nQuants = nQuants3;
gradsQts = gradsQuants(grad, nQuants);
fun = fun3;
actVal = evalFun(fun, gradsQts);
expVal = [
     0.0, -0.5;
     0.5,  0.0;
];
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #192
grads = [];
grad1 = [
    1, 2;
    3, 4;
];
grad2 = [
    5, 6;
    7, 8;
];
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants3;
gradsQts = gradsQuants(grads, nQuants);
fun = fun3;
actVal = evalFun(fun, gradsQts);
expVal(:, :, 2) = [
     0.0, -0.5;
     0.5,  0.0;
];
expVal(:, :, 1) = [
     0.0, -0.5;
     0.5,  0.0;
];
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #193
grad = [
    1, 2, 3;
    4, 5, 6;
    7, 8, 9;
];
nQuants = nQuants3;
gradsQts = gradsQuants(grad, nQuants);
fun = fun3;
actVal = evalFun(fun, gradsQts);
expVal = [
     0, -1, -2;
     1,  0, -1;
     2,  1,  0;
];
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #194
grads = [];
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
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants3;
gradsQts = gradsQuants(grads, nQuants);
fun = fun3;
actVal = evalFun(fun, gradsQts);
expVal(:, :, 2) = [
     0, -1, -2;
     1,  0, -1;
     2,  1,  0;
];
expVal(:, :, 1) = [
     0, -1, -2;
     1,  0, -1;
     2,  1,  0;
];
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #195
grad = [
     1,  2,  4;
     7, 11, 16;
    22, 29, 37;
];
nQuants = nQuants3;
gradsQts = gradsQuants(grad, nQuants);
fun = fun3;
actVal = evalFun(fun, gradsQts);
expVal = [
      0.0, -2.5, -9.0;
      2.5,  0.0, -6.5;
      9.0,  6.5,  0.0;
];
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #196
grad = [
    1, 2;
    3, 4;
];
nQuants = nQuants4;
gradsQts = gradsQuants(grad, nQuants);
fun = fun4;
actVal = evalFun(fun, gradsQts);
expVal = 29.5;
assert(expVal == actVal, 'Unexpected output.');

%% Test actual output #197
grads = [];
grad1 = [
    1, 2;
    3, 4;
];
grad2 = [
    5, 6;
    7, 8;
];
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants4;
gradsQts = gradsQuants(grads, nQuants);
fun = fun4;
actVal = evalFun(fun, gradsQts);
expVal(1, 1, 2) = 173.5;
expVal(1, 1, 1) = 29.5;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #198
grad = [
    1, 2, 3;
    4, 5, 6;
    7, 8, 9;
];
nQuants = nQuants4;
gradsQts = gradsQuants(grad, nQuants);
fun = fun4;
actVal = evalFun(fun, gradsQts);
expVal = 273;
assert(expVal == actVal, 'Unexpected output.');

%% Test actual output #199
grads = [];
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
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants4;
gradsQts = gradsQuants(grads, nQuants);
fun = fun4;
actVal = evalFun(fun, gradsQts);
expVal(1, 1, 2) = 1812;
expVal(1, 1, 1) = 273;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #200
grad = [
     1,  2,  4;
     7, 11, 16;
    22, 29, 37;
];
nQuants = nQuants4;
gradsQts = gradsQuants(grad, nQuants);
fun = fun4;
actVal = evalFun(fun, gradsQts);
expVal = 2882;
assert(expVal == actVal, 'Unexpected output.');

%% Test actual output #201
grad = [
    1, 2;
    3, 4;
];
nQuants = nQuants5;
gradsQts = gradsQuants(grad, nQuants);
fun = fun5;
actVal = evalFun(fun, gradsQts);
expVal = -0.5;
assert(expVal == actVal, 'Unexpected output.');

%% Test actual output #202
grads = [];
grad1 = [
    1, 2;
    3, 4;
];
grad2 = [
    5, 6;
    7, 8;
];
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants5;
gradsQts = gradsQuants(grads, nQuants);
fun = fun5;
actVal = evalFun(fun, gradsQts);
expVal(1, 1, 2) = -0.5;
expVal(1, 1, 1) = -0.5;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #203
grad = [
    1, 2, 3;
    4, 5, 6;
    7, 8, 9;
];
nQuants = nQuants5;
gradsQts = gradsQuants(grad, nQuants);
fun = fun5;
actVal = evalFun(fun, gradsQts);
expVal = -12;
assert(expVal == actVal, 'Unexpected output.');

%% Test actual output #204
grads = [];
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
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants5;
gradsQts = gradsQuants(grads, nQuants);
fun = fun5;
actVal = evalFun(fun, gradsQts);
expVal(1, 1, 2) = -12;
expVal(1, 1, 1) = -12;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #205
grad = [
     1,  2,  4;
     7, 11, 16;
    22, 29, 37;
];
nQuants = nQuants5;
gradsQts = gradsQuants(grad, nQuants);
fun = fun5;
actVal = evalFun(fun, gradsQts);
expVal = -259;
assert(expVal == actVal, 'Unexpected output.');

%% Test actual output #206
grad = [
    1, 2;
    3, 4;
];
nQuants = nQuants6;
gradsQts = gradsQuants(grad, nQuants);
fun = fun6;
actVal = evalFun(fun, gradsQts);
expVal = 158.75;
assert(expVal == actVal, 'Unexpected output.');

%% Test actual output #207
grads = [];
grad1 = [
    1, 2;
    3, 4;
];
grad2 = [
    5, 6;
    7, 8;
];
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants6;
gradsQts = gradsQuants(grads, nQuants);
fun = fun6;
actVal = evalFun(fun, gradsQts);
expVal(1, 1, 2) = 2284.75;
expVal(1, 1, 1) = 158.75;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #208
grad = [
    1, 2, 3;
    4, 5, 6;
    7, 8, 9;
];
nQuants = nQuants6;
gradsQts = gradsQuants(grad, nQuants);
fun = fun6;
actVal = evalFun(fun, gradsQts);
expVal = 4455;
assert(expVal == actVal, 'Unexpected output.');

%% Test actual output #209
grads = [];
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
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants6;
gradsQts = gradsQuants(grads, nQuants);
fun = fun6;
actVal = evalFun(fun, gradsQts);
expVal(1, 1, 2) = 77112;
expVal(1, 1, 1) = 4455;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #210
grad = [
     1,  2,  4;
     7, 11, 16;
    22, 29, 37;
];
nQuants = nQuants6;
gradsQts = gradsQuants(grad, nQuants);
fun = fun6;
actVal = evalFun(fun, gradsQts);
expVal = 152777.5;
assert(expVal == actVal, 'Unexpected output.');

%% Test actual output #211
grad = [
    1, 2;
    3, 4;
];
nQuants = nQuants7;
gradsQts = gradsQuants(grad, nQuants);
fun = fun7;
actVal = evalFun(fun, gradsQts);
expVal = -1.25;
assert(expVal == actVal, 'Unexpected output.');

%% Test actual output #212
grads = [];
grad1 = [
    1, 2;
    3, 4;
];
grad2 = [
    5, 6;
    7, 8;
];
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants7;
gradsQts = gradsQuants(grads, nQuants);
fun = fun7;
actVal = evalFun(fun, gradsQts);
expVal(1, 1, 2) = -3.25;
expVal(1, 1, 1) = -1.25;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #213
grad = [
    1, 2, 3;
    4, 5, 6;
    7, 8, 9;
];
nQuants = nQuants7;
gradsQts = gradsQuants(grad, nQuants);
fun = fun7;
actVal = evalFun(fun, gradsQts);
expVal = -90;
assert(expVal == actVal, 'Unexpected output.');

%% Test actual output #214
grads = [];
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
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants7;
gradsQts = gradsQuants(grads, nQuants);
fun = fun7;
actVal = evalFun(fun, gradsQts);
expVal(1, 1, 2) = -252;
expVal(1, 1, 1) = -90;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #215
grad = [
     1,  2,  4;
     7, 11, 16;
    22, 29, 37;
];
nQuants = nQuants7;
gradsQts = gradsQuants(grad, nQuants);
fun = fun7;
actVal = evalFun(fun, gradsQts);
expVal = -6297.5;
assert(expVal == actVal, 'Unexpected output.');

%% Test actual output #216
grad = [
    1, 2;
    3, 4;
];
nQuants = nQuants8;
gradsQts = gradsQuants(grad, nQuants);
fun = fun8;
actVal = evalFun(fun, gradsQts);
expVal = -7.375;
assert(expVal == actVal, 'Unexpected output.');

%% Test actual output #217
grads = [];
grad1 = [
    1, 2;
    3, 4;
];
grad2 = [
    5, 6;
    7, 8;
];
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants8;
gradsQts = gradsQuants(grads, nQuants);
fun = fun8;
actVal = evalFun(fun, gradsQts);
expVal(1, 1, 2) = -43.375;
expVal(1, 1, 1) = -7.375;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #218
grad = [
    1, 2, 3;
    4, 5, 6;
    7, 8, 9;
];
nQuants = nQuants8;
gradsQts = gradsQuants(grad, nQuants);
fun = fun8;
actVal = evalFun(fun, gradsQts);
expVal = -1638;
assert(expVal == actVal, 'Unexpected output.');

%% Test actual output #219
grads = [];
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
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants8;
gradsQts = gradsQuants(grads, nQuants);
fun = fun8;
actVal = evalFun(fun, gradsQts);
expVal(1, 1, 2) = -10872;
expVal(1, 1, 1) = -1638;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #220
grad = [
     1,  2,  4;
     7, 11, 16;
    22, 29, 37;
];
nQuants = nQuants8;
gradsQts = gradsQuants(grad, nQuants);
fun = fun8;
actVal = evalFun(fun, gradsQts);
expVal = -372384.25;
assert(expVal == actVal, 'Unexpected output.');

%% Test actual output #221
grad = [
    1, 2;
    3, 4;
];
nQuants = nQuants9;
gradsQts = gradsQuants(grad, nQuants);
fun = fun9;
actVal = evalFun(fun, gradsQts);
expVal = 0;
assert(expVal == actVal, 'Unexpected output.');

%% Test actual output #222
grads = [];
grad1 = [
    1, 2;
    3, 4;
];
grad2 = [
    5, 6;
    7, 8;
];
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants9;
gradsQts = gradsQuants(grads, nQuants);
fun = fun9;
actVal = evalFun(fun, gradsQts);
expVal(1, 1, 2) = 0;
expVal(1, 1, 1) = 0;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #223
grad = [
    1, 2, 3;
    4, 5, 6;
    7, 8, 9;
];
nQuants = nQuants9;
gradsQts = gradsQuants(grad, nQuants);
fun = fun9;
actVal = evalFun(fun, gradsQts);
expVal = 0;
assert(expVal == actVal, 'Unexpected output.');

%% Test actual output #224
grads = [];
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
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants9;
gradsQts = gradsQuants(grads, nQuants);
fun = fun9;
actVal = evalFun(fun, gradsQts);
expVal(1, 1, 2) = 0;
expVal(1, 1, 1) = 0;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #225
grad = [
     1,  2,  4;
     7, 11, 16;
    22, 29, 37;
];
nQuants = nQuants9;
gradsQts = gradsQuants(grad, nQuants);
fun = fun9;
actVal = evalFun(fun, gradsQts);
expVal = 93494.25;
assert(expVal == actVal, 'Unexpected output.');

%% Test actual output #226
grad = [
    1, 2;
    3, 4;
];
nQuants = nQuants9;
gradsQts = gradsQuants(grad, nQuants);
fun = fun1;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #227
grads = [];
grad1 = [
    1, 2;
    3, 4;
];
grad2 = [
    5, 6;
    7, 8;
];
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants9;
gradsQts = gradsQuants(grads, nQuants);
fun = fun1;
actVal = evalFun(fun, gradsQts);
expVal = grads;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #228
grad = [
    1, 2, 3;
    4, 5, 6;
    7, 8, 9;
];
nQuants = nQuants9;
gradsQts = gradsQuants(grad, nQuants);
fun = fun1;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #229
grads = [];
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
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants9;
gradsQts = gradsQuants(grads, nQuants);
fun = fun1;
actVal = evalFun(fun, gradsQts);
expVal = grads;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #230
grad = [
     1,  2,  4;
     7, 11, 16;
    22, 29, 37;
];
nQuants = nQuants9;
gradsQts = gradsQuants(grad, nQuants);
fun = fun1;
actVal = evalFun(fun, gradsQts);
expVal = grad;
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #231
grad = [
    1, 2;
    3, 4;
];
nQuants = nQuants9;
gradsQts = gradsQuants(grad, nQuants);
fun = fun2;
actVal = evalFun(fun, gradsQts);
expVal = [
    1.0, 2.5;
    2.5, 4.0;
];
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #232
grads = [];
grad1 = [
    1, 2;
    3, 4;
];
grad2 = [
    5, 6;
    7, 8;
];
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants9;
gradsQts = gradsQuants(grads, nQuants);
fun = fun2;
actVal = evalFun(fun, gradsQts);
expVal(:, :, 2) = [
    5.0, 6.5;
    6.5, 8.0;
];
expVal(:, :, 1) = [
    1.0, 2.5;
    2.5, 4.0;
];
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #233
grad = [
    1, 2, 3;
    4, 5, 6;
    7, 8, 9;
];
nQuants = nQuants9;
gradsQts = gradsQuants(grad, nQuants);
fun = fun2;
actVal = evalFun(fun, gradsQts);
expVal = [
    1, 3, 5;
    3, 5, 7;
    5, 7, 9;
];
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #234
grads = [];
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
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants9;
gradsQts = gradsQuants(grads, nQuants);
fun = fun2;
actVal = evalFun(fun, gradsQts);
expVal(:, :, 2) = [
    10, 12, 14;
    12, 14, 16;
    14, 16, 18;
];
expVal(:, :, 1) = [
    1, 3, 5;
    3, 5, 7;
    5, 7, 9;
];
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #235
grad = [
     1,  2,  4;
     7, 11, 16;
    22, 29, 37;
];
nQuants = nQuants9;
gradsQts = gradsQuants(grad, nQuants);
fun = fun2;
actVal = evalFun(fun, gradsQts);
expVal = [
     1.0,  4.5, 13.0;
     4.5, 11.0, 22.5;
    13.0, 22.5, 37.0;
];
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #236
grad = [
    1, 2;
    3, 4;
];
nQuants = nQuants9;
gradsQts = gradsQuants(grad, nQuants);
fun = fun3;
actVal = evalFun(fun, gradsQts);
expVal = [
     0.0, -0.5;
     0.5,  0.0;
];
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #237
grads = [];
grad1 = [
    1, 2;
    3, 4;
];
grad2 = [
    5, 6;
    7, 8;
];
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants9;
gradsQts = gradsQuants(grads, nQuants);
fun = fun3;
actVal = evalFun(fun, gradsQts);
expVal(:, :, 2) = [
     0.0, -0.5;
     0.5,  0.0;
];
expVal(:, :, 1) = [
     0.0, -0.5;
     0.5,  0.0;
];
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #238
grad = [
    1, 2, 3;
    4, 5, 6;
    7, 8, 9;
];
nQuants = nQuants9;
gradsQts = gradsQuants(grad, nQuants);
fun = fun3;
actVal = evalFun(fun, gradsQts);
expVal = [
     0, -1, -2;
     1,  0, -1;
     2,  1,  0;
];
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #239
grads = [];
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
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants9;
gradsQts = gradsQuants(grads, nQuants);
fun = fun3;
actVal = evalFun(fun, gradsQts);
expVal(:, :, 2) = [
     0, -1, -2;
     1,  0, -1;
     2,  1,  0;
];
expVal(:, :, 1) = [
     0, -1, -2;
     1,  0, -1;
     2,  1,  0;
];
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #240
grad = [
     1,  2,  4;
     7, 11, 16;
    22, 29, 37;
];
nQuants = nQuants9;
gradsQts = gradsQuants(grad, nQuants);
fun = fun3;
actVal = evalFun(fun, gradsQts);
expVal = [
      0.0, -2.5, -9.0;
      2.5,  0.0, -6.5;
      9.0,  6.5,  0.0;
];
assert( all( all(expVal == actVal) ), 'Unexpected output.');

%% Test actual output #241
grad = [
    1, 2;
    3, 4;
];
nQuants = nQuants9;
gradsQts = gradsQuants(grad, nQuants);
fun = fun4;
actVal = evalFun(fun, gradsQts);
expVal = 29.5;
assert(expVal == actVal, 'Unexpected output.');

%% Test actual output #242
grads = [];
grad1 = [
    1, 2;
    3, 4;
];
grad2 = [
    5, 6;
    7, 8;
];
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants9;
gradsQts = gradsQuants(grads, nQuants);
fun = fun4;
actVal = evalFun(fun, gradsQts);
expVal(1, 1, 2) = 173.5;
expVal(1, 1, 1) = 29.5;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #243
grad = [
    1, 2, 3;
    4, 5, 6;
    7, 8, 9;
];
nQuants = nQuants9;
gradsQts = gradsQuants(grad, nQuants);
fun = fun4;
actVal = evalFun(fun, gradsQts);
expVal = 273;
assert(expVal == actVal, 'Unexpected output.');

%% Test actual output #244
grads = [];
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
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants9;
gradsQts = gradsQuants(grads, nQuants);
fun = fun4;
actVal = evalFun(fun, gradsQts);
expVal(1, 1, 2) = 1812;
expVal(1, 1, 1) = 273;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #245
grad = [
     1,  2,  4;
     7, 11, 16;
    22, 29, 37;
];
nQuants = nQuants9;
gradsQts = gradsQuants(grad, nQuants);
fun = fun4;
actVal = evalFun(fun, gradsQts);
expVal = 2882;
assert(expVal == actVal, 'Unexpected output.');

%% Test actual output #246
grad = [
    1, 2;
    3, 4;
];
nQuants = nQuants9;
gradsQts = gradsQuants(grad, nQuants);
fun = fun5;
actVal = evalFun(fun, gradsQts);
expVal = -0.5;
assert(expVal == actVal, 'Unexpected output.');

%% Test actual output #247
grads = [];
grad1 = [
    1, 2;
    3, 4;
];
grad2 = [
    5, 6;
    7, 8;
];
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants9;
gradsQts = gradsQuants(grads, nQuants);
fun = fun5;
actVal = evalFun(fun, gradsQts);
expVal(1, 1, 2) = -0.5;
expVal(1, 1, 1) = -0.5;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #248
grad = [
    1, 2, 3;
    4, 5, 6;
    7, 8, 9;
];
nQuants = nQuants9;
gradsQts = gradsQuants(grad, nQuants);
fun = fun5;
actVal = evalFun(fun, gradsQts);
expVal = -12;
assert(expVal == actVal, 'Unexpected output.');

%% Test actual output #249
grads = [];
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
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants9;
gradsQts = gradsQuants(grads, nQuants);
fun = fun5;
actVal = evalFun(fun, gradsQts);
expVal(1, 1, 2) = -12;
expVal(1, 1, 1) = -12;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #250
grad = [
     1,  2,  4;
     7, 11, 16;
    22, 29, 37;
];
nQuants = nQuants9;
gradsQts = gradsQuants(grad, nQuants);
fun = fun5;
actVal = evalFun(fun, gradsQts);
expVal = -259;
assert(expVal == actVal, 'Unexpected output.');

%% Test actual output #251
grad = [
    1, 2;
    3, 4;
];
nQuants = nQuants9;
gradsQts = gradsQuants(grad, nQuants);
fun = fun6;
actVal = evalFun(fun, gradsQts);
expVal = 158.75;
assert(expVal == actVal, 'Unexpected output.');

%% Test actual output #252
grads = [];
grad1 = [
    1, 2;
    3, 4;
];
grad2 = [
    5, 6;
    7, 8;
];
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants9;
gradsQts = gradsQuants(grads, nQuants);
fun = fun6;
actVal = evalFun(fun, gradsQts);
expVal(1, 1, 2) = 2284.75;
expVal(1, 1, 1) = 158.75;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #253
grad = [
    1, 2, 3;
    4, 5, 6;
    7, 8, 9;
];
nQuants = nQuants9;
gradsQts = gradsQuants(grad, nQuants);
fun = fun6;
actVal = evalFun(fun, gradsQts);
expVal = 4455;
assert(expVal == actVal, 'Unexpected output.');

%% Test actual output #254
grads = [];
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
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants9;
gradsQts = gradsQuants(grads, nQuants);
fun = fun6;
actVal = evalFun(fun, gradsQts);
expVal(1, 1, 2) = 77112;
expVal(1, 1, 1) = 4455;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #255
grad = [
     1,  2,  4;
     7, 11, 16;
    22, 29, 37;
];
nQuants = nQuants9;
gradsQts = gradsQuants(grad, nQuants);
fun = fun6;
actVal = evalFun(fun, gradsQts);
expVal = 152777.5;
assert(expVal == actVal, 'Unexpected output.');

%% Test actual output #256
grad = [
    1, 2;
    3, 4;
];
nQuants = nQuants9;
gradsQts = gradsQuants(grad, nQuants);
fun = fun7;
actVal = evalFun(fun, gradsQts);
expVal = -1.25;
assert(expVal == actVal, 'Unexpected output.');

%% Test actual output #257
grads = [];
grad1 = [
    1, 2;
    3, 4;
];
grad2 = [
    5, 6;
    7, 8;
];
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants9;
gradsQts = gradsQuants(grads, nQuants);
fun = fun7;
actVal = evalFun(fun, gradsQts);
expVal(1, 1, 2) = -3.25;
expVal(1, 1, 1) = -1.25;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #258
grad = [
    1, 2, 3;
    4, 5, 6;
    7, 8, 9;
];
nQuants = nQuants9;
gradsQts = gradsQuants(grad, nQuants);
fun = fun7;
actVal = evalFun(fun, gradsQts);
expVal = -90;
assert(expVal == actVal, 'Unexpected output.');

%% Test actual output #259
grads = [];
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
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants9;
gradsQts = gradsQuants(grads, nQuants);
fun = fun7;
actVal = evalFun(fun, gradsQts);
expVal(1, 1, 2) = -252;
expVal(1, 1, 1) = -90;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #260
grad = [
     1,  2,  4;
     7, 11, 16;
    22, 29, 37;
];
nQuants = nQuants9;
gradsQts = gradsQuants(grad, nQuants);
fun = fun7;
actVal = evalFun(fun, gradsQts);
expVal = -6297.5;
assert(expVal == actVal, 'Unexpected output.');

%% Test actual output #261
grad = [
    1, 2;
    3, 4;
];
nQuants = nQuants9;
gradsQts = gradsQuants(grad, nQuants);
fun = fun8;
actVal = evalFun(fun, gradsQts);
expVal = -7.375;
assert(expVal == actVal, 'Unexpected output.');

%% Test actual output #262
grads = [];
grad1 = [
    1, 2;
    3, 4;
];
grad2 = [
    5, 6;
    7, 8;
];
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants9;
gradsQts = gradsQuants(grads, nQuants);
fun = fun8;
actVal = evalFun(fun, gradsQts);
expVal(1, 1, 2) = -43.375;
expVal(1, 1, 1) = -7.375;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #263
grad = [
    1, 2, 3;
    4, 5, 6;
    7, 8, 9;
];
nQuants = nQuants9;
gradsQts = gradsQuants(grad, nQuants);
fun = fun8;
actVal = evalFun(fun, gradsQts);
expVal = -1638;
assert(expVal == actVal, 'Unexpected output.');

%% Test actual output #264
grads = [];
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
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants9;
gradsQts = gradsQuants(grads, nQuants);
fun = fun8;
actVal = evalFun(fun, gradsQts);
expVal(1, 1, 2) = -10872;
expVal(1, 1, 1) = -1638;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #265
grad = [
     1,  2,  4;
     7, 11, 16;
    22, 29, 37;
];
nQuants = nQuants9;
gradsQts = gradsQuants(grad, nQuants);
fun = fun8;
actVal = evalFun(fun, gradsQts);
expVal = -372384.25;
assert(expVal == actVal, 'Unexpected output.');

%% Test actual output #266
grad = [
    1, 2;
    3, 4;
];
nQuants = nQuants9;
gradsQts = gradsQuants(grad, nQuants);
fun = fun9;
actVal = evalFun(fun, gradsQts);
expVal = 0;
assert(expVal == actVal, 'Unexpected output.');

%% Test actual output #267
grads = [];
grad1 = [
    1, 2;
    3, 4;
];
grad2 = [
    5, 6;
    7, 8;
];
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants9;
gradsQts = gradsQuants(grads, nQuants);
fun = fun9;
actVal = evalFun(fun, gradsQts);
expVal(1, 1, 2) = 0;
expVal(1, 1, 1) = 0;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #268
grad = [
    1, 2, 3;
    4, 5, 6;
    7, 8, 9;
];
nQuants = nQuants9;
gradsQts = gradsQuants(grad, nQuants);
fun = fun9;
actVal = evalFun(fun, gradsQts);
expVal = 0;
assert(expVal == actVal, 'Unexpected output.');

%% Test actual output #269
grads = [];
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
grads(:, :, 2) = grad2;
grads(:, :, 1) = grad1;
nQuants = nQuants9;
gradsQts = gradsQuants(grads, nQuants);
fun = fun9;
actVal = evalFun(fun, gradsQts);
expVal(1, 1, 2) = 0;
expVal(1, 1, 1) = 0;
assert( all( all( all(expVal == actVal) ) ), 'Unexpected output.');

%% Test actual output #270
grad = [
     1,  2,  4;
     7, 11, 16;
    22, 29, 37;
];
nQuants = nQuants9;
gradsQts = gradsQuants(grad, nQuants);
fun = fun9;
actVal = evalFun(fun, gradsQts);
expVal = 93494.25;
assert(expVal == actVal, 'Unexpected output.');
