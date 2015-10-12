#!/bin/sh

# ./diff.sh FROM TO
# ./diff.sh 8c27ed042a48800e03ef47cf879e5051e9901b24 master

git status
git diff $2..$1 | grep diff > diff.log

echo "-- CHANGED --"

for DIR in `ls -d */`; do
  # echo $DIR
  COUNT=`grep $DIR diff.log | wc -l`
  if [ $COUNT != "0" ]; then
    echo "CHANGED: $DIR ($COUNT)"
  fi
done

echo "-- IDENTICAL --"

for DIR in `ls -d */`; do
  # echo $DIR
  COUNT=`grep $DIR diff.log | wc -l`
  if [ $COUNT = "0" ]; then
    #echo "OK: $DIR ($COUNT)"
    echo "OK: $DIR"
  fi
done
