#!/bin/sh

# This tiny script verifies that the installed python version is correct by
# comparing the installed python version to the version passed via an
# environmental variable.
# The script exits with 0 (OK) if the installed python version is correct and
# exits with 1 (error) if either the environmental variable is not set or the
# installed version does not match the value of the environmental variable.

[[ -z $PYTHON_VERSION ]] && exit 1

if python --version | grep "Python $PYTHON_VERSION"
then
    exit 0
else
    exit 1
fi
