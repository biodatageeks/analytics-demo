#!/usr/bin/env bash

kind --version &> /dev/null
if [ $? -gt 0 ]; then
  echo "Kind not installed or not working"
  exit 1
fi

helm version &> /dev/null
if [ $? -gt 0 ]; then
  echo "Helm not installed or not working"
  exit 1
fi

export CLUSTER_NAME=demo
export NAMESPACE=default