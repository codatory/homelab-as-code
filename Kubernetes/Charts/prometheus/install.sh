#!/bin/bash
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update prometheus-community
helm upgrade --install --create-namespace --namespace prometheus \
   prometheus-stack prometheus-community/kube-prometheus-stack --values=values.yaml
