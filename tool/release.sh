#!/bin/bash

# Check if tag parameter is provided
if [ -z "$1" ]; then
  echo "Please provide a version increment type (patch, minor, major, pre-release, or release)"
  echo "Usage: ./tool/release.sh [patch|minor|major|pre-release|release]"
  exit 1
fi

increment_type=$1
version_arg=""

case $increment_type in
  patch)
    version_arg="--patch"
    ;;
  minor)
    version_arg="--minor"
    ;;
  major)
    version_arg="--major"
    ;;
  pre-release)
    version_arg="--pre-release"
    ;;
  release)
    version_arg="--release"
    ;;
  *)
    echo "Invalid increment type. Use patch, minor, major, pre-release, or release."
    exit 1
    ;;
esac

# Ensure we're on the main branch
current_branch=$(git branch --show-current)
if [ "$current_branch" != "main" ]; then
  echo "Error: Not on main branch. Please switch to main branch before releasing."
  exit 1
fi

# Ensure the working directory is clean
if ! git diff-index --quiet HEAD --; then
  echo "Error: Working directory not clean. Please commit or stash changes before releasing."
  exit 1
fi

# Pull the latest changes
echo "Pulling latest changes from main..."
git pull origin main

# Run tests to ensure everything is working
echo "Running tests..."
dart test
if [ $? -ne 0 ]; then
  echo "Tests failed. Aborting release."
  exit 1
fi

# Run the version script to bump the version
echo "Bumping version..."
dart run tool/version.dart $version_arg

# Extract the new version number from pubspec.yaml
new_version=$(grep -E 'version: [0-9]+\.[0-9]+\.[0-9]+(-[a-zA-Z0-9.-]+)?' pubspec.yaml | cut -d ' ' -f 2)

# Commit the version bump
echo "Committing version bump..."
git add pubspec.yaml CHANGELOG.md
git commit -m "chore: bump version to $new_version"

# Create a tag
echo "Creating tag v$new_version..."
git tag -a "v$new_version" -m "Release version $new_version"

# Push changes and tags
echo "Pushing changes and tags to remote..."
git push origin main
git push origin "v$new_version"

echo "Release v$new_version completed successfully!"
echo "The GitHub Actions workflow will now handle the publishing process."
