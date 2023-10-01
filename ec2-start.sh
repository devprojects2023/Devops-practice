#!/bin/bash

# Set your AWS region and instance ID
AWS_REGION="us-east-1"
INSTANCE_ID=$1    # to pass the instance ID as a parameter to this script from the command line I have used $1. We can use any other parameter name. by using $2, $3, $4 etc.
echo "Starting EC2 instance $INSTANCE_ID"

# Start the EC2 instance
sudo aws ec2 start-instances --region $AWS_REGION --instance-ids $INSTANCE_ID
