#!/bin/sh -x

# After rebase, this will fail if someone else pushed a newer commit
git push --force-with-lease
