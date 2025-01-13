#!/usr/bin/env bash

echo "Applying Node Configs"
# Deploy the configuration to the nodes
# talosctl apply-config -i -n 192.168.1.83 -f ./clusterconfig/pickhaus-tiny-001.internal.pick.haus.yaml
# talosctl apply-config -i -n 192.168.1.115 -f ./clusterconfig/pickhaus-tiny-002.internal.pick.haus.yaml
talosctl apply-config -i -n 192.168.69.1 -f ./clusterconfig/pickhaus-pickhaus-node-001.internal.pick.haus.yaml
talosctl apply-config -i -n 192.168.69.2 -f ./clusterconfig/pickhaus-pickhaus-node-002.internal.pick.haus.yaml
talosctl apply-config -i -n 192.168.69.3 -f ./clusterconfig/pickhaus-pickhaus-node-003.internal.pick.haus.yaml
talosctl apply-config -i -n 192.168.69.4 -f ./clusterconfig/pickhaus-pickhaus-node-004.internal.pick.haus.yaml

echo "Sleeping..."
sleep 120

talosctl config node "192.168.69.1"; talosctl config endpoint 192.168.69.1 192.168.69.2 192.168.69.3 192.168.69.4

echo "Running bootstrap..."
talosctl bootstrap

echo "Sleeping..."
sleep 180

talosctl kubeconfig -f .
export KUBECONFIG=$(pwd)/kubeconfig

echo kubectl get nodes
kubectl get nodes

./deploy-integrations.sh