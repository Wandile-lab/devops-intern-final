#!/usr/bin/env bash
set -euo pipefail

echo "=== System Information Report ==="
echo "User:           $(id -un) (UID: $(id -u))"
echo "Hostname:       $(hostname)"
echo "Kernel Release: $(uname -r)"
echo "System Date:    $(date -u +"%Y-%m-%dT%H:%M:%SZ")"

echo ""
echo "=== Disk Usage ==="
df -h /

echo ""
echo "=== Memory Usage ==="
if command -v free >/dev/null 2>&1; then
    free -h
elif [ -r /proc/meminfo ]; then
    grep -E 'MemTotal|MemFree|MemAvailable' /proc/meminfo
fi

echo ""
echo "=== Docker Daemon Status ==="
if docker info >/dev/null 2>&1; then
    echo "Docker daemon is RUNNING and accessible."
else
    echo "Docker daemon is NOT running or current user lacks permissions."
fi
