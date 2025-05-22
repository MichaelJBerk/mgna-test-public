#!/bin/sh

# Name of the secret
SECRET_NAME="githubPAT"
REGION="us-east-2"

# Get full secret JSON
SECRET_JSON=$(aws secretsmanager get-secret-value \
  --secret-id "$SECRET_NAME" \
  --region "$REGION" \
  --query SecretString \
  --output text)

# echo $SECRET_JSON
# Parse fields using jq
GITHUB_PAT=$(echo "$SECRET_JSON" | jq -r '.githubPAT')

echo $GITHUB_PAT | docker login ghcr.io -u michaeljberk --password-stdin