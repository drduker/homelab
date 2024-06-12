#!/usr/bin/env bash

# Deploy the configuration to the nodes
# talosctl apply-config -n 192.168.69.5 -f ./clusterconfig/pickhaus-tiny-001.internal.pick.haus.yaml
# talosctl apply-config -n 192.168.1.115 -f ./clusterconfig/pickhaus-tiny-002.internal.pick.haus.yaml

talosctl apply-config -n 192.168.69.1 -f ./clusterconfig/pickhaus-pickhaus-node-001.internal.pick.haus.yaml
talosctl apply-config -n 192.168.69.2 -f ./clusterconfig/pickhaus-pickhaus-node-002.internal.pick.haus.yaml
talosctl apply-config -n 192.168.69.3 -f ./clusterconfig/pickhaus-pickhaus-node-003.internal.pick.haus.yaml
talosctl apply-config -n 192.168.69.4 -f ./clusterconfig/pickhaus-pickhaus-node-004.internal.pick.haus.yaml
talosctl apply-config -n 192.168.69.5 -f ./clusterconfig/pickhaus-pickhaus-node-005.internal.pick.haus.yaml