#!/usr/bin/env bash
set -euo pipefail
APP_DIR="${XDG_DATA_HOME:-$HOME/.local/share}/breaklab"
APP_LIST="${XDG_DATA_HOME:-$HOME/.local/share}/applications"
rm -f "$APP_LIST/breaklab.desktop"
rm -rf "$APP_DIR"
if command -v update-desktop-database >/dev/null 2>&1; then update-desktop-database "$APP_LIST" >/dev/null 2>&1 || true; fi
echo "BreakLab app files removed. Your exported audio and projects are untouched."
