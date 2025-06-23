#!/usr/bin/env bash
set -euo pipefail

# This script is about trivial zypper dependency,
# about packages needed even to be able to git clone the repo 

source /etc/os-release
if [ $ID = "opensuse-leap" ]; then
  # This additional repo is needed to get a proper version of perl tidy
  # It is documented in https://open.qa/docs/#_development_version_repository
  zypper --non-interactive --gpg-auto-import-keys \
    ar -p 90 \
    -f "http://download.opensuse.org/repositories/devel:openQA:Leap:${VERSION}/${VERSION}" devel_openQA_Leap
  zypper --non-interactive --gpg-auto-import-keys ref
  zypper --non-interactive dup --from devel_openQA_Leap --allow-vendor-change || exit 1
else
  zypper ref && zypper --non-interactive up -y
fi

# git is needed to get the code
zypper in -y git