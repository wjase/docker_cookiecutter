#!/bin/bash
# add any group but use the user's actual host group id
groupadd -g $GROUP_ID tmp_group 
# need to use the actual username so the home path matches the host
useradd -l -u $USER_ID -g $GROUP_ID $USER_NAME -d /home/$USER_NAME
su -c "cookiecutter $@" "$USER_NAME" 