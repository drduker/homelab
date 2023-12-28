#!/usr/bin/env bash

# Deploy the configuration to the nodes
talosctl apply-config -n 192.168.1.132 -f ./clusterconfig/pickhaus-tiny-001.internal.pick.haus.yaml
talosctl apply-config -n 192.168.1.115 -f ./clusterconfig/pickhaus-tiny-002.internal.pick.haus.yaml
