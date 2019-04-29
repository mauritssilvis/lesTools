# nearWallScaling

> A tool to study the near-wall scaling behavior of subgrid-scale models and other physical quantities that are based on the velocity field of incompressible turbulent flows

## Background

Using numerical simulations, Chapman and Kuhn [[1](#chapmankuhn1986nws)] revealed the limiting power-law behavior of incompressible turbulence near a solid wall.
Among other things, they determined the scaling behavior of the Reynolds stresses in terms of the wall-normal distance.
It is desirable that subgrid-scale models for the turbulent stresses exhibit the same asymptotic near-wall behavior as the Reynolds stresses [[2](#nicoudetal2011nws), [3](#triasetal2015nws), [4](#silvisetal2017nws), [5](#silvisverstappenndnws)].

The near-wall behavior of subgrid-scale models can be studied by expanding the components of the velocity field in terms of the wall-normal coordinate [[3](#triasetal2015nws)].
Due to the no-slip condition, the zeroth-order terms in these expansions have to vanish.
By incompressibility, the first-order term in the expansion of the wall-normal velocity component then also has to vanish.
The tangential velocity components will, thus, be first order in the wall-normal coordinate, while the wall-normal velocity component exhibits a second-order near-wall scaling.
The expansion of the velocity field can be inserted in subgrid-scale models (or other physical quantities based on the velocity field) to study their behavior near a solid wall.

## Module

The `nearWallScaling` module facilitates the study of the near-wall scaling behavior of subgrid-scale models and other physical quantities that are based on the velocity field of incompressible turbulent flows [[4](#silvisetal2017nws), [5](#silvisverstappenndnws)].

## Usage

To use the scripts of the `nearWallScaling` module, one needs `MATLAB` with the `symbolic` toolbox.
Usage was tested in `MATLAB R2018a`.

The main function of the `nearWallScaling` module can be found in the script [nearWallScaling.m](nearWallScaling.m).
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

## More information

Refer to http://www.mauritssilvis.nl/code.php#nearWallScaling for more information.

## References

1. Chapman, D. R. and Kuhn, G. D. (1986). <a name="chapmankuhn1986nws"></a> “The limiting behaviour of turbulence near a wall”. *Journal of Fluid Mechanics* 170, 265-292. DOI: [10.1017/S0022112086000885](http://doi.org/10.1017/S0022112086000885).

2. Nicoud, F., Baya Toda, H., Cabrit, O., Bose, S. and Lee, J. (2011). <a name="nicoudetal2011nws"></a> “Using singular values to build a subgrid-scale model for large eddy simulations”. *Physics of Fluids* 23, 085106. DOI: [10.1063/1.3623274](http://doi.org/10.1063/1.3623274).

3. Trias, F. X., Folch, D., Gorobets, A. and Oliva, A. (2015). <a name="triasetal2015nws"></a> “Building proper invariants for eddy-viscosity subgrid-scale models”. *Physics of Fluids* 27, 065103. DOI: [10.1063/1.4921817](http://doi.org/10.1063/1.4921817).

4. **Silvis**, M. H., Remmerswaal, R. A. and Verstappen, R. (2017). <a name="silvisetal2017nws"></a> “Physical consistency of subgrid-scale models for large-eddy simulation of incompressible turbulent flows”. *Physics of Fluids* 29, 015105. DOI: [10.1063/1.4974093](http://doi.org/10.1063/1.4974093).

5. **Silvis**, M. H. and Verstappen, R. (n.d.). <a name="silvisverstappenndnws"></a> “Creating physics-based turbulence models for large-eddy simulation”. (in preparation).

## License

Copyright (c) 2016-2019 Maurits H. Silvis

This source code package is subject to the terms and conditions defined in the MIT License, which can be found in the file [LICENSE.txt](../LICENSE.txt).
