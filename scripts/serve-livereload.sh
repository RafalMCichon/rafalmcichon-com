#!/usr/bin/env sh
# Local Jekyll server with live reload (recommended for development)
# Usage: ./scripts/serve-livereload.sh
# Custom ports: PORT=4002 LR_PORT=35731 ./scripts/serve-livereload.sh

set -eu

HOST="${HOST:-127.0.0.1}"
PORT="${PORT:-4000}"
LR_PORT="${LR_PORT:-35729}"

# Check main server port
if command -v lsof >/dev/null 2>&1; then
  if lsof -iTCP:"$PORT" -sTCP:LISTEN -t >/dev/null 2>&1; then
    echo "ERROR: Port $PORT is already in use."
    echo "Try: PORT=$((PORT+1)) LR_PORT=$((LR_PORT+1)) $0"
    exit 1
  fi

  # Auto-pick a free LiveReload port (common source of 'no acceptor' errors)
  ORIG_LR_PORT="$LR_PORT"
  while lsof -iTCP:"$LR_PORT" -sTCP:LISTEN -t >/dev/null 2>&1; do
    LR_PORT=$((LR_PORT+1))
  done
  if [ "$LR_PORT" != "$ORIG_LR_PORT" ]; then
    echo "LiveReload port $ORIG_LR_PORT was busy; using $LR_PORT instead."
  fi
fi

# Livereload may pull native gems on macOS. Help Bundler find OpenSSL if installed via Homebrew.
if command -v brew >/dev/null 2>&1; then
  OPENSSL_PREFIX="$(brew --prefix openssl@3 2>/dev/null || true)"
  if [ -n "$OPENSSL_PREFIX" ] && [ -d "$OPENSSL_PREFIX" ]; then
    export LDFLAGS="-L$OPENSSL_PREFIX/lib ${LDFLAGS:-}"
    export CPPFLAGS="-I$OPENSSL_PREFIX/include ${CPPFLAGS:-}"
    export PKG_CONFIG_PATH="$OPENSSL_PREFIX/lib/pkgconfig${PKG_CONFIG_PATH:+:$PKG_CONFIG_PATH}"
  fi
fi

echo "Starting Jekyll with LiveReload at http://$HOST:$PORT/ (LiveReload: $LR_PORT)"
bundle exec jekyll serve --livereload --livereload-port "$LR_PORT" --host "$HOST" --port "$PORT"
