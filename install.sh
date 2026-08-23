#!/usr/bin/env bash
set -e

ROOT="$(cd "$(dirname "$0")" && pwd)"
cd "$ROOT"

echo "=============================================="
echo "   BB's Editz Minecraft Server Manager"
echo "   Automated Setup"
echo "=============================================="
echo

echo "[1/7] Checking operating system..."
uname -a || true

echo "[2/7] Checking required tools..."
command -v node >/dev/null 2>&1 || {
  echo "Node.js is required. Install Node.js 20+ and run this script again."
  exit 1
}

command -v npm >/dev/null 2>&1 || {
  echo "npm is required. Install npm and run this script again."
  exit 1
}

command -v java >/dev/null 2>&1 || {
  echo "Java is required for Minecraft. Install a Java version compatible with your chosen Minecraft version."
  exit 1
}

echo "[3/7] Creating directories..."
mkdir -p backend/routes backend/services backend/middleware
mkdir -p frontend/css frontend/js
mkdir -p minecraft/plugins minecraft/worlds minecraft/logs minecraft/backups
mkdir -p data/backups

echo "[4/7] Installing backend dependencies..."
cd "$ROOT/backend"
npm install

echo "[5/7] Creating local environment..."
cd "$ROOT"
if [ ! -f .env ]; then
  cp .env.example .env
fi

echo "[6/7] Preparing scripts..."
chmod +x scripts/*.sh 2>/dev/null || true

echo "[7/7] Starting panel..."
cd "$ROOT/backend"
nohup npm start > "$ROOT/data/panel.log" 2>&1 &
echo $! > "$ROOT/data/panel.pid"

echo
echo "=============================================="
echo " BB's Editz setup completed"
echo "=============================================="
echo "Panel: http://localhost:${PORT:-3000}"
echo "Log:   $ROOT/data/panel.log"
echo
echo "Open the forwarded port 3000 in Codespaces."
echo
echo "Minecraft server software is intentionally not bundled."
echo "Download the appropriate server software from its official source,"
echo "place it at:"
echo "  $ROOT/minecraft/server.jar"
echo
