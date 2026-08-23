#!/usr/bin/env bash
set -e
ROOT="$(cd "$(dirname "$0")" && pwd)"
cd "$ROOT"
echo "Starting Minecraft is controlled by the backend process manager."
echo "Use the web panel's Start button after configuring server.jar."
