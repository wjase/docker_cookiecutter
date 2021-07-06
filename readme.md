# docker_cookiecutter

Run cookiecutter on any docker supported machine running bash

## To build image

Run

    build.sh

## To use cookiecutter

Run 

    cookiecutter.sh [cookiecutter args]

eg To create a new golang project 

    ./cookiecutter.sh gh:lacion/cookiecutter-golang

## install in PATH with softlink

Run

    ./install.sh