# Usage information

## modStats

> A tool to study the average behavior of physical quantities that are based on the velocity gradient of turbulent flows

### About

This document describes in detail how to use the `MATLAB` scripts of the `modStats` module of `lesTools`.
For more information about this module, see the `lesTools` [readme](../README.md).

### Usage

To use the scripts of the `modStats` module, one needs `MATLAB`.
Usage was tested in `MATLAB R2018a`.

The main function of the `modStats` module is called `modStats()` and can be found in the script [modStats.m](src/modStats.m).
This function, which can be used to compute the average of a physical quantity that is based on the velocity gradient of a turbulent flow, has one required argument:

* `fun`
    + Either the file name of a function or a function handle, representing a physical quantity that is a function of the velocity gradient of a turbulent flow.
    + The function provided through `fun` should itself accept between 1 and 9 arguments. 
    + The first argument should be 
        - the velocity gradient `G` (a matrix).
    + The next arguments, if present, are assumed to be
        - the rate-of-strain tensor `S` (a matrix),
        - the rate-of-rotation tensor `W` (a matrix),
    + and the following scalar combined invariants of the rate-of-strain and rate-of-rotation tensors:
        - `I1 = trace(S^2)`,
        - `I2 = trace(W^2)`,
        - `I3 = trace(S^3)`,
        - `I4 = trace(S W^2)`,
        - `I5 = trace(S^2 W^2)`,
        - `I6 = trace(S^2 W^2 S W)`.
    + Examples:
        - the function handle `@(G) G`: the velocity gradient;
        - `@(G, S, W) S * W - W * S`: the commutator of the rate-of-strain and rate-of-rotation tensors;
        - `@(G, S, W, I1, I2) = -(I1 + I2) / 2`: the second principal invariant of the velocity gradient;
        - `@(G, S, W, I1, I2) I1 - I2`: the squared magnitude of the velocity gradient;
        - `@(G, S, W, I1, I2, I3, I4) I3 / 3 + I4`: the third principal invariant of the velocity gradient;
        - `@(G, S, W, I1, I2, I3, I4, I5) 4 * (I5 - 1 / 2 * I1 * I2)`: the squared magnitude of the vortex stretching;
        - the function handle `@(G, S, W, I1) = sqrt(2 * I1)` or, equivalently, the file name `'nueSmagorinsky'` of the example function in the [mods](src/mods) folder: the reduced eddy viscosity of the Smagorinsky model, i.e., the eddy viscosity without the model constant and the squared length scale;
        - the file names `'nueAMD'`, `'nueQR'`, `'nueS3PQ'`, `'nueS3PR'`, `'nueS3QR'`, `'nueVortexStretching'`, `'nueVreman'` or `'nueWALE'`: the reduced eddy viscosity of several other example eddy viscosity models in the [mods](src/mods) folder;
        - `@(G, S, W, I1) = 2 * I1 * sqrt(2 * I1)` or `'dissSmagorinsky'`: the reduced dissipation of kinetic energy of the Smagorinsky model, i.e., the dissipation without model constant and squared length scale;
        - the file names `'dissAMD'`, `'dissQR'`, `'dissS3PQ'`, `'dissS3PR'`, `'dissS3QR'`, `'dissVortexStretching'`, `'dissVreman'` or `'dissWALE'`: the reduced dissipation of kinetic energy of several other example eddy viscosity models in the [mods](src/mods) folder.

The `modStats()` function additionally has a number of optional arguments:

* `precision`
    + A nonnegative double that marks the desired minimal relative standard deviation of the computed average of the physical quantity represented by the function `fun`.
    + Examples: `10^-2`, `10^-4`, ...
    + Default: `10^-4`.
    + If set to zero, the number of velocity gradients per sample, `nGrads`, is not adaptively increased and has to be specified explicitly.
* `nSamples`
    + A positive integer signifying the desired number of samples that are to be taken to compute the average value of the function `fun`.
    + Examples: `10`, `100`, `1000`, ...
    + Default: `100`.
