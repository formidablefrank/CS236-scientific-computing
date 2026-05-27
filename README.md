# CS236: Scientific Computing

A comprehensive collection of scientific computing coursework from the **Master of Science in Computer Science** program at the **University of the Philippines Diliman** (2015-2016). This repository showcases practical implementations of fundamental numerical methods and their applications in scientific computing, atmospheric science, and physics.

## 📋 Repository Overview

This repository contains rigorous implementations of numerical computing techniques applied to real-world scientific problems. The work demonstrates expertise in:

- **Numerical Methods**: Interpolation, numerical integration, and differential equation solving
- **Computational Algorithms**: Implementation of classical and modern numerical techniques
- **Scientific Problem-Solving**: Application of mathematics to atmospheric science and physics
- **Research Software Development**: Production of well-documented scientific code

### Course Context
**CS 236: Scientific Computing** is an advanced graduate course focusing on the theory and practical implementation of numerical methods. The course covers approximation theory, numerical integration, and solutions to differential equations with emphasis on accuracy, stability, and computational efficiency.

---

## 📦 Contents

### Machine Problems (Graded Exercises)

#### **MP1: Typhoon Track Interpolation**
- **Problem**: Reconstruct the complete trajectory of Typhoon Haiyan given sparse observational data (6-hour intervals)
- **Scientific Application**: Meteorological forecasting and storm surge modeling
- **Numerical Methods**:
  - Linear interpolation
  - Lagrange polynomial interpolation
  - Cubic spline interpolation
  - Hermite interpolation
  - Orthogonal polynomial interpolation (using Legendre polynomials)
- **Key Concepts**:
  - Vector-valued functions for trajectory representation
  - Condition numbers and numerical stability analysis
  - Error estimation and interpolation accuracy
  - Runge's phenomenon and polynomial interpolation limitations
- **Files**: 
  - Documentation: `mp1.pdf` (detailed LaTeX report)
  - Data: `bwp312013.txt` (Typhoon Haiyan track observations)
  - Implementations: MATLAB scripts in `linear/`, `lagrange/`, `cubic/`, `hermite/`, `ortho/` subdirectories

#### **MP2: Planck's Blackbody Radiation**
- **Problem**: Numerically evaluate Planck's integral for blackbody radiation energy distribution
- **Scientific Context**: Radiative transfer, thermal physics, and quantum mechanics
- **Mathematical Problem**: Evaluate $I(x) = \int_0^{\infty} \frac{x^3}{e^x-1}dx$ using multiple methods
- **Numerical Methods**:
  - Composite Simpson's Rule (standard quadrature)
  - Adaptive Quadrature (bounded and unbounded intervals)
  - Gauss-Laguerre Quadrature (specialized for semi-infinite domains)
- **Key Concepts**:
  - Handling infinite domains in numerical integration
  - Adaptive refinement algorithms
  - Orthogonal polynomial quadrature rules
  - Error analysis and convergence comparison
  - Weight functions and weighted integration
- **Files**:
  - Documentation: `mp2.pdf` (comprehensive report with figures)
  - MATLAB Implementations: `simpson.m`, `adaptquad.m`, `gaussLaguerre.m`, `f.m`, `erroranalysis.m`
  - Visualizations: `graph.png`, `laguerre.png` (showing integration accuracy)

#### **MP3: Lorenz Atmospheric Circulation**
- **Problem**: Solve the Lorenz system of differential equations modeling atmospheric convection
- **Scientific Significance**: Demonstrates chaotic dynamics and sensitivity to initial conditions
- **Mathematical Problem**: Solve the coupled nonlinear ODEs:
  - dx/dt = σ(y - x)
  - dy/dt = x(ρ - z) - y
  - dz/dt = xy - βz
- **Numerical Methods**:
  - Runge-Kutta 4th order method (RK4) for ODE solving
  - Time discretization and step size selection
  - Visualization of chaotic attractors
- **Key Concepts**:
  - Nonlinear dynamics and chaos theory
  - Numerical stability for stiff systems
  - Sensitivity analysis and prediction uncertainty
  - Visualization of high-dimensional trajectories
- **Files**:
  - Analysis: `Lorentz_analysis.pdf` (detailed analysis and visualizations)
  - MATLAB Implementations: `lorenz.m`, `rk4.m`, `func.m`, `anim.m`

### Problem Sets

#### **Problem Set 1**
- Theoretical and computational exercises covering:
  - System of linear equations and matrix factorization
  - Eigenvalue problems
  - Function approximation and polynomial interpolation
- **Reference**: Textbook chapters 7-9 from "Scientific Computing: An Introductory Survey" by Michael T. Heath
- **Files**: 
  - Solutions: `ps1.pdf`
  - Source: `ps1.tex`, `ch7.tex`, `ch8.tex`, `ch9.tex`
  - Data: `CS 236 Prob Set 1.xls`

#### **Problem Set 2**
- Advanced topics in numerical computation
- Focus on practical algorithm implementation and analysis
- **Files**:
  - Solutions: `document.pdf`
  - Source: `document.tex`
  - Data: `Disc 2.xls`

---

## 🛠️ Software Stack

