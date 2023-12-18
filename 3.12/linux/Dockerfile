FROM ubuntu:22.04

# Configuration
ARG PYTHON_VERSION=3.12.1
ARG PYTHON_ENV=docker-env

# Suppress user dialogs (and selects the default answer) during apt-get install
ARG DEBIAN_FRONTEND=noninteractive

# Install required packages
RUN apt-get update && apt-get -y -q --no-install-recommends install \
    build-essential \
    ca-certificates \
    curl \
    git \
    libbz2-dev \
    libffi-dev \
    liblzma-dev \
    libncursesw5-dev \
    libreadline-dev \
    libsqlite3-dev \
    libssl-dev \
    libxml2-dev \
    libxmlsec1-dev \
    llvm \
    make \
    tk-dev \
    wget \
    xz-utils \
    zlib1g-dev \
    && rm -rf /var/lib/apt/lists/*

# Install python
ENV PYENV_ROOT=$HOME/.pyenv
ENV PATH=$PYENV_ROOT/shims:$PYENV_ROOT/bin:$PATH
RUN git clone https://github.com/pyenv/pyenv.git $PYENV_ROOT
RUN git clone https://github.com/pyenv/pyenv-virtualenv.git $PYENV_ROOT/plugins/pyenv-virtualenv

RUN echo 'eval "$(pyenv init -)"' >> $HOME/.bashrc
RUN echo 'eval "$(pyenv init -)"' >> $HOME/.bash_profile
SHELL ["/bin/bash", "-c", "-l"]

RUN pyenv install $PYTHON_VERSION
RUN pyenv virtualenv $PYTHON_VERSION $PYTHON_ENV
RUN pyenv global $PYTHON_ENV

# Set the pyenv isntallation mode bits to allow rwX for everyone. The reason is
# that the azure pipelines atomatically adds a new user inside the running
# container and this user executes the job steps defined in the pipeline yml
# file. Thus, installing packages via pip would fail (without sudo), since this
# created user does not have permission to the pyenv root.
# See: https://github.com/microsoft/azure-pipelines-agent/issues/2043
RUN chmod -R a+wX $PYENV_ROOT
