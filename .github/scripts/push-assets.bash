#!/usr/bin/env bash

set -uex
set -o pipefail

git config user.name 'GitHub Action'
git config user.email 'action@github.com'
# for debug
git status
git diff --quiet assets || {
	git add assets
	git commit -m 'Update metrics [skip ci]'
	git push
}
