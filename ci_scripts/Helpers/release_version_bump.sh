#!/bin/sh

set -e

echo 📲 Release Version Bump

RELEASE_VERSION=${CI_BRANCH#release/}

cd $CI_WORKSPACE && agvtool new-version $RELEASE_VERSION
