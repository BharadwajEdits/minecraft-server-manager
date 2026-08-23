#!/usr/bin/env bash
set -e
ROOT="$(cd "$(dirname "$0")" && pwd)"
"$ROOT/scripts/restore-backup.sh" "$@"
