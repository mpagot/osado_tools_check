#!/usr/bin/env bash
set -euo pipefail

# This script is about trivial zypper dependency,
# about packages needed even to be able to git clone the repo 

# get an updated system
zypper ref && zypper up -y 

# git is needed to get the code
zypper in -y git