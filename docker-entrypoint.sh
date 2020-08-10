#!/bin/bash
set -eux pipefail

ENTRYPOINT_FILE=${1:-"/root/main.bas"}
basic "${ENTRYPOINT_FILE}"
