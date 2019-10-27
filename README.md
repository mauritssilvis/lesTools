# lesTools

> A toolbox for the construction and assessment of subgrid-scale models for large-eddy simulations

## About

`lesTools` is a toolbox of `MATLAB` scripts that can aid in the construction and assessment of subgrid-scale models for large-eddy simulations of turbulent flows.

Currently, `lesTools` consists of two modules:

1. the model statistics module [modStats](#modStats);
2. the near-wall scaling module [nearWallScaling](#nearwallscaling).

## Model statistics module `modStats`

> A tool to study the average behavior of physical quantities that are based on the velocity gradient of turbulent flows

### About

The `modStats` module is a tool that can be used to study the average behavior of physical quantities that are based on the velocity gradient of turbulent flows.
As such, this module can be used to estimate the model constants of subgrid-scale models for large-eddy simulation.

### Background

Large-eddy simulation is a powerful methodology for the numerical prediction of the behavior of turbulent flows.
In large-eddy simulation, the large scales of motion in flows are explicitly computed, whereas the effects of the small-scale motions are modeled using subgrid-scale models (see, e.g., the monographs by Sagaut [[1](#sagaut2006)] and Pope [[2](#pope2011)]).
Most subgrid-scale models can, however, only be used in a practical large-eddy simulation, once the value of one or more model constants has been determined.

The model constants of eddy viscosity models can be estimated using a straight-forward dissipation argument.
One simply requires that the average subgrid dissipation due to an eddy viscosity model matches the average dissipation of the Smagorinsky model [[3](#nicoudducros1999), [4](#nicoudetal2011), [5](#triasetal2015), [6](#silvisetal2017)].
The average subgrid dissipation of a subgrid-scale model can, for example, be computed using the velocity field of a homogeneous isotropic turbulent flow, either coming from an experiment or a numerical simulation [[3](#nicoudducros1999)].
Alternatively, the subgrid dissipation can be estimated using a large number of synthetic velocity gradients, given by random matrices [[4](#nicoudetal2011), [5](#triasetal2015)] that may be sampled from a uniform distribution [[6](#silvisetal2017)].
One subsequently equates the average subgrid dissipation from the eddy viscosity model of interest with the average dissipation of the Smagorinsky model to obtain an estimate of the sought model constant in terms of the Smagorinsky constant.

The above dissipation estimate cannot be used to determine the model constant of subgrid-scale model terms that are nondissipative.
Consider, for example, nonlinear terms that are proportional to the commutator of the rate-of-strain and rate-of-rotation tensors [[7](#silvisverstappennd), [8](#silvisetal2019)].
We can, however, determine the desired order of magnitude of the model constant of such a nonlinear term as follows [[8](#silvisetal2019)].
We first determine the average value of the coefficient that accompanies the nonlinear term.
To obtain an estimate of the model constant of the nonlinear term, we then compare this average with the proportionality constant of 1 / 12 of the same nonlinear term in the gradient model, which forms the lowest-order Taylor series approximation of the turbulent stress tensor in terms of the filter length.

### Module

The `modStats` module provides scripts that facilitate the determination of the average dissipation and the average model coefficients of subgrid-scale models.
As such, this module can be used to determine the model constants of subgrid-scale models [[6](#silvisetal2017), [7](#silvisverstappennd), [8](#silvisetal2019)].
More generally, the `modStats` module can be used to study the average behavior of any quantity that is based on the velocity gradient of a turbulent flow.

### Usage

Usage of the `MATLAB` scripts of the `modStats` module is explained in detail in the readme in the [modStats](modStats) folder of this toolbox.

Depending on your purposes, please consider citing the work by Silvis et al. [[6](#silvisetal2017)] and/or Silvis et al. [[8](#silvisetal2019)] when making use of the `modStats` module.

### Acknowledgments

Mirko Signorelli is kindly acknowledged for his assistance in determining the accuracy of the model statistics.

## Near-wall scaling behavior `nearWallScaling`

> A tool to study the near-wall scaling behavior of physical quantities that are based on the velocity field of incompressible turbulent flows

### About

The `nearWallScaling` module of `lesTools` is a tool to study the near-wall scaling behavior of physical quantities that are based on the velocity field of incompressible turbulent flows.
This module can, for example, be used to analyze the near-wall scaling behavior of subgrid-scale models.

### Background

Using numerical simulations, Chapman and Kuhn [[9](#chapmankuhn1986)] revealed the limiting power-law behavior of incompressible turbulence near a solid wall.
Among other things, they determined the scaling behavior of the Reynolds stresses in terms of the wall-normal distance.
To ensure that, for example, the dissipation of kinetic energy near solid walls is properly captured, subgrid-scale models for the turbulent stresses should exhibit the same asymptotic near-wall behavior as the Reynolds stresses [[4](#nicoudetal2011), [5](#triasetal2015), [6](#silvisetal2017), [7](#silvisverstappennd)].

The near-wall behavior of subgrid-scale models can be studied by expanding the components of the velocity field in terms of the wall-normal coordinate [[5](#triasetal2015)].
Due to the no-slip condition, the zeroth-order terms in these expansions have to vanish.
By incompressibility, the first-order term in the expansion of the wall-normal velocity component then also has to vanish.
The tangential velocity components will, thus, be first order in the wall-normal coordinate, while the wall-normal velocity component exhibits a second-order near-wall scaling.
The expansion of the velocity field can be inserted in subgrid-scale models (or other physical quantities based on the velocity field) to study their behavior near a solid wall.

### Module

The `nearWallScaling` module facilitates the study of the near-wall scaling behavior of subgrid-scale models and other physical quantities that are based on the velocity field of incompressible turbulent flows [[6](#silvisetal2017), [7](#silvisverstappennd)].

### Usage

Usage of the `MATLAB` scripts of the `nearWallScaling` module is explained in detail in the readme in the [nearWallScaling](nearWallScaling) folder of this toolbox.

Depending on your purposes, please consider citing the work by Silvis et al. [[6](#silvisetal2017)] and/or Silvis and Verstappen [[7](#silvisverstappennd)] when making use of the `nearWallScaling` module.

## References

1. Sagaut, P. (2006). <a name="sagaut2006"></a> <i>Large Eddy Simulation for Incompressible Flows: An Introduction</i>. 3rd ed. Springer-Verlag Berlin Heidelberg. DOI: [10.1007/b137536](http://doi.org/10.1007/b137536).

2. Pope, S. B. (2011). <a name="pope2011"></a> *Turbulent Flows*. Cambridge University Press.

3. Nicoud, F., Ducros, F. (1999). <a name="nicoudducros1999"></a> “Subgrid-scale stress modelling based on the square of the velocity gradient tensor”. *Flow, Turbulence and Combustion* 62, 183-200. DOI: [10.1023/A:1009995426001](http://doi.org/10.1023/A:1009995426001).

4. Nicoud, F., Baya Toda, H., Cabrit, O., Bose, S. and Lee, J. (2011). <a name="nicoudetal2011"></a> “Using singular values to build a subgrid-scale model for large eddy simulations”. *Physics of Fluids* 23, 085106. DOI: [10.1063/1.3623274](http://doi.org/10.1063/1.3623274).

5. Trias, F. X., Folch, D., Gorobets, A. and Oliva, A. (2015). <a name="triasetal2015"></a> “Building proper invariants for eddy-viscosity subgrid-scale models”. *Physics of Fluids* 27, 065103. DOI: [10.1063/1.4921817](http://doi.org/10.1063/1.4921817).

6. **Silvis**, M. H., Remmerswaal, R. A. and Verstappen, R. (2017). <a name="silvisetal2017"></a> “Physical consistency of subgrid-scale models for large-eddy simulation of incompressible turbulent flows”. *Physics of Fluids* 29, 015105. DOI: [10.1063/1.4974093](http://doi.org/10.1063/1.4974093).

7. **Silvis**, M. H. and Verstappen, R. (n.d.). <a name="silvisverstappennd"></a> “Creating physics-based subgrid-scale models for large-eddy simulation”. (in preparation).

8. **Silvis**, M. H., Bae, H. J., Trias, F. X., Abkar, M., Verstappen, R. (2019). <a name="silvisetal2019"></a> &#8220;A nonlinear subgrid-scale model for large-eddy simulations of rotating turbulent flows&#8221;. *arXiv* [physics.flu-dyn]. (submitted). 

9. Chapman, D. R. and Kuhn, G. D. (1986). <a name="chapmankuhn1986"></a> “The limiting behaviour of turbulence near a wall”. *Journal of Fluid Mechanics* 170, 265-292. DOI: [10.1017/S0022112086000885](http://doi.org/10.1017/S0022112086000885).

## More information

Refer to http://www.mauritssilvis.nl/code.php#lesTools for more information.

## License

Copyright (c) 2016-2019 Maurits H. Silvis

This source code package is subject to the terms and conditions defined in the MIT License, which can be found in the file [LICENSE.txt](LICENSE.txt).
