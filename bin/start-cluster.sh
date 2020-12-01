#!/usr/bin/env bash

source bin/init.sh
if [ $(kind get clusters | grep $CLUSTER_NAME | wc -l) -eq 0 ];then
  kind create cluster --config conf/cluster.yml --name $CLUSTER_NAME
fi
kubectl cluster-info --context kind-$CLUSTER_NAME
kubectl get nodes