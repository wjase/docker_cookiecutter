#!/bin/bash
# pass thru the userid,username and groupid as env
# map working dir and home dir as volume maps
docker run -it  -v /home/$USER:/home/$USER -v $(pwd):$(pwd) -e USER_ID=$(id -u) -e USER_NAME=$USER -e GROUP_ID=$(id -g) -w $(pwd) cookiecutter $@