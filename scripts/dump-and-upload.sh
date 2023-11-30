#!/bin/bash

set -euo pipefail

git checkout main
git pull

rhtap export application acs \
    -f rh-acs-tenant \
    -w data

DIFF="$(git diff main)"
if [ -n "${DIFF}" ]; then
    git add data/rh-acs-tenant.yaml
    git commit -m "$(date) export of ACS resources"
    git push

else
    echo "INFO: No diff in export noticed, skipping upload."
fi
