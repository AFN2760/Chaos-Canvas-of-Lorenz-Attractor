# Chaos Canvas of Lorenz Attractor

An interactive MATLAB application designed to numerically solve and visualize the Lorenz Attractor system of non-linear differential equations. This project explores the transition between chaotic, damping, and global attractor behaviors depending on user-defined system parameters.

## Mathematical Overview
The system solves the three simultaneous first-order differential equations modeled by Edward Lorenz:
- $\frac{dx}{dt} = \sigma(y - x)$
- $\frac{dy}{dt} = x(\rho - z) - y$
- $\frac{dz}{dt} = xy - \beta z$

### System Behaviors Evaluated
1. **Global Attractor ($\rho < 1$):** A non-chaotic state where values eventually decay, converge to a certain value, and become stable.
2. **Chaotic Nature ($\rho > 1$):** Extremely sensitive to initial conditions ("The Butterfly Effect"), making the long-term output of the system completely unpredictable. This occurs under Pitchfork Bifurcation conditions where $\rho < \sigma\frac{\sigma+\beta+3}{\sigma-\beta-1}$ and $\sigma > \beta + 1$.
3. **Damping Nature ($\rho > 1$):** Smooth phase trajectories where the system converges stably toward static points when chaotic inequalities are not satisfied.

## Features
- Implementation of the **4th-Order Runge-Kutta (RK4) Method** for accurate numerical integration.
- Real-time plotting capability to watch the particle trajectory dynamically evolve.
- Multi-dimensional visualization: Time plots ($x, y, z$ vs. $t$), Phase plots ($y$ vs. $x$, $z$ vs. $x$), and a fully interactive **3D Plot** ($x$ vs. $y$ vs. $z$).

## System Constraints & Limitations
- The system shows the desired outputs for values of parameters $\sigma, \beta, \rho > 0$.
- If $\sigma, \beta, \rho = 0$ but the initial conditions are non-zero, the value of $x$ remains constant while $y$ and $z$ damp out and eventually converge to a constant value.
- If $\sigma, \beta, \rho = 0$ and all initial values are zero, then $x, y,$ and $z$ display a completely constant zero output.

## Requirements
- MATLAB (R2021a or newer recommended)
- MATLAB App Designer Runtime

## Authors
- **Abrar Fahim** (Student ID: 2106005)
- **Md. Abu Saleh Akib** (Student ID: 2106007)
