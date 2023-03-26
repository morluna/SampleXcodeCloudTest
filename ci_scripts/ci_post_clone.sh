#!/bin/sh

set -e

# If we are in a release branch, we assume we're following a naming pattern such as `release-1.0.0`
# We want to extract this version and set the version number of our project this way.
if [[ $CI_BRANCH == release/* ]]; then
    ./Helpers/release_version_bump.sh
fi
