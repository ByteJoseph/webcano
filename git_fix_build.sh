#!/bin/bash

# This script is used to troubleshoot .git-related errors during Nimble build.
# It temporarily removes the .git directory, runs the build, and then restores it.

# Temporarily move the .git directory to avoid interference
mv .git .git_backup

# Run nimble build to compile the project
nimble build -d:ssl

# Restore the .git directory after the build
mv .git_backup .git
