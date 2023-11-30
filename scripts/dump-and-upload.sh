#!/bin/bash

set -euo pipefail

git checkout main
git pull

rhtap export application acs \
    -f rh-acs-tenant \
    -w data


git add data/rh-acs-tenant.yaml
git commit -m "$(date) export of ACS resources"
git push
