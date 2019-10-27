# Usage information

## nearWallScaling

> A tool to study the near-wall scaling behavior of physical quantities that are based on the velocity field of incompressible turbulent flows

### About

This document describes in detail how to use the `MATLAB` scripts of the `nearWallScaling` module of `lesTools`.
For background information about this module, see the `lesTools` [readme](../README.md).

### Usage

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

## License

Copyright (c) 2016-2019 Maurits H. Silvis

This source code package is subject to the terms and conditions defined in the MIT License, which can be found in the file [LICENSE.txt](../LICENSE.txt).
