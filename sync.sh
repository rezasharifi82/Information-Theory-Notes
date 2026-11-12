#!/usr/bin/env bash
set -e

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$REPO_DIR"

echo "==> Pulling latest changes from GitHub..."
git pull --rebase origin main

echo "==> Staging changes..."
git add .

if git diff --cached --quiet; then
    echo "==> No local changes to commit."
else
    MSG="${1:-Update notes $(date '+%Y-%m-%d %H:%M:%S')}"
    echo "==> Committing: '$MSG'..."
    git commit -m "$MSG"
fi

echo "==> Pushing to GitHub..."
git push origin main

echo "==> Sync completed successfully!"
