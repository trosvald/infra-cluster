#!/usr/bin/env bash

# Deploy the configuration to the nodes
talosctl apply-config -n 172.16.10.13 -f ./clusterconfig/infra-infra-m0.monosense.io.yaml --insecure
echo "Applying config on infra-m0 ^C to stop here"
sleep 3
talosctl apply-config -n 172.16.10.14 -f ./clusterconfig/infra-infra-w0.monosense.io.yaml --insecure
echo "Applying config on infra-w0 ^C to stop here"
