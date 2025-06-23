#!/usr/bin/env bash
set -euo pipefail

# This script 
# Still some dependency are missing, even if `make prepare` is successfully over 
packages=(
python3-yamllint # Dependency needed by test-yaml-valid. This one is mentined https://github.com/os-autoinst/os-autoinst-distri-opensuse/blob/9a8b06f39afe23b1a367453f2d5c4ed676815c1a/CONTRIBUTING.md?plain=1#L48
gnu_parallel # Dependency needed by make target test-compile. This one is mentioned here https://github.com/os-autoinst/os-autoinst-distri-opensuse/blob/9a8b06f39afe23b1a367453f2d5c4ed676815c1a/CONTRIBUTING.md?plain=1#L35C64-L35C76
perl-Code-TidyAll # dependency needed by make target 'tidy-check'
podman # dependency needed by make target 'test-isotovideo'
)

zypper in -y "${packages[@]}"