#!/bin/sh

read -r -p "Enter BucketName: " bucket_name
read -r -p "Enter Region: " region_name

echo "Bucket Name is received as: $bucket_name"
echo "Region Name is received as: $region_name"

echo "Checking AWS Connectivity - if this fails, please reset your AWS CLI with appropirate IAM Role/User"
echo "If not exited in next screen, press q "
#aws sts get-caller-identity

export AWS_REGION="$region_name"
echo "$AWS_REGION"

echo "Starting to create bucket: $bucket_name in $region_name AWS region"
aws s3api create-bucket --bucket "$bucket_name" --region "$region_name"