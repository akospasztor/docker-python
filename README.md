# docker-python

This repository contains docker container images with python installation.
Each image has a specific python version pre-installed with `pyenv`.

Repository link: https://github.com/akospasztor/docker-python

Docker Hub link: https://hub.docker.com/r/akospasztor/docker-python

[![Docker Image CI](https://github.com/akospasztor/docker-python/actions/workflows/ci-docker-image.yml/badge.svg)](https://github.com/akospasztor/docker-python/actions/workflows/ci-docker-image.yml)

## Usage

Build image with python version 3.7 for linux:

```bash
docker build -t akospasztor/docker-python:3.7-linux-latest 3.7/linux/
```

Manually push all tags to Docker Hub:

```bash
docker push -a akospasztor/docker-python
```
