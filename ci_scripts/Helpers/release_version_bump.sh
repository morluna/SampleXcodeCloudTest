#!/bin/sh

# CI_XCODE_PROJECT = SampleXcodeCloudTest.xcodeproj
# CI_BRANCH = release/1.0.0

set -e

# Given our branch name is `release/1.0.0` this will strip out the prefix,
# leaving RELEASE_VERSION = 1.0.0
RELEASE_VERSION=${CI_BRANCH#release/}

cd $CI_WORKSPACE

echo 📲 Release Version Bump: $RELEASE_VERSION

sed -i '' -e "s/MARKETING_VERSION \= [^\;]*\;/MARKETING_VERSION = $RELEASE_VERSION;/" $CI_XCODE_PROJECT/project.pbxproj
