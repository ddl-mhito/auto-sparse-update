#!/bin/bash

# Navigate to the local copy of the original repository
cd /path/to/original_repo

# Fetch all changes from the original repository
git fetch origin

# Update the sparse-checked-out working directory
git pull --rebase origin main

# Navigate to the local copy of the new repository
cd /path/to/new_repo

# Copy changes from the sparse-checkout of the original repository
cp -r /path/to/original_repo/subfolder /path/to/new_repo/subfolder

# Commit and push changes to the new repository
git add .
git commit -m "Update from original repository"
git push newrepo main