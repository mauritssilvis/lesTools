# lesTools

> A toolbox for the construction and assessment of subgrid-scale models for large-eddy simulations

## About

`lesTools` is a toolbox of `MATLAB` scripts that can aid in the construction and assessment of subgrid-scale models for large-eddy simulations of turbulent flows.

Currently, `lesTools` consists of two modules:

1. [modStats](#modStats)
2. [nearWallScaling](#nearwallscaling)

## modStats

> A tool to study the average behavior of physical quantities that are based on the velocity gradient of turbulent flows

### About

The `modStats` module of `lesTools` is a tool that can be used to study the average behavior of physical quantities that are based on the velocity gradient of turbulent flows.
As such, this module can be used to estimate the model constants of subgrid-scale models for large-eddy simulation.

### Background

Large-eddy simulation is a powerful methodology for the numerical prediction of the behavior of turbulent flows.
In large-eddy simulation, the large scales of motion in flows are explicitly computed, whereas the effects of the small-scale motions are modeled using subgrid-scale models (see, e.g., the monographs by Sagaut [[1](#sagaut2006ms)] and Pope [[2](#pope2011ms)]).
Most subgrid-scale models can, however, only be used in a practical large-eddy simulation, once the value of one or more model constants has been determined.

The model constants of eddy viscosity models can be estimated using a straight-forward dissipation argument.
One simply requires that the average subgrid dissipation due to an eddy viscosity model matches the average dissipation of the Smagorinsky model [[3](#nicoudducros1999ms), [4](#nicoudetal2011ms), [5](#triasetal2015ms), [6](#silvisetal2017ms)].
The average subgrid dissipation of a subgrid-scale model can, for example, be computed using the velocity field of a homogeneous isotropic turbulent flow, either coming from an experiment or a numerical simulation [[3](#nicoudducros1999ms)].
Alternatively, the subgrid dissipation can be estimated using a large number of synthetic velocity gradients, given by random matrices [[4](#nicoudetal2011ms), [5](#triasetal2015ms)] that may be sampled from a uniform distribution [[6](#silvisetal2017ms)].
One subsequently equates the average subgrid dissipation from the eddy viscosity model of interest with the average dissipation of the Smagorinsky model to obtain an estimate of the sought model constant in terms of the Smagorinsky constant.

The above dissipation estimate cannot be used to determine the model constant of subgrid-scale model terms that are nondissipative.
Consider, for example, nonlinear terms that are proportional to the commutator of the rate-of-strain and rate-of-rotation tensors [[7](#silvisverstappenndms), [8](#silvisetal2019ms)].
We can, however, determine the desired order of magnitude of the model constant of such a nonlinear term as follows [[8](#silvisetal2019ms)].
We first determine the average value of the coefficient that accompanies the nonlinear term.
To obtain an estimate of the model constant of the nonlinear term, we then compare this average with the proportionality constant of 1 / 12 of the same nonlinear term in the gradient model, which forms the lowest-order Taylor series approximation of the turbulent stress tensor in terms of the filter length.

### Module

The `modStats` module, which can be found in the [modStats](modStats) folder of this toolbox, provides scripts that facilitate the determination of the average dissipation and the average model coefficients of subgrid-scale models.
As such, this module can be used to determine the model constants of subgrid-scale models [[6](#silvisetal2017ms), [7](#silvisverstappenndms), [8](#silvisetal2019ms)].
More generally, the `modStats` module can be used to study the average behavior of any quantity that is based on the velocity gradient of a turbulent flow.

### Usage

To use the scripts of the `modStats` module, one needs `MATLAB`.
Usage was tested in `MATLAB R2018a`.

The main function of the `modStats` module is called `modStats()` and can be found in the script [modStats.m](modStats/src/modStats.m).
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
        - the function handle `@(G, S, W, I1) = sqrt(2 * I1)` or, equivalently, the file name `'nueSmagorinsky'` of the example function in the [mods](modStats/src/mods) folder: the reduced eddy viscosity of the Smagorinsky model, i.e., the eddy viscosity without the model constant and the squared length scale;
        - the file names `'nueAMD'`, `'nueQR'`, `'nueS3PQ'`, `'nueS3PR'`, `'nueS3QR'`, `'nueVortexStretching'`, `'nueVreman'` or `'nueWALE'`: the reduced eddy viscosity of several other example eddy viscosity models in the [mods](modStats/src/mods) folder;
        - `@(G, S, W, I1) = 2 * I1 * sqrt(2 * I1)` or `'dissSmagorinsky'`: the reduced dissipation of kinetic energy of the Smagorinsky model, i.e., the dissipation without model constant and squared length scale;
        - the file names `'dissAMD'`, `'dissQR'`, `'dissS3PQ'`, `'dissS3PR'`, `'dissS3QR'`, `'dissVortexStretching'`, `'dissVreman'` or `'dissWALE'`: the reduced dissipation of kinetic energy of several other example eddy viscosity models in the [mods](modStats/src/mods) folder;
        - etc.

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
        - a custom function reading velocity gradients from a file;
        - etc.
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

Depending on your purposes, please consider citing the work by Silvis et al. [[6](#silvisetal2017ms)] and/or Silvis et al. [[8](#silvisetal2019ms)] when making use of the `modStats` module.

### More information

Refer to http://www.mauritssilvis.nl/code.php#modStats for more information.

### Acknowledgments

Mirko Signorelli is kindly acknowledged for his assistance in determining the accuracy of the model statistics.

### References

1. Sagaut, P. (2006). <a name="sagaut2006ms"></a> <i>Large Eddy Simulation for Incompressible Flows: An Introduction</i>. 3rd ed. Springer-Verlag Berlin Heidelberg. DOI: [10.1007/b137536](http://doi.org/10.1007/b137536).

2. Pope, S. B. (2011). <a name="pope2011ms"></a> *Turbulent Flows*. Cambridge University Press.

3. Nicoud, F., Ducros, F. (1999). <a name="nicoudducros1999ms"></a> “Subgrid-scale stress modelling based on the square of the velocity gradient tensor”. *Flow, Turbulence and Combustion* 62, 183-200. DOI: [10.1023/A:1009995426001](http://doi.org/10.1023/A:1009995426001).

4. Nicoud, F., Baya Toda, H., Cabrit, O., Bose, S. and Lee, J. (2011). <a name="nicoudetal2011ms"></a> “Using singular values to build a subgrid-scale model for large eddy simulations”. *Physics of Fluids* 23, 085106. DOI: [10.1063/1.3623274](http://doi.org/10.1063/1.3623274).

5. Trias, F. X., Folch, D., Gorobets, A. and Oliva, A. (2015). <a name="triasetal2015ms"></a> “Building proper invariants for eddy-viscosity subgrid-scale models”. *Physics of Fluids* 27, 065103. DOI: [10.1063/1.4921817](http://doi.org/10.1063/1.4921817).

6. **Silvis**, M. H., Remmerswaal, R. A. and Verstappen, R. (2017). <a name="silvisetal2017ms"></a> “Physical consistency of subgrid-scale models for large-eddy simulation of incompressible turbulent flows”. *Physics of Fluids* 29, 015105. DOI: [10.1063/1.4974093](http://doi.org/10.1063/1.4974093).

7. **Silvis**, M. H. and Verstappen, R. (n.d.). <a name="silvisverstappenndms"></a> “Creating physics-based turbulence models for large-eddy simulation”. (in preparation).

8. **Silvis**, M. H., Bae, H. J., Trias, F. X., Abkar, M., Verstappen, R. (2019). <a name="silvisetal2019ms"></a> &#8220;A nonlinear subgrid-scale model for large-eddy simulations of rotating turbulent flows&#8221;. *arXiv* [physics.flu-dyn]. (submitted). 

## nearWallScaling

> A tool to study the near-wall scaling behavior of subgrid-scale models and other physical quantities that are based on the velocity field of incompressible turbulent flows

### Background

Using numerical simulations, Chapman and Kuhn [[1](#chapmankuhn1986nws)] revealed the limiting power-law behavior of incompressible turbulence near a solid wall.
Among other things, they determined the scaling behavior of the Reynolds stresses in terms of the wall-normal distance.
To ensure that, for example, the dissipation of kinetic energy near solid walls is properly captured, subgrid-scale models for the turbulent stresses should exhibit the same asymptotic near-wall behavior as the Reynolds stresses [[2](#nicoudetal2011nws), [3](#triasetal2015nws), [4](#silvisetal2017nws), [5](#silvisverstappenndnws)].

The near-wall behavior of subgrid-scale models can be studied by expanding the components of the velocity field in terms of the wall-normal coordinate [[3](#triasetal2015nws)].
Due to the no-slip condition, the zeroth-order terms in these expansions have to vanish.
By incompressibility, the first-order term in the expansion of the wall-normal velocity component then also has to vanish.
The tangential velocity components will, thus, be first order in the wall-normal coordinate, while the wall-normal velocity component exhibits a second-order near-wall scaling.
The expansion of the velocity field can be inserted in subgrid-scale models (or other physical quantities based on the velocity field) to study their behavior near a solid wall.

### Module

The `nearWallScaling` module, which can be found in the [nearWallScaling](nearWallScaling) folder of this toolbox, facilitates the study of the near-wall scaling behavior of subgrid-scale models and other physical quantities that are based on the velocity field of incompressible turbulent flows [[4](#silvisetal2017nws), [5](#silvisverstappenndnws)].

### Usage

To use the scripts of the `nearWallScaling` module, one needs `MATLAB` with the `symbolic` toolbox.
Usage was tested in `MATLAB R2018a`.

The main function of the `nearWallScaling` module can be found in the script [nearWallScaling.m](nearWallScaling/nearWallScaling.m).
This function has two arguments, `fun` and `ord`.

The first argument, `fun` should be a function name or handle, representing a function of the velocity field and/or the velocity gradient.
This function should accept between 1 and 10 arguments.
The first argument should be:

- the velocity field (in which a velocity field expansion will be inserted as a 3 x 1 vector).

The next arguments, if present, are assumed to be:

- the velocity gradient `G` (a 3 x 3 matrix),
- the rate-of-strain tensor `S` (a 3 x 3 matrix),
- the rate-of-rotation tensor `W` (a 3 x 3 matrix),

and the following scalar combined invariants of the rate-of-strain
and rate-of-rotation tensors:

- `I1 = trace(S^2)`,
- `I2 = trace(W^2)`,
- `I3 = trace(S^3)`,
- `I4 = trace(S W^2)`,
- `I5 = trace(S^2 W^2)`,
- `I6 = trace(S^2 W^2 S W)`.

Examples of input functions are:

- `@(vel) vel(1)`, to see the (expected) near-wall scaling of the first velocity field component,
- `@(vel, G, S) S`, to determine the scaling behavior of the rate-of-strain tensor,
- `@(vel, G, S, W, I1, I2) I1 - I2 `, to determine the scaling behavior of the (squared) velocity gradient magnitude,
- `@(vel, G, S, W, I1, I2) I1 + I2 `,
- etc.

The second argument, `ord`, is optional and represents the polynomial order that will be used in the expansion of the velocity field in terms of the wall-normal coordinate (which is denoted as `y`).
The default value of this argument is 1.

If the script successfully finishes running, two output variables are provided, `scal` and `expn`.
The first output variable, `scal`, contains the near-wall scaling information of the physical quantity represent by `fun`.
The second variable, `expn`, contains the full expansion of the provided quantity in terms of the wall-normal coordinate.

Note that, currently, functions `fun` involving fractions, fractional powers and/or special functions of the velocity field and/or velocity gradient are not accepted.
To study the near-wall scaling behavior of quantities involving fractional functions of the velocity field or gradient, one can first study the numerators and denominators separately, and then (manually) draw conclusions about the near-wall scaling behavior of the full function.
The same holds for (the arguments of) special functions and nth roots.

Depending on your purposes, please consider citing the work by Silvis et al. [[4](#silvisetal2017nws)] and/or Silvis and Verstappen [[5](#silvisverstappenndnws)] when making use of the `nearWallScaling` module.

### More information

Refer to http://www.mauritssilvis.nl/code.php#nearWallScaling for more information.

### References

1. Chapman, D. R. and Kuhn, G. D. (1986). <a name="chapmankuhn1986nws"></a> “The limiting behaviour of turbulence near a wall”. *Journal of Fluid Mechanics* 170, 265-292. DOI: [10.1017/S0022112086000885](http://doi.org/10.1017/S0022112086000885).

2. Nicoud, F., Baya Toda, H., Cabrit, O., Bose, S. and Lee, J. (2011). <a name="nicoudetal2011nws"></a> “Using singular values to build a subgrid-scale model for large eddy simulations”. *Physics of Fluids* 23, 085106. DOI: [10.1063/1.3623274](http://doi.org/10.1063/1.3623274).

3. Trias, F. X., Folch, D., Gorobets, A. and Oliva, A. (2015). <a name="triasetal2015nws"></a> “Building proper invariants for eddy-viscosity subgrid-scale models”. *Physics of Fluids* 27, 065103. DOI: [10.1063/1.4921817](http://doi.org/10.1063/1.4921817).

4. **Silvis**, M. H., Remmerswaal, R. A. and Verstappen, R. (2017). <a name="silvisetal2017nws"></a> “Physical consistency of subgrid-scale models for large-eddy simulation of incompressible turbulent flows”. *Physics of Fluids* 29, 015105. DOI: [10.1063/1.4974093](http://doi.org/10.1063/1.4974093).

5. **Silvis**, M. H. and Verstappen, R. (n.d.). <a name="silvisverstappenndnws"></a> “Creating physics-based turbulence models for large-eddy simulation”. (in preparation).

## More information

Refer to http://www.mauritssilvis.nl/code.php#lesTools for more information.

## License

Copyright (c) 2016-2019 Maurits H. Silvis

This source code package is subject to the terms and conditions defined in the MIT License, which can be found in the file [LICENSE.txt](LICENSE.txt).
