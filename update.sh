#!/usr/bin/env bash
set -e
ROOT="$(cd "$(dirname "$0")" && pwd)"
cd "$ROOT/backend"
npm install
cd "$ROOT"
echo "BB's Editz panel dependencies updated."
