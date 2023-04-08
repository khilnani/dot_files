#!/bin/sh

tar cvfz "$1.tar.gz" . --exclude .git --exclude '**/.*' --exclude '**/__MACOSX'

