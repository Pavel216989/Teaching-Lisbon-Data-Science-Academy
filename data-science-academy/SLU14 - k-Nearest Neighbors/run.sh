#!/usr/bin/env bash
set -x
set -e

export LC_ALL=C.UTF-8
export LANG=C.UTF-8

# Install deploy key
mkdir -p .ssh
echo $DEPLOY_KEY | tr "|" "\n" > ~/.ssh/id_rsa  # Fix for passing multiline in env
chmod 600 .ssh/id_rsa

# Add github to known hosts
ssh-keyscan github.com >> ~/.ssh/known_hosts

# Clone student repo
echo Cloning repository...
git clone git@github.com:$USERNAME/$REPO_NAME.git

echo Running grader
ldsagrader academy grade --codename=$CODENAME --username=$USERNAME

