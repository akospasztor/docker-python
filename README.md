# docker-python

This repository contains docker container images with python installation.
Each image has a specific python version pre-installed with `pyenv`.

Repository link: https://github.com/akospasztor/docker-python

Docker Hub link: https://hub.docker.com/r/akospasztor/docker-python

[![Docker Image CI](https://github.com/akospasztor/docker-python/actions/workflows/ci-docker-image.yml/badge.svg)](https://github.com/akospasztor/docker-python/actions/workflows/ci-docker-image.yml)

## Available Images

Available images:

| Python version | Base image   |
| -------------- | ------------ |
| 3.12-linux     | ubuntu:22.04 |
| 3.11-linux     | ubuntu:22.04 |
| 3.8-linux      | ubuntu:22.04 |
| 3.7-linux      | ubuntu:22.04 |

## Tags

Python 3.12:

- `3.12-linux-2.0.1`, `3.12-linux-latest`
- `3.12-linux-2.0.0`

Python 3.11:

- `3.11-linux-2.0.1`, `3.11-linux-latest`
- `3.11-linux-2.0.0`

Python 3.8:

- `3.8-linux-2.0.1`, `3.8-linux-latest`
- `3.8-linux-2.0.0`
- `3.8-linux-1.0.1`
- `3.8-linux-1.0.0`

Python 3.7:

- `3.7-linux-2.0.1`, `3.7-linux-latest`
- `3.7-linux-2.0.0`
- `3.7-linux-1.0.1`
- `3.7-linux-1.0.0`

## Usage

Pull latest image with python version 3.12 for linux:

```bash
docker pull akospasztor/docker-python:3.12-linux-latest
```

Build latest image with python version 3.12 for linux:

```bash
docker build -t akospasztor/docker-python:3.12-linux-latest 3.12/linux/
```

Manually push all tags to Docker Hub:

```bash
docker push -a akospasztor/docker-python
```
