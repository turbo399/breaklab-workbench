#!/usr/bin/env bash
set -euo pipefail
APP_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
APP_HTML="$APP_DIR/index.html"
APP_URL="$(python3 -c 'from pathlib import Path; from urllib.parse import quote; import sys; print("file://" + quote(str(Path(sys.argv[1]).resolve())))' "$APP_HTML")"
BROWSER=""
for candidate in brave-browser brave-browser-stable chromium chromium-browser google-chrome google-chrome-stable; do
  if command -v "$candidate" >/dev/null 2>&1; then
    BROWSER="$(command -v "$candidate")"
    break
  fi
done
if [[ -z "$BROWSER" ]]; then
  echo "BreakLab needs Brave, Chromium, or Google Chrome. Install one and try again." >&2
  exit 1
fi
exec "$BROWSER" --app="$APP_URL" --class=BreakLab --no-first-run
