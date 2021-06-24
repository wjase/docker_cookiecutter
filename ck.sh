#!/bin/bash
docker run -it -v $(pwd):$(pwd) -e NEW_USER=$(id -u $USER) -e NEW_GROUP=$(id -g $USER) -w $(pwd) cookiecutter $@