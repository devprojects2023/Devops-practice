#!/bin/bash

# Set your AWS region and instance ID
AWS_REGION="us-east-1"
INSTANCE_ID=$1    # to pass the instance ID as a parameter to this script from the command line I have used $1.

# Stop the EC2 instance
aws ec2 stop-instances --region $AWS_REGION --instance-ids $INSTANCE_ID



