# CS236: Scientific Computing

Scientific computing coursework from the **Master of Science in Computer Science** program at the **University of the Philippines Diliman** (2015-2016). It covers the theory and practical implementation of numerical methods, including approximation theory, numerical integration, and solutions to differential equations with emphasis on accuracy, stability, and computational efficiency.

## Repository Overview

This contains implementations of numerical computing techniques applied to real-world problems:

- **Numerical Methods**: Interpolation, numerical integration, and differential equation solving
- **Computational Algorithms**: Implementation of classical and modern numerical techniques
- **Scientific Problem-Solving**: Application of mathematics to atmospheric science and physics
- **Research Software Development**: Production of well-documented scientific code

---

## Learning Outcomes

Demonstrate competency in:

1. **Mathematical Problem-Solving**: Translate physical phenomena into mathematical equations
2. **Algorithm Development**: Implement numerical methods from theoretical foundations
3. **Error Analysis**: Understand and quantify computational errors
4. **Code Documentation**: Write clear, maintainable scientific code
5. **Scientific Communication**: Present technical findings in formal reports
6. **Computational Thinking**: Design efficient algorithms for numerical computation

---

## Technical Skills

**Numerical Analysis**
- Polynomial interpolation and approximation theory
- Quadrature rules and numerical integration
- Ordinary differential equation solvers
- Convergence analysis and error estimation
- Stability and conditioning analysis

**Scientific Programming**
- Algorithm implementation from mathematical theory
- Numerical stability considerations
- Efficient vector/matrix computations
- Result visualization and analysis

**Documentation and Communication**
- Technical report writing in LaTeX
- Mathematical notation and typesetting
- Publication-quality figures
- Methodology explanation and result interpretation

**Research Methodology**
- Problem decomposition and solution strategy
- Comparative method analysis
- Empirical validation and error analysis
- Reproducible computation

---

## Contents

### Machine Problems

#### MP1: Typhoon Track Interpolation
Compared five interpolation methods on Typhoon Haiyan data, evaluated accuracy using condition numbers and Runge phenomenon, and determined the optimal method for meteorological applications.
- **Problem**: Reconstruct the trajectory of a typhoon from sparse observational data
- **Application**: Meteorological forecasting and storm surge modeling
- **Methods**: Linear, Lagrange polynomial, cubic spline, Hermite, and orthogonal polynomial interpolation
- **Key Concepts**: Vector-valued functions, condition numbers, numerical stability, error estimation, Runge's phenomenon
- **Files**: 
  - Documentation: `mp1.pdf`
  - Dataset: `bwp312013.txt`
  - Code: MATLAB scripts in `linear/`, `lagrange/`, `cubic/`, `hermite/`, `ortho/` subdirectories

#### MP2: Planck's Blackbody Radiation
Evaluated three quadrature methods on semi-infinite domains, achieved high precision using Gauss-Laguerre quadrature, and demonstrated the advantages of specialized quadrature rules.
- **Problem**: Numerically evaluate Planck's integral for blackbody radiation energy distribution: $I(x) = \int_0^{\infty} \frac{x^3}{e^x-1}dx$
- **Context**: Radiative transfer, thermal physics, and quantum mechanics
- **Methods**: Composite Simpson's Rule, Adaptive Quadrature, Gauss-Laguerre Quadrature
- **Key Concepts**: Handling infinite domains, adaptive refinement, orthogonal polynomial quadrature, weight functions, convergence analysis
- **Files**:
  - Documentation: `mp2.pdf`
  - Code: `simpson.m`, `adaptquad.m`, `gaussLaguerre.m`, `f.m`, `erroranalysis.m`
  - Visualizations: `graph.png`, `laguerre.png`

#### MP3: Lorenz Atmospheric Circulation
Solved nonlinear Lorenz equations with RK4 method, visualized sensitive dependence on initial conditions, and illustrated the emergence of strange attractors.
- **Problem**: Solve the Lorenz system of differential equations modeling atmospheric convection
- **Significance**: Demonstrates chaotic dynamics and sensitivity to initial conditions
- **System**: Coupled nonlinear ODEs: dx/dt = σ(y - x), dy/dt = x(ρ - z) - y, dz/dt = xy - βz
- **Methods**: Runge-Kutta 4th order (RK4) for ODE solving
- **Key Concepts**: Nonlinear dynamics, chaos theory, numerical stability, sensitivity analysis, strange attractors
- **Files**:
  - Documentation: `Lorentz_analysis.pdf`
  - Code: `lorenz.m`, `rk4.m`, `func.m`, `anim.m`

### Problem Sets

#### Problem Set 1
Theoretical and computational exercises covering systems of linear equations, matrix factorization, eigenvalue problems, and function approximation. References textbook chapters 7-9 from "Scientific Computing: An Introductory Survey" by Michael T. Heath.
- **Files**: `ps1.pdf` (solutions), `ps1.tex`, `ch7.tex`, `ch8.tex`, `ch9.tex` (source), `CS 236 Prob Set 1.xls` (data)

#### Problem Set 2
Advanced topics in numerical computation focusing on algorithm implementation and practical analysis.
- **Files**: `document.pdf` (solutions), `document.tex` (source), `Disc 2.xls` (data)

---

## Software Stack

MATLAB, LaTeX, Git, Mathematica.

---

## Usage

**Running the Exercises**

MP1 - Typhoon Interpolation:
```matlab
cd 'MP1 - Typhoon Track Interpolation'
cd linear; linearinter.m
cd ../lagrange; lagrangeinter.m
cd ../cubic; cubicinter.m
cd ../hermite; hermiteinter.m
cd ../ortho; orthointer.m
```

MP2 - Planck's Radiation:
```matlab
cd "MP2 - Planck's Blackbody Radiation"
simpson.m
adaptquad.m
gaussLaguerre.m
erroranalysis.m
```

MP3 - Lorenz System:
```matlab
cd 'MP3 - Lorenz Atmospheric Circulation'
lorenz.m
anim.m
```

Each PDF report contains complete methodology, numerical results, publication-quality figures, and analysis conclusions.

---

## References

- **Heath, M. T.** (2002). *Scientific Computing: An Introductory Survey* (2nd ed.)
- **Lorenz, E. N.** (1963). "Deterministic nonperiodic flow." *Journal of the Atmospheric Sciences*

---

## License

This repository is provided for educational and portfolio purposes. See the LICENSE file for details.
