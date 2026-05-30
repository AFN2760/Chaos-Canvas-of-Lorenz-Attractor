# Chaos Canvas of Lorenz Attractor

[cite_start]An interactive MATLAB application designed to numerically solve and visualize the Lorenz Attractor system of non-linear differential equations[cite: 1, 16]. [cite_start]This project explores the transition between chaotic, damping, and global attractor behaviors depending on user-defined system parameters[cite: 2, 6, 8].

## Mathematical Overview
[cite_start]The system solves the three simultaneous first-order differential equations modeled by Edward Lorenz[cite: 1, 4]:
- [cite_start]$dx/dt = \sigma(y - x)$ [cite: 6]
- [cite_start]$dy/dt = x(\rho - z) - y$ [cite: 6]
- [cite_start]$dz/dt = xy - \beta z$ [cite: 6]

### System Behaviors Evaluated
1. [cite_start]**Global Attractor ($\rho < 1$):** Non-chaotic system where values eventually stabilize or decay[cite: 7, 24].
2. [cite_start]**Chaotic Nature ($\rho > 1$):** Very sensitive to initial conditions ("The Butterfly Effect"), creating the iconic butterfly-shaped phase space plot under Pitchfork Bifurcation conditions ($\sigma > \beta + 1$)[cite: 5, 9, 12].
3. [cite_start]**Damping Nature ($\rho > 1$):** Smooth spiral-shaped phase trajectories converging toward stability when chaotic inequalities are not satisfied[cite: 13, 14, 15].

## Features
- [cite_start]Implementation of the **4th-Order Runge-Kutta (RK4) Method** for accurate numerical integration[cite: 2].
- [cite_start]Real-time plotting capability to watch the particle trajectory dynamically evolve[cite: 24].
- [cite_start]Multi-dimensional visualization: Time plots ($x, y, z$ vs. $t$), Phase plots ($y$ vs. $x$, $z$ vs. $x$), and a fully interactive **3D Plot** ($x$ vs. $y$ vs. $z$)[cite: 3, 24].

## Requirements
- MATLAB (R2021a or newer recommended)
- MATLAB App Designer Runtime

## Authors
- [cite_start]**Abrar Fahim** (Student ID: 2106005) [cite: 1]
- **Md. [cite_start]Abu Saleh Akib** (Student ID: 2106007) [cite: 1]
