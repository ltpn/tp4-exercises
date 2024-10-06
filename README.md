# TP-IV Exercises

This repository contains numerical exercises on open quantum systems.

- **MATLAB/Octave:** use the files in [`matlab/`](matlab).
- **Julia:** use the files in [`julia/`](julia).

## Run Online

### MATLAB Online

Click the button below to open the exercises in MATLAB Online:

[![Open in MATLAB Online](https://www.mathworks.com/images/responsive/global/open-in-matlab-online.svg)](https://matlab.mathworks.com/open/github/v1?repo=matteosecli/tp4-exercises&file=matlab)

### GitHub Codespaces

Click the button below to open the exercises in a new Codespace:

[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/matteosecli/tp4-exercises/tree/main)

<details>
<summary>Caveats</summary>

- The Julia kernel should work with no additional setup.
- The Octave kernel has to be manually selected under the "Jupyter kernels" section.
- The MATLAB kernel works only by re-launching the codespace with the "Jupyter Lab" editor after it has been built for the first time.

</details>

## Run Locally

While Codespaces are great for learning/experimenting, we advise to set up a local environment on your computer for more in-depth work.

The steps are generally as follows.
1. Install common prerequisites like [Git](https://github.com/git-guides/install-git), [VS Code](https://code.visualstudio.com/download), and/or [Jupyter](https://jupyter.org/install).
2. Install the software stack related to the language you've chosen to use
   * [MATLAB](https://ch.mathworks.com/help/install/ug/install-products-with-internet-connection.html)/[Octave](https://octave.org/download) (+ optional  [MATLAB/Jupyter](https://www.mathworks.com/products/reference-architectures/jupyter.html) or [Octave/Jupyter](https://github.com/Calysto/octave_kernel) integration)
   * [Julia](https://julialang.org/downloads/) (+ optional [Julia/Jupyter](https://github.com/JuliaLang/IJulia.jl) integration)
3. Clone the repo via:  
   ```shell
   git clone https://github.com/matteosecli/tp4-exercises.git
   cd tp4-exercises
   ```
4. If using Julia, launch `julia` from the command line and install the dependencies:
   ```julia
   ]
   activate .
   instantiate
   ```
5. Code!

## Tips

- If you don't know how to use Git, learn it; it will be worth the effort. You can get started with [this](https://nbviewer.org/github/ICESAT-2HackWeek/intro-jupyter-git/blob/master/03-Git-Tutorial.ipynb) great interactive tutorial, and/or consult GitHub's [Git Guide](https://github.com/git-guides).
- Containers are another way to develop locally on your computer via pre-built environments that contain all the dependencies you need (spoiler: this is how we power the Codespaces). If you're interested, we have a short [guide](Container_Guide.md) on that.