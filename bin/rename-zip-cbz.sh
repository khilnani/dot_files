#!/bin/sh

for FILE in *; do mv $FILE ${FILE%.zip}.cbz; done


