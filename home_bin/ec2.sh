#!/bin/sh

if [ -n "$2" ]; then
    echo "Locating: $1 ..."
    ID=`aws ec2 describe-instances --filters Name=tag:Name,Values=$1 --output text | grep INSTANCE | awk '{ print $8; }'`

    echo "ID: $ID Action: $2..."
    aws ec2 $2-instances --instance-ids $ID --output text | grep STATE
else
    echo "Checking: $1 ..."
    aws ec2 describe-instances --filters Name=tag:Name,Values=$1 --output text | grep STATE
fi
