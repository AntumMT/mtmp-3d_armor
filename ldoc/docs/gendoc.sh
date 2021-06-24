#!/bin/bash

docs="$(dirname $(readlink -f $0))"
root="$(dirname ${docs})"
config="${docs}/config.ld"

cd "${root}"

# Clean old files
rm -rf "${docs}/index.html" "${docs}/sections"

# Create new files
ldoc -c "${config}" -d "${docs}" -o "index" "${root}/api.ld"
