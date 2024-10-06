## Run Locally in a Container — VS Code & Jupyter Lab

An easy way to get started locally is to develop in a ready-made container containing all the dependencies.

### VS Code
- Install VS Code (MacOS users are advised to use [Homebrew](https://formulae.brew.sh/cask/visual-studio-code)).
- Install Docker and the Dev Containers Extension according to the [documentation](https://code.visualstudio.com/docs/devcontainers/containers#_installation).
- Open VS Code (**important:** if you don't have an Intel/AMD processor, as for example on Macs with Apple Silicon, use `export DOCKER_DEFAULT_PLATFORM=linux/amd64 && code` to open VS Code from the command line)
- For a quickstart, press `F1` (or `fn+F1`), look for **Dev Containers: Clone Repository in Container Volume...**, enter `matteosecli/tp4-exercises` and press `Enter` ([documentation](https://code.visualstudio.com/docs/devcontainers/containers#_quick-start-open-a-git-repository-or-github-pr-in-an-isolated-container-volume))
- Alternatively, clone the repo via `git clone https://github.com/matteosecli/tp4-exercises.git` (preferred) or download a [zipped copy](https://github.com/matteosecli/tp4-exercises/archive/refs/heads/main.zip) and unzip it (discouraged), choose `File -> Open Folder`, and select the folder with the repo. VS Code will prompt you to **Reopen in Container**; click the button and you're all set. You can also do this directly via the command palette ([documentation](https://code.visualstudio.com/docs/devcontainers/containers#_quick-start-open-an-existing-folder-in-a-container))

The same caveats for [GitHub Codespaces](README.md#github-codespaces) apply.

### Jupyter Lab
- Install Docker according to step 1 of the [documentation](https://code.visualstudio.com/docs/devcontainers/containers#_installation).
- Clone the repo via `git clone https://github.com/matteosecli/tp4-exercises.git` (preferred) or download a [zipped copy](https://github.com/matteosecli/tp4-exercises/archive/refs/heads/main.zip) and unzip it (discouraged)
- Open a terminal in the parent folder (the one containing the `tp4-exercises` folder) and run:  
  ```shell
  docker run --platform=linux/amd64 -it --rm -p 8888:8888 --mount type=bind,source=./tp4-exercises/,target=/home/jovyan/tp4-exercises quay.io/matteosecli/jupyter-matlab:main jupyter lab
  ```
- Copy the `http://127.0.0.1:8888/lab?token=...` link that appears and paste it into your browser (**note:** if you are a Safari user and you run into issues, please use Chrome to connect to Jupyter).