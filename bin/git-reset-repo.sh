#!/bin/sh

git reset $(git commit-tree HEAD^{tree} -m "Commit history reset")
