#!/usr/bin/env bash
set -euo pipefail

TARGET_URL="${1:-http://localhost:8080}"

echo "Checking health of: ${TARGET_URL}"

HTTP_STATUS="$(curl -s -o /dev/null -w "%{http_code}" "${TARGET_URL}" || true)"

if [ "${HTTP_STATUS}" -eq 200 ]; then
    echo "SUCCESS: ${TARGET_URL} returned HTTP ${HTTP_STATUS} OK."
    exit 0
else
    echo "ERROR: Healthcheck failed for ${TARGET_URL}. Expected HTTP 200, but got HTTP ${HTTP_STATUS}." >&2
    exit 1
fi
