#!/bin/sh

set -x # verbose mode
set -e # stop executing after error

####################################################
# Install jekyll dependencies 
####################################################
echo "Gathering dependencies"
bundle install
echo "Bundle install completed"

####################################################
# Start build process 
####################################################

echo "Starting Jekyll build"

####################################################
# Set workspace permissions
####################################################

chmod -R a+w /github/workspace

####################################################
# Build the Jekyll site
####################################################

bundle exec jekyll build --trace

####################################################
# Build completed
####################################################

echo "Completed Jekyll build"
