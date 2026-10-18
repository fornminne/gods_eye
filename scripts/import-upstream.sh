#!/usr/bin/env bash
set -euo pipefail

UPSTREAM=https://github.com/bilawalsidhu/gods-eye-view.git
TARGET=https://github.com/fornminne/gods_eye.git
WORKDIR="$(mktemp -d)"
trap 'rm -rf "$WORKDIR"' EXIT

printf '%s\n' 'Cloning upstream into a temporary working tree...'
git clone "$UPSTREAM" "$WORKDIR/gods_eye"
cd "$WORKDIR/gods_eye"
git remote rename origin upstream
git remote add origin "$TARGET"
git fetch origin main || true

printf '%s\n' 'Creating an import branch to preserve the existing main branch...'
git checkout -b import/upstream-gods-eye
# Push the complete upstream code and history without overwriting main.
git push -u origin import/upstream-gods-eye
printf '%s\n' 'Import branch pushed. Review licensing, compare branches and merge via GitHub pull request.'
