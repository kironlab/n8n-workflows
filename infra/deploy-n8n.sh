#!/bin/bash
set -euo pipefail

# Deploy / redeploy n8n using docker-compose.yml
# Usage: ./deploy-n8n.sh
# Must be run from the same folder where docker-compose.yml lives (~/n8n)

cd "$(dirname "$0")"

echo "== Stopping previous container (if any) =="
if docker ps -a --format '{{.Names}}' | grep -q '^n8n$'; then
  docker stop n8n
  docker rm n8n
else
  echo "No 'n8n' container was running, skipping."
fi

echo "== Bringing up n8n with docker compose =="
docker compose up -d

echo "== Container status =="
docker compose ps

echo ""
echo "Done. To watch live logs run: docker compose logs -f"
