#!/usr/bin/env bash
set -x
set -e

export LC_ALL=C.UTF-8
export LANG=C.UTF-8

# Update notebook checksum
ldsagrader academy update --codename=$CODENAME

