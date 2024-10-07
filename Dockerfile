FROM quay.io/jupyter/julia-notebook:julia-1.10.5

# Switch to root user
USER root
ENV DEBIAN_FRONTEND="noninteractive" TZ="UTC"

# Install supporting system packages
RUN export DEBIAN_FRONTEND=noninteractive && apt-get update \
    && apt-get install -y software-properties-common \
    wget unzip ca-certificates git make xvfb \
    ffmpeg python3-pip

# Switch to notebook user
USER $NB_USER
WORKDIR /home/${NB_USER}

# Install nbgitpuller
RUN python -m pip install nbgitpuller

# Install Python dependencies
RUN python -m pip install -r python/requirements.txt

# Copy Julia Project files to the root directory of the container
COPY julia/Project.toml  .julia/environments/v1.10/
COPY julia/Manifest.toml .julia/environments/v1.10/

# Install Julia kernel & precompiled packages
ENV JULIA_NUM_THREADS=auto
RUN set -eux; \
    arch="$(dpkg --print-architecture)"; \
    # Set the proper CPU target for Julia, see https://github.com/docker-library/julia/issues/79
    case "$arch" in \
        'amd64') \
            export JULIA_CPU_TARGET="generic;sandybridge,-xsaveopt,clone_all;haswell,-rdrnd,base(1)"; \
            ;; \
        'arm64') \
            export JULIA_CPU_TARGET="generic;cortex-a57;thunderx2t99;carmel"; \
            ;; \
        *) \
            echo >&2 "error: current architecture ($arch) is not supported in this container"; \
            exit 1; \
            ;; \
    esac; \
    source /home/${NB_USER}/.profile && julia -e 'using Pkg; Pkg.instantiate()';
