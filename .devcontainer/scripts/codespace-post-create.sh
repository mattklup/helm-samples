#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

# Clean docker
KIND_CLUSTERS=$(kind get clusters --quiet)
if [[ ! -z "$KIND_CLUSTERS" ]]; then
    kind delete cluster --name vscode
fi

kind create cluster --wait 5m --name vscode --config "$SCRIPT_DIR/kind.yaml"
