# lesTools

## About

`lesTools` is a toolbox of `MATLAB` scripts that can aid in the construction and assessment of subgrid-scale models for large-eddy simulations of incompressible turbulent flows.
Currently, `lesTools` consists of one module.

## Modules

### Near-wall scaling behavior

In their 1986 paper, Chapman and Kuhn revealed the near-wall scaling behavior of the time-averaged turbulent stresses.
It is desirable that subgrid-scale models for the turbulent stresses exhibit the same behavior in the vicinity of solid walls (see, e.g., Silvis et al. 2017).

The current module, which can be found in the [`nearWallScal` folder](nearWallScal) of this package, can be used to determine the near-wall scaling behavior of physical quantities that depend on the velocity field and/or the velocity field of an incompressible turbulent flow.

#### References

Chapman, D. R. and Kuhn, G. D. (1986) The limiting behaviour of turbulence near a wall. *J. Fluid Mech.* **170**, 265-292.

Silvis, M. H., Remmerswaal, R. A. and Verstappen, R. (2017) Physical consistency of subgrid-scale models for large-eddy simulation of incompressible turbulent flows. *Phys. Fluids* **29**, 015105.

## License

Copyright (c) 2016-2019 Maurits H. Silvis

This file is subject to the terms and conditions defined in
the MIT License, which can be found in the file 'license.txt'
that is part of this source code package.
