#!/bin/sh

cd $CI_WORKSPACE

# Install GitHub CLI
brew install gh

# Checkout develop
git checkout develop

export RELEASE_VERSION=${CI_BRANCH#release/}

echo 📲 Creating Version Bump PR: $RELEASE_VERSION

# Version bump branch name
BRANCH_NAME="versionBump/$RELEASE_VERSION"

# Create version bump branch
git checkout -b $BRANCH_NAME

# Update version in develop branch
sed -i '' -e "s/MARKETING_VERSION \= [^\;]*\;/MARKETING_VERSION = $RELEASE_VERSION;/" $CI_XCODE_PROJECT/project.pbxproj

git commit -am "Bumped version to $RELEASE_VERSION"

# Push changes to new branch
git push "https://$GH_TOKEN@github.com/morluna/SampleXcodeCloudTest.git" -u $BRANCH_NAME && gh pr create --title "🔖 Version Bump: $RELEASE_VERSION" --body "This PR was automatically created. Check out locally to resolve any conflicts." --head
