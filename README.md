# TP-IV Exercises

This repository contains numerical exercises on open quantum systems.

- **MATLAB:** use the `.mlx` files (native, preferred), the `.ipynb` files (via Jupyter), or the `.m` files (native).
- **Octave:** use the `.ipynb` files (via Jupyter, preferred) or the `.m` files (native).
- **Julia:** use the `-julia.ipynb` files (via Jupyter).

## Run Online — MATLAB Online & MyBinder

### MATLAB Online

Click the button below to open the exercises in MATLAB Online:

[![Open in MATLAB Online](https://www.mathworks.com/images/responsive/global/open-in-matlab-online.svg)](https://matlab.mathworks.com/open/github/v1?repo=matteosecli/tp4-exercises)

**Important:** you need a MathWorks account linked to a valid cloud license.

### MyBinder (Jupyter)

Click the button below to open the exercises in MyBinder:

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/matteosecli/jupyter-matlab/binder?urlpath=git-pull%3Frepo%3Dhttps%253A%252F%252Fgithub.com%252Fmatteosecli%252Ftp4-exercises%26urlpath%3Dlab%252Ftree%252Ftp4-exercises%252F%26branch%3Dmain)

**Warning:**  MyBinder instances can be very slow and easily timeout.

**MATLAB users:**
- You need a MathWorks account linked to a valid cloud license.
- The "Open MATLAB" button launches an interface similar to MATLAB Online, that you can use to run `.mlx` files. It could take some time to open.
- If using the MATLAB kernel with `.ipynb` files, you may have to manually run `cd tp4-exercises` in an empty Jupyter cell before running the notebook. Launching the kernel for the first time could take some time.

## Run Online — GitHub Codespaces

You can also use GitHub Codespaces runners if you have a GitHub account. Click the button below to open the workspace (building will take quite some time):

[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/matteosecli/tp4-exercises/tree/main)

Notes:
- The Julia kernel should work with no additional setup.
- The Octave kernel has to be manually selected under the "Jupyter kernels" section.
- The MATLAB kernel works only by re-launching the codespace with the "Jupyter Lab" editor after it has been built for the first time.

## Run Locally — VS Code & Jupyter Lab

The easiest way to get started locally is to develop in a ready-made container containing all the dependencies.

### VS Code
- Install VS Code (MacOS users are advised to use [Homebrew](https://formulae.brew.sh/cask/visual-studio-code)).
- Install Docker and the Dev Containers Extension according to the [documentation](https://code.visualstudio.com/docs/devcontainers/containers#_installation).
- Open VS Code (**important:** if you don't have an Intel/AMD processor, as for example on Macs with Apple Silicon, use `export DOCKER_DEFAULT_PLATFORM=linux/amd64 && code` to open VS Code from the command line)
- For a quickstart, press `F1` (or `fn+F1`), look for **Dev Containers: Clone Repository in Container Volume...**, enter `matteosecli/tp4-exercises` and press `Enter` ([documentation](https://code.visualstudio.com/docs/devcontainers/containers#_quick-start-open-a-git-repository-or-github-pr-in-an-isolated-container-volume))
- Alternatively, clone the repo via `git clone https://github.com/matteosecli/tp4-exercises.git` (preferred) or download a [zipped copy](https://github.com/matteosecli/tp4-exercises/archive/refs/heads/main.zip) and unzip it (discouraged), choose `File -> Open Folder`, and select the folder with the repo. VS Code will prompt you to **Reopen in Container**; click the button and you're all set. You can also do this directly via the command palette ([documentation](https://code.visualstudio.com/docs/devcontainers/containers#_quick-start-open-an-existing-folder-in-a-container))

The same caveats for [GitHub Codespaces](#run-online--github-codespaces) apply.

### Jupyter Lab
- Install Docker according to step 1 of the [documentation](https://code.visualstudio.com/docs/devcontainers/containers#_installation).
- Clone the repo via `git clone https://github.com/matteosecli/tp4-exercises.git` (preferred) or download a [zipped copy](https://github.com/matteosecli/tp4-exercises/archive/refs/heads/main.zip) and unzip it (discouraged)
- Open a terminal in the parent folder (the one containing the `tp4-exercises` folder) and run:  
  ```
  docker run --platform=linux/amd64 -it --rm -p 8888:8888 --mount type=bind,source=./tp4-exercises/,target=/home/jovyan/tp4-exercises quay.io/matteosecli/jupyter-matlab:main jupyter lab
  ```
- Copy the `http://127.0.0.1:8888/lab?token=...` link that appears and paste it into your browser (**note:** if you are a Safari user and you run into issues, please use Chrome to connect to Jupyter)

## Run Locally — Native Installation

### MATLAB
- Install MATLAB (depending on your system)
- Clone the repo via `git clone https://github.com/matteosecli/tp4-exercises.git` (preferred) or download a [zipped copy](https://github.com/matteosecli/tp4-exercises/archive/refs/heads/main.zip) and unzip it (discouraged)
- Open MATLAB in the folder containing the exercises
- Run the `.mlx` files
- Note: If you prefer to work with `.ipynb` files, you have to install the MATLAB/Jupyter integration first ([info](https://www.mathworks.com/products/reference-architectures/jupyter.html))

### Octave
- Install Octave (depending on your system)
- Clone the repo via `git clone https://github.com/matteosecli/tp4-exercises.git` (preferred) or download a [zipped copy](https://github.com/matteosecli/tp4-exercises/archive/refs/heads/main.zip) and unzip it (discouraged)
- Open Octave in the folder containing the exercises
- Run the `.m` files
- Note: If you prefer to work with `.ipynb` files, you have to install the Octave/Jupyter integration first ([info](https://github.com/Calysto/octave_kernel))

### Julia
- TODO
