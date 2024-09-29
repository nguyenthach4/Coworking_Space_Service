#!/bin/bash
CLUSTER_NAME=nguyent4-cluster
REGION=us-east-1
NODEGROUP_NAME=nguyent4-nodes
NODE_TYPE=t3.small
eksctl create cluster --name "$CLUSTER_NAME" --region "$REGION" --nodegroup-name "$NODEGROUP_NAME" --node-type "$NODE_TYPE" --nodes 2 --nodes-min 2 --nodes-max 3
aws eks --region "$REGION" update-kubeconfig --name "$CLUSTER_NAME"

# Delete eks when not use
## eksctl delete cluster --name "$CLUSTER_NAME" --region "$REGION"