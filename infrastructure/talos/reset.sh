#!/usr/bin/env bash
# Reset the worker nodes first since the path to them is through the control plane nodes
talosctl reset --graceful=false --reboot -n infra-w0.monosense.io -e infra-w0.monosense.io

echo "Waiting for workers to reset... ^C to stop here"
sleep 5

# Reset the control plane nodes
talosctl reset --graceful=false --reboot -n infra-m0.monosense.io -e infra-m0.monosense.io
