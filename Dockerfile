FROM quay.io/jupyter/julia-notebook:julia-1.10.5

# Switch to root user
USER root
ENV DEBIAN_FRONTEND="noninteractive" TZ="UTC"

# Install Octave, TeXLive, etc
RUN export DEBIAN_FRONTEND=noninteractive && apt-get update \
    && apt-get install -y software-properties-common \
    && add-apt-repository ppa:ubuntuhandbook1/octave -y \
    && apt-get update \
    && apt-get install -y \
    octave octave-dev octave-doc \
    wget \
    unzip \
    ca-certificates \
    xvfb \
    git \
    make \
    python3-pip \
    libgl1-mesa-dev \
    texlive texlive-latex-extra \
    dvipng dvisvgm

# Create xvfb-run-wrapped octave
RUN echo '#!/usr/bin/env bash' > /usr/bin/octave-x && \
    echo 'xvfb-run -n 99 -a /usr/bin/octave "$@"' >> /usr/bin/octave-x && \
    chmod +x /usr/bin/octave-x

# Switch to notebook user
USER $NB_USER
WORKDIR /home/${NB_USER}

# Install nbgitpuller & python packages
RUN python -m pip install nbgitpuller octave_kernel \
    numpy scipy qutip matplotlib setuptools

# Install Octave extensions
RUN octave-cli --eval 'pkg install -forge tablicious'

# Switch to main octave executable ('octave-cli' doesn't have 'qt')
ENV OCTAVE_EXECUTABLE=octave-x

# Install Julia kernel & precompiled packages
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
    source /home/${NB_USER}/.profile && julia -e 'using Pkg; Pkg.add(["IJulia","LinearAlgebra","SparseArrays","Arpack","DifferentialEquations","OrdinaryDiffEq","StochasticDiffEq","Plots","KrylovKit","BenchmarkTools","CairoMakie","QuantumToolbox"]); using IJulia';
