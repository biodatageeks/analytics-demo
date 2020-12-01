#!/usr/bin/env bash

source bin/init.sh
#MinIO
helm install demo \
  --values conf/values.yml \
  demo
#helm repo add minio https://helm.min.io/ --force-update
#
#CHART_NAME=minio
#if [ $( helm list | grep $CHART_NAME | grep deployed | wc -l ) -eq 0 ]; then
#  helm install $CHART_NAME \
#    --namespace $NAMESPACE \
#    --values conf/$CHART_NAME-values.yml \
#    minio/minio
#else
#  helm upgrade $CHART_NAME \
#    --namespace $NAMESPACE \
#    --values conf/$CHART_NAME-values.yml \
#    minio/minio
#fi
#
#
#helm repo add gradiant https://gradiant.github.io/charts/ --force-update
#CHART_NAME=hive-metastore
#CHART_VERSION=0.1.2
#if [ $( helm list | grep $CHART_NAME | grep deployed | wc -l ) -eq 0 ]; then
#  helm install $CHART_NAME \
#    --namespace $NAMESPACE \
#    --values conf/$CHART_NAME-values.yml \
#    --wait 3600 \
#    gradiant/hive-metastore --version $CHART_VERSION
#else
#  helm upgrade $CHART_NAME \
#    --namespace $NAMESPACE \
#    --values conf/$CHART_NAME-values.yml \
#    --wait 3600 \
#    gradiant/hive-metastore --version $$CHART_VERSION
#fi