* `nGrads`
    + A positive integer denoting the number of velocity gradients that should be used per sample.
    + Examples: `10^2`, `10^4`, `10^6`, ...
    + Default: `10^6`.
    + If `precision` is zero, `nGrads` is not adaptively increased and has to be specified explicitly.
    If `precision` is nonzero, the value of `nGrads` represents the initial number of velocity gradients per sample.
* `gradsFun`
    + A function name or handle of a generator of velocity gradients.
    + Examples: 
        - the file name `'unifMats'`: a function that returns matrices with elements that are uniformly distributed on the interval [-1, 1], representing random velocity gradients; 
        - `'normMats'`: a function that returns matrices with elements that are distributed according to the standard normal distribution, representing random velocity gradients;
        - a custom function reading velocity gradients from a file.
    + Default: `'unifMats'`.
* `spaceDims`
    + A positive integer that denotes the number of spatial dimensions.
    + Examples: `2` or `3`.
    + Default: `3`.
* `flowDims`
    + A vector of positive integers that mark the flow dimensions.
    + Examples: `[1, 2]`, `[1, 2, 3]`, ...
    + Default: `[1, 2, 3]`.
* `makeIncompr`
    + A boolean that signals if velocity gradients have to be made incompressible (traceless) or not.
    + Default: `true`.
* `checkIncompr`
    + A boolean that tells if the incompressibility of velocity gradients has to be checked or not.
    + Default: `false`.
* `shiftAvg`
    + A double that can be set to shift any computed averages.
    + Examples: `0`, `1`, `10`, ...
    + Default: `1`.
    + If averages of the physical quantity of interest are small, their relative standard deviation may not reach the desired precision. The averages will then be shifted by `shiftAvg`.

If valid input is provided, the `modStats()` function produces one output variable:

* `stats`
    + A struct that contains information about the average behavior of the physical quantity of interest.
    + The first (and possibly only) entry of this struct contains all the provided input arguments, the default values of any unspecified input arguments and the following statistical data:
        - `avgs`: the `nSamples` sample averages of the physical quantity represented by `fun`;
        - `avg`: the average of the sample averages, i.e., the average value of `fun`;
        - `dev`: the standard deviation of the sample averages, which represents the precision of the computed average;
        - `relDev`: the relative standard deviation of the sample averages, which represents the precision of the computed average relative to that average;
        - `relDevShift`: the relative standard deviation of the shifted sample averages, which represents the relative precision of the computed average in case that average is close to zero;
        - `hasPrecision`: a flag that tells if the data have the desired precision.
    + All subsequent entries will contain similar information, but now for an increased number of gradients `nGrads` per sample.

The sample averages `avgs`, the average `avg` of the physical quantity of interest and the standard deviation `dev` make use of the same units of time, or the same characteristic time scale, that is provided by the generator of velocity gradients `gradsFun`.
That is, when the input parameter `gradsFun` is set to the name of a custom function that generates (random) velocity gradients or that reads velocity gradients from a file, the output of the `modStats()` function uses the same units of time as provided by those velocity gradients.
If, on the other hand, the generator of velocity gradients `gradsFun` is specified as `'unifMats'`,  as `'normMats'` or is left empty to attain the default (former) value, the output from the `modStats()` function is expressed with respect to an arbitrary and unknown time scale.
In this latter case, only output for physical quantities `fun` that are a dimensionless function of the velocity gradient can be interpreted directly.
Output for all other, dimensionful functions of the velocity gradient should only be interpreted relative to other dimensionful functions.

To facilitate the comparison of dimensionful function of the velocity gradient, the `modStats` module will soon provide a function called `relModStats()`.
More details on the usage of this function will be provided through this readme in the near future.

## License

Copyright (c) 2016-2019 Maurits H. Silvis

This source code package is subject to the terms and conditions defined in the MIT License, which can be found in the file [LICENSE.txt](../LICENSE.txt).
