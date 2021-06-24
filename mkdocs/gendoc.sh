#!/bin/bash

root="$(dirname $(readlink -f $0))"
site="${root}/site"

cd "${root}"

# Clean old files
rm -rf "${site}"

# Create new files
mkdocs build
