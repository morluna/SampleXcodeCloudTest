#!/bin/sh

# Install GitHub CLI
brew install gh

# Checkout develop
gh pr checkout develop

echo 📲 Creating Version Bump PR: $RELEASE

# Version bump branch name
BRANCH_NAME= "versionBump/$RELEASE_VERSION"

# Configure git
git config user.name github-actions[bot]
git config user.email 41898282+github-actions[bot]@users.noreply.github.com

# Create version bump branch
git checkout -b $BRANCH_NAME

# Update version in develop branch
sed -i '' -e "s/MARKETING_VERSION \= [^\;]*\;/MARKETING_VERSION = $RELEASE_VERSION;/" $CI_XCODE_PROJECT/project.pbxproj

# Push changes to new branch
git push -u origin $BRANCH_NAME

gh pr create \
--title "🔖 Version Bump: $RELEASE_VERSION" \
--body "This PR was automatically created. Check out locally to resolve any conflicts."