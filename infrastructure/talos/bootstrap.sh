#!/usr/bin/env bash

echo "Applying Node Configs"
# Deploy the configuration to the nodes
talosctl apply-config -i -n 192.168.1.132 -f ./clusterconfig/pickhaus-tiny-001.internal.pick.haus.yaml
talosctl apply-config -i -n 192.168.1.115 -f ./clusterconfig/pickhaus-tiny-002.internal.pick.haus.yaml

echo "Sleeping..."
sleep 120

talosctl config node "192.168.1.132"; talosctl config endpoint 192.168.1.132 192.168.1.115
echo "Running bootstrap..."
talosctl bootstrap

echo "Sleeping..."
sleep 180

talosctl kubeconfig -f .
export KUBECONFIG=$(pwd)/kubeconfig

echo kubectl get nodes
kubectl get nodes
