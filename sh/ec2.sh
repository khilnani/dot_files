#!/bin/sh

echo "Locating  Name: $2 ..."
ID=`aws ec2 describe-instances --filters Name=tag:Name,Values=$2 --output text | gre
p INSTANCE | awk '{ print $8; }'`

echo "$1 ID: $ID ..."
aws ec2 $1-instances --instance-ids $ID --output text