### Primary Tools
- **MATLAB** (2015-2016 version)
  - Core numerical computing platform
  - Vector/matrix operations
  - Visualization (publication-quality graphics)
  - Built-in numerical libraries

### Documentation & Typesetting
- **LaTeX** (with extensions)
  - Professional academic report formatting
  - Mathematical typesetting and equation rendering
  - Cross-referencing and bibliography management
  - Packages: `amsmath`, `amssymb`, `graphicx`, `hyperref`, `lscape`

### Version Control
- **Git**
  - Full development history preserved
  - Commit tracking for reproducibility

### Additional Tools
- **Mathematica/Wolfram Language** (auxiliary visualization and analysis)
- **PNG/FIG graphics format** (publication-ready visualizations)

---

## 📊 Key Technical Skills Demonstrated

### Numerical Analysis
- Polynomial interpolation and approximation theory
- Quadrature rules and numerical integration
- Ordinary differential equation solvers
- Convergence analysis and error estimation
- Stability and conditioning analysis

### Scientific Programming
- Algorithm implementation from mathematical theory
- Numerical stability considerations
- Efficient vector/matrix computations
- Visualization and analysis of results

### Documentation & Communication
- Technical report writing in LaTeX
- Mathematical notation and typesetting
- Production of publication-quality figures
- Clear explanation of methodology and results

### Research Methodology
- Problem decomposition and solution strategy
- Comparative analysis of methods
- Empirical validation and error analysis
- Reproducible computation

---

## 🚀 Usage

### Prerequisites
- MATLAB (R2015b or later recommended)
- LaTeX distribution (for viewing/compiling reports)

### Running the Exercises

**MP1 - Typhoon Interpolation:**
```matlab
cd 'MP1 - Typhoon Track Interpolation'
% Run interpolation methods:
cd linear; linearinter.m
cd ../lagrange; lagrangeinter.m
cd ../cubic; cubicinter.m
cd ../hermite; hermiteinter.m
cd ../ortho; orthointer.m
```

**MP2 - Planck's Radiation:**
```matlab
cd "MP2 - Planck's Blackbody Radiation"
% Run integration methods:
simpson.m
adaptquad.m
gaussLaguerre.m
erroranalysis.m
```

**MP3 - Lorenz System:**
```matlab
cd 'MP3 - Lorenz Atmospheric Circulation'
lorenz.m    % Solve and visualize
anim.m      % Create animation of attractor
```

### Viewing Results
All PDF reports contain:
- Complete methodology and theory
- Numerical results and comparisons
- Publication-quality figures and analysis
- Conclusions and observations

---

## 🎓 Learning Outcomes

Completion of CS 236 demonstrates competency in:

1. **Mathematical Problem-Solving**: Translating physical phenomena into mathematical equations
2. **Algorithm Development**: Implementing numerical methods from theoretical foundations
3. **Error Analysis**: Understanding and quantifying computational errors
4. **Code Documentation**: Writing clear, maintainable scientific code
5. **Scientific Communication**: Presenting technical findings in formal reports
6. **Computational Thinking**: Design efficient algorithms for numerical computation

---

## 📝 Notable Results

### Interpolation Accuracy (MP1)
- Compared five interpolation methods on Typhoon Haiyan data
- Evaluated accuracy using condition numbers and Runge phenomenon
- Determined optimal method for meteorological applications

### Integration Accuracy (MP2)
- Evaluated three quadrature methods on semi-infinite domain
- Achieved high precision using Gauss-Laguerre quadrature
- Demonstrated advantages of specialized quadrature rules

### Chaotic Dynamics (MP3)
- Solved nonlinear Lorenz equations with RK4 method
- Visualized sensitive dependence on initial conditions
- Illustrated emergence of strange attractor

---

## 📚 References

- **Heath, M. T.** (2002). *Scientific Computing: An Introductory Survey* (2nd ed.)
- **Planck's Theory**: Fundamental quantum mechanics and radiative transfer
- **Lorenz, E. N.** (1963). "Deterministic nonperiodic flow." *Journal of the Atmospheric Sciences*
- **Numerical Methods**: Standard references in numerical analysis and computational mathematics

---

## 📄 License

This repository is provided as-is for educational and portfolio purposes. See the LICENSE file for details.

---

## 👤 Author

**Joshua Frankie Rayo** (ID: 2011-19612)  
Scientific Computing Laboratory  
University of the Philippines Diliman

---

## 🔗 Quick Navigation

| Exercise | Topic | Files |
|----------|-------|-------|
| MP1 | Interpolation | [`MP1 - Typhoon Track Interpolation/`](./MP1%20-%20Typhoon%20Track%20Interpolation/) |
| MP2 | Numerical Integration | [`MP2 - Planck's Blackbody Radiation/`](./MP2%20-%20Planck's%20Blackbody%20Radiation/) |
| MP3 | Differential Equations | [`MP3 - Lorenz Atmospheric Circulation/`](./MP3%20-%20Lorenz%20Atmospheric%20Circulation/) |
| PS1 | Linear Algebra & Approximation | [`Probset 1/`](./Probset%201/) |
| PS2 | Advanced Topics | [`Probset 2/`](./Probset%202/) |

---

**Last Updated**: 2016  
**Course**: CS 236 - Scientific Computing  
**Institution**: University of the Philippines Diliman
