#!/bin/sh

set -e

RELEASE_VERSION=${CI_BRANCH#release/}

cd $CI_WORKSPACE

echo 📲 Release Version Bump: $RELEASE_VERSION

sed -i '' -e "s/MARKETING_VERSION \= [^\;]*\;/MARKETING_VERSION = $RELEASE_VERSION;/" $CI_XCODE_PROJECT.xcodeproj/project.pbxproj
