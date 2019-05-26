#!/bin/sh

# USAGE: 
# - STATUS: ec2.sh NAME
# - START:  ec2.sh NAME start
# - STOP:   ec2.sh NAME stop
#
# Run as: AWS_PROFILE=NAME ec.sh ..  to specify an AWS profile


if [ -n "$2" ]; then
    echo "Locating: $1 ..."
    ID=`aws ec2 describe-instances --filters Name=tag:Name,Values=$1 --output text | grep INSTANCE | awk '{ print $8; }'`

    echo "ID: $ID Action: $2..."
    aws ec2 $2-instances --instance-ids $ID --output text | grep 'CURRENTSTATE	'
else
    echo "Checking: $1 ..."
    aws ec2 describe-instances --filters Name=tag:Name,Values=$1 --output text | grep 'STATE	'
fi
