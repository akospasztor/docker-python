# Changelog

## 2.0.0 (2023-12-27)

- Upgrade all base images from ubuntu 20.04 to ubuntu 22.04
- Upgrade python 3.7 image version from 3.7.10 to 3.7.17
- Upgrade python 3.8 image version from 3.8.10 to 3.8.17
- Add python 3.11 image
- Add python 3.12 image
- Upgrade pip and setuptools after installing python
- CI:
  - Add docker image test to verify installed python version
  - Scan for vulnerabilities with docker scout

Available images:

| Python version | Base image   |
| -------------- | ------------ |
| 3.7.17         | ubuntu 22.04 |
| 3.8.17         | ubuntu 22.04 |
| 3.11.7         | ubuntu 22.04 |
| 3.12.1         | ubuntu 22.04 |

## 1.0.1 (2021-08-04)

- Reduce docker image size by adding `--no-install-recommends`

Available images:

| Python version | Base image   |
| -------------- | ------------ |
| 3.7.10         | ubuntu 20.04 |
| 3.8.10         | ubuntu 20.04 |

## 1.0.0 (2021-06-04)

- Initial release

Available images:

| Python version | Base image   |
| -------------- | ------------ |
| 3.7.10         | ubuntu 20.04 |
| 3.8.10         | ubuntu 20.04 |
