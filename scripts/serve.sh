#!/usr/bin/env sh
# Local Jekyll server without live reload
# Usage: ./scripts/serve.sh
# Custom port: PORT=4002 ./scripts/serve.sh

set -eu

HOST="${HOST:-127.0.0.1}"
PORT="${PORT:-4000}"

if command -v lsof >/dev/null 2>&1; then
  if lsof -iTCP:"$PORT" -sTCP:LISTEN -t >/dev/null 2>&1; then
    echo "ERROR: Port $PORT is already in use."
    echo "Try: PORT=$((PORT+1)) $0"
    exit 1
  fi
fi

echo "Starting Jekyll server at http://$HOST:$PORT/"
bundle exec jekyll serve --host "$HOST" --port "$PORT"
