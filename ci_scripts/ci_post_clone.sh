#!/bin/sh

set -e

# Branch changes
if [ ! -n "$CI_BRANCH" ]; then
    echo 🌴 Current Branch: $CI_BRANCH

    # If we are in a release branch, we assume we're following a naming pattern such as `release-1.0.0`
    # We want to extract this version and set the version number of our project this way.
    if [[ $CI_BRANCH == release/* ]]; then
        ./Helpers/release_version_bump.sh
    fi
fi

# Pull request changes
if [[ -n $CI_PULL_REQUEST_NUMBER ]]; then
    echo "🪢 Pull Request Information:"
    echo "   📍: $CI_PULL_REQUEST_HTML_URL"
    echo "   🟢: $CI_PULL_REQUEST_SOURCE_BRANCH"
    echo "   🔴: $CI_PULL_REQUEST_TARGET_BRANCH"
    echo "   #️⃣: $CI_PULL_REQUEST_NUMBER"
fi
