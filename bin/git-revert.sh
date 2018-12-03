#!/bin/sh

git fetch origin
git reset --hard origin

echo "To remove files not added:"
echo "  Dry run: git clean -n -f"
echo "  Run: git clean -f"

