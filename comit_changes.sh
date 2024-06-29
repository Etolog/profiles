#!/bin/bash

# Define the commit message
COMMIT_MESSAGE="change profiles"

# Check if there are any changes to commit
if [[ -n $(git status --porcelain) ]]; then
    # Add all changes to the staging area
    git add .

    # Commit changes with the provided commit message
    git commit -m "$COMMIT_MESSAGE"

    # Push the commit to the remote repository
    git push

    # Print a success message
    echo "Changes committed and pushed with message: '$COMMIT_MESSAGE'"
else
    # No changes to commit
    echo "No changes to commit."
fi
