% Test relModStats()
% Set which tests should be run
skipShort = false; % Run 1-second tests
skipMedium = true; % Skip 10-second tests
skipLong = true; % Skip 100-second tests
skipVeryLong = true; % Skip 1000-second tests
skipVeryVeryLong = true; % Skip 10000-second tests

%% Test actual output #1
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissVortexStretching';
    precision = 0.433454614477907;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'unifMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 12.0989576639096;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #2
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissVortexStretching';
    precision = 0.279432102780756;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'unifMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 11.6891737039160;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #3
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissVortexStretching';
    precision = 0.132273691744619;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'unifMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 11.8379830745754;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #4
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissVortexStretching';
    precision = 0.0431106981884260;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'unifMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 11.6628358179968;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #5
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissVortexStretching';
    precision = 0.0402948264533385;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'unifMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 11.6936041996145;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #6
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissVortexStretching';
    precision = 0.0262326266180306;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'unifMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 11.6965811241858;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #7
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissVortexStretching';
    precision = 0.0189012046877549;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'unifMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 11.7176349435066;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #8
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissVortexStretching';
    precision = 0.0131942096250415;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'unifMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 11.6885941618994;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #9
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissVortexStretching';
    precision = 0.00776153168150160;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'unifMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 11.6776139075307;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #10
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissVortexStretching';
    precision = 0.00447902107836167;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'unifMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 11.6842160538742;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #11
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissVortexStretching';
    precision = 0.00252254336255953;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'unifMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 11.6654498318403;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #12
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissVortexStretching';
    precision = 0.00126916450354214;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'unifMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 11.6665948450249;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #13
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissVortexStretching';
    precision = 0.000573926903009616;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'unifMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 11.6713401104750;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #14
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissVortexStretching';
    precision = 0.556544808142323;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'normMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 13.9704182947414;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #15
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissVortexStretching';
    precision = 0.539555658263670;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'normMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 12.5108649531382;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #16
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissVortexStretching';
    precision = 0.336485071748798;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'normMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 13.9512784452808;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #17
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissVortexStretching';
    precision = 0.171004109929482;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'normMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 13.8452168752946;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #18
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissVortexStretching';
    precision = 0.0581841624661844;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'normMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 13.7662468046888;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #19
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissVortexStretching';
    precision = 0.0538145084692216;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'normMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 13.5778431411761;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #20
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissVortexStretching';
    precision = 0.0495640688439031;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'normMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 13.5904196641420;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #21
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissVortexStretching';
    precision = 0.0296784183620706;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'normMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 13.7305137542229;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #22
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissVortexStretching';
    precision = 0.0179570301852153;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'normMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 13.6380481752556;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #23
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissVortexStretching';
    precision = 0.00507536093007046;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'normMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 13.6147211907526;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #24
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissVortexStretching';
    precision = 0.00441904305612847;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'normMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 13.6070753612230;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #25
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissVortexStretching';
    precision = 0.00156210665193862;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'normMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 13.6102478185658;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #26
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissVortexStretching';
    precision = 0.000639931157501115;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'normMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 13.6234391515288;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #27
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissQR';
    precision = 0.692114921655319;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'unifMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 64.3663185717389;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #28
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissQR';
    precision = 0.647138834432784;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'unifMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 65.3783730904041;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #29
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissQR';
    precision = 0.615605314160966;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'unifMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 61.1807798006428;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #30
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissQR';
    precision = 0.323001959962751;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'unifMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 61.4316251831171;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #31
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissQR';
    precision = 0.209151370072142;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'unifMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 62.2136822996964;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #32
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissQR';
    precision = 0.142472965444784;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'unifMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 60.2874636952237;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #33
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissQR';
    precision = 0.0612771192670215;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'unifMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 61.2405083803030;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #34
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissQR';
    precision = 0.0468568467501767;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'unifMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 61.5753359084368;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #35
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissQR';
    precision = 0.0297579305656015;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'unifMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 61.2829918801133;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #36
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissQR';
    precision = 0.0235507806858829;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'unifMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 61.3933011255911;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #37
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissQR';
    precision = 0.0117052379924591;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'unifMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 60.9843978120167;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #38
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissQR';
    precision = 0.00908769283130032;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'unifMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 61.2513582232939;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #39
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissQR';
    precision = 0.00651202094387927;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'unifMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 61.2859877661038;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #40
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissQR';
    precision = 0.00615326712104383;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'unifMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 60.9852205853360;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #41
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissQR';
    precision = 0.00339050143303731;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'unifMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 61.1723248483854;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #42
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissQR';
    precision = 0.00288223592000467;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'unifMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 61.1215134535916;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #43
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissQR';
    precision = 0.00188542764900258;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'unifMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 61.1275127883600;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #44
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissQR';
    precision = 0.00104857864260666;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'unifMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 61.1503782641442;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #45
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissQR';
    precision = 0.000832175391620180;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'unifMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 61.1610566152565;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #46
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissQR';
    precision = 0.750126934334740;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'normMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 56.2069450816189;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #47
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissQR';
    precision = 0.682347280493202;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'normMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 52.3217036602479;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #48
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissQR';
    precision = 0.437940361534673;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'normMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 54.4076589821428;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #49
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissQR';
    precision = 0.397876676805290;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'normMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 59.3886722322681;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #50
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissQR';
    precision = 0.272628047068899;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'normMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 58.9371827260519;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #51
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissQR';
    precision = 0.227125789921289;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'normMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 62.0192475769821;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #52
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissQR';
    precision = 0.119024531453210;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'normMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 62.0685867565564;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #53
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissQR';
    precision = 0.0730084381989996;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'normMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 62.2122576787132;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #54
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissQR';
    precision = 0.0723437000349865;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'normMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 62.1261117408147;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #55
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissQR';
    precision = 0.0663701170188636;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'normMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 63.8871158186098;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #56
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissQR';
    precision = 0.0408765985943659;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'normMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 62.1925911230244;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #57
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissQR';
    precision = 0.0335312695150988;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'normMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 62.5116155709083;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #58
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissQR';
    precision = 0.0237905958709075;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'normMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 62.0906427777985;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #59
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissQR';
    precision = 0.0131444646612710;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'normMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 62.0256336219007;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #60
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissQR';
    precision = 0.00695526627679948;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'normMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 62.2662886389749;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #61
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissQR';
    precision = 0.00591971863902600;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'normMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 62.4395021489384;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #62
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissQR';
    precision = 0.00350330719402042;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'normMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 62.3415796526957;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #63
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissQR';
    precision = 0.00195936364673065;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'normMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 62.3933586877528;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #64
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissQR';
    precision = 0.000970116381595345;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'normMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 62.3754800750647;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #65
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissQR';
    precision = 0.000548852609799401;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'normMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 62.3709371115881;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #66
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissVreman';
    precision = 0.342389402131889;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'unifMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 2.60740078838877;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #67
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissVreman';
    precision = 0.128403585301368;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'unifMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 2.74056551915797;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #68
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissVreman';
    precision = 0.0740534702414568;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'unifMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 2.61337367567594;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #69
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissVreman';
    precision = 0.0339866856954337;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'unifMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 2.60868136485660;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #70
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissVreman';
    precision = 0.0230204796486671;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'unifMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 2.59947110919985;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #71
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissVreman';
    precision = 0.0105725493504059;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'unifMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 2.60888590015442;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #72
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissVreman';
    precision = 0.00985345828424561;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'unifMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 2.60493486110360;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #73
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissVreman';
    precision = 0.00654227514358995;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'unifMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 2.60781671713387;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #74
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissVreman';
    precision = 0.00361514904412117;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'unifMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 2.60973234408957;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #75
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissVreman';
    precision = 0.00314341956193369;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'unifMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 2.60756462950998;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #76
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissVreman';
    precision = 0.00226465009734520;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'unifMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 2.60782057299467;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #77
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissVreman';
    precision = 0.00128582371217684;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'unifMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 2.60695128522688;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #78
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissVreman';
    precision = 0.000529085058278206;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'unifMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 2.60812399010186;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #79
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissVreman';
    precision = 0.493890664222748;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'normMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 2.69913782840643;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #80
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissVreman';
    precision = 0.458739662434903;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'normMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 2.94624350320894;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #81
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissVreman';
    precision = 0.295431399846721;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'normMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 2.74582970256463;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #82
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissVreman';
    precision = 0.137111584434767;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'normMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 2.70455391059252;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #83
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissVreman';
    precision = 0.0464953841089322;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'normMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 2.70060629750148;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #84
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissVreman';
    precision = 0.0381505872431641;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'normMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 2.70765271977922;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #85
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissVreman';
    precision = 0.0150223180154181;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'normMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 2.70913333303350;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #86
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissVreman';
    precision = 0.00427545453302907;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'normMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 2.71485122281549;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #87
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissVreman';
    precision = 0.00252728829055314;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'normMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 2.71892169751224;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #88
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissVreman';
    precision = 0.00137643430518534;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'normMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 2.71869432737583;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #89
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissVreman';
    precision = 0.000382250977697847;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'normMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 2.71772535680753;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #90
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissWALE';
    precision = 0.319221054699208;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'unifMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 13.5184676425902;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #91
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissWALE';
    precision = 0.203263649545487;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'unifMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 13.6905648936986;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #92
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissWALE';
    precision = 0.108538051979199;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'unifMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 11.9913812702760;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #93
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissWALE';
    precision = 0.0711736927530398;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'unifMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 11.8622081169461;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #94
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissWALE';
    precision = 0.0320055953348495;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'unifMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 11.9116745595117;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #95
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissWALE';
    precision = 0.0263336851220171;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'unifMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 11.9331155465250;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #96
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissWALE';
    precision = 0.00842744545516271;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'unifMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 11.9286781474696;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #97
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissWALE';
    precision = 0.00750557641306401;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'unifMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 11.9106127068987;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #98
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissWALE';
    precision = 0.00401919557496246;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'unifMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 11.9173465832500;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #99
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissWALE';
    precision = 0.00360079394036024;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'unifMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 11.9074477114377;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #100
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissWALE';
    precision = 0.00110191245429844;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'unifMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 11.9056365271763;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #101
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissWALE';
    precision = 0.000500563849705779;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'unifMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 11.9070002575188;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #102
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissWALE';
    precision = 0.433224502348801;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'normMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 13.7391670148535;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #103
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissWALE';
    precision = 0.392679970357373;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'normMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 14.9969857526370;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #104
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissWALE';
    precision = 0.264986341577916;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'normMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 14.8829744195378;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #105
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissWALE';
    precision = 0.117004649499376;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'normMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 13.1851532776870;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #106
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissWALE';
    precision = 0.0696669287759466;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'normMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 13.2156731143576;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #107
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissWALE';
    precision = 0.0496271152491136;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'normMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 13.0153946292847;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #108
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissWALE';
    precision = 0.0277172565729661;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'normMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 12.9734503254569;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #109
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissWALE';
    precision = 0.0144876750560701;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'normMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 12.8860830486732;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #110
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissWALE';
    precision = 0.00437617057885964;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'normMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 12.9979325951943;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #111
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissWALE';
    precision = 0.00125381828347383;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'normMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 13.0122718869744;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end

%% Test actual output #112
% Check if this test should be run
if ~skipShort
    % Yes, run this test

    % Define parameters
    fun1 = 'dissSmagorinsky';
    fun2 = 'dissWALE';
    precision = 0.000361211284700393;
    nSamples = 100;
    nGrads = 10;
    gradsFun = 'normMats';
    spaceDims = 3;
    flowDims = [1, 2, 3];
    makeIncompr = true;
    checkIncompr = true;
    shiftAvg1 = 1;
    shiftAvg2 = 1;

    % Obtain actual value
    actVal = relModStats(fun1, fun2, precision, nSamples, nGrads, gradsFun, spaceDims, flowDims, makeIncompr, checkIncompr, shiftAvg1, shiftAvg2);
    field = 'avg';
    actVal = actVal.relAvg;

    % Define expected value
    expVal = 13.0077460143753;

    % Define tolerance
    tol = 10 * precision;

    [actVal, expVal, tol, abs(actVal - expVal) / tol]

    % Test
    assert( abs(actVal - expVal) < tol, 'Unexpected output.' );
end
