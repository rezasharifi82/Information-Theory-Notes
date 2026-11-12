#!/usr/bin/env bash
set -e

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$REPO_DIR"

echo "==> Staging local changes..."
git add .

MSG="${1:-Update notes $(date '+%Y-%m-%d %H:%M:%S')}"
if git diff --cached --quiet; then
    echo "==> No local changes to commit."
else
    echo "==> Committing local changes: '$MSG'..."
    git commit -m "$MSG"
fi

echo "==> Pulling latest changes from GitHub (with rebase)..."
git pull --rebase origin main

echo "==> Pushing to GitHub..."
git push origin main

echo "==> Sync completed successfully!"
