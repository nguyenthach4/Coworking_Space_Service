#!/bin/bash
REPOSITORY_NAME=nguyent4-repository
REGION=us-east-1

aws ecr create-repository --repository-name "$REPOSITORY_NAME" --region "$REGION"