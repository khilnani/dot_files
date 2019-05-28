#!/bin/sh

# USAGE: 
# - STATUS: ec2.sh NAME
# - START:  ec2.sh NAME start
# - STOP:   ec2.sh NAME stop
#
# Run as: AWS_PROFILE=NAME ec.sh ..  to specify an AWS profile

echo ""

if [ -n "$2" ]; then
    echo "Looking for instance: $1 ..."
    ID=`aws ec2 describe-instances --filters Name=tag:Name,Values=$1 --output text | grep INSTANCE | awk '{ print $8; }'`

    # If none
    if [ -z "$ID" ]; then
      echo "Could not instance: $1"
      exit 1
    else
      echo "Found it! Trying to $2 ..."
      STATUS=$(aws ec2 $2-instances --instance-ids $ID --output text 2> /dev/null)
      if [ -z "$STATUS" ]; then
        echo "'$2' is not a valid action."
        exit 1
      else
        echo "$STATUS" | grep 'CURRENTSTATE	'
      fi
    fi
else
    echo "Checking status for instance: $1 ..."
    STATUS=$(aws ec2 describe-instances --filters Name=tag:Name,Values=$1 --output text | grep 'STATE	')
    if [ -z "$STATUS" ]; then
      echo "Could not find instance: $1"
      exit 1
    else
      echo $STATUS
    fi
fi

echo ""
