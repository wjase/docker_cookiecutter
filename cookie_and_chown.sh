#!/bin/bash
cookiecutter $@ && chown -R $NEW_USER:$NEW_GROUP `find . -group root`
