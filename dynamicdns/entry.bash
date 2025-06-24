#!/bin/bash

THIS_DIR=$(dirname "$(readlink -f "$0")")

# Wrapper script for calling dynamicdns.sh with the correct parameters

API_KEY=$DREAMHOST_API_KEY
RECORD=$RECORD_TO_SET

${THIS_DIR}/dynamicdns.bash -k "${API_KEY}" -r "${RECORD}" "$@"
