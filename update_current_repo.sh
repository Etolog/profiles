#!/bin/bash

# Get the current directory
REPO_PATH=$(pwd)

# Navigate to the repository (current directory)
cd "$REPO_PATH" || { echo "Failed to navigate to the repository!"; exit 1; }

# Pull the latest changes from the remote repository
git pull

# Print a success message
echo "Repository at $REPO_PATH has been updated successfully."
