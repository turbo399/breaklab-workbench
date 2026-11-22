#!/usr/bin/env bash
set -euo pipefail
SOURCE_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
APP_DIR="${XDG_DATA_HOME:-$HOME/.local/share}/breaklab"
APP_LIST="${XDG_DATA_HOME:-$HOME/.local/share}/applications"
mkdir -p "$APP_DIR" "$APP_LIST"
install -m 644 "$SOURCE_DIR/index.html" "$APP_DIR/index.html"
install -m 644 "$SOURCE_DIR/breaklab.svg" "$APP_DIR/breaklab.svg"
install -m 755 "$SOURCE_DIR/launch.sh" "$APP_DIR/launch.sh"
cat > "$APP_LIST/breaklab.desktop" <<EOF
[Desktop Entry]
Version=1.0
Type=Application
Name=BreakLab
Comment=Chop, flip and loop breaks
Exec=$APP_DIR/launch.sh
Icon=$APP_DIR/breaklab.svg
Terminal=false
Categories=AudioVideo;Audio;
StartupNotify=true
EOF
chmod 644 "$APP_LIST/breaklab.desktop"
if command -v update-desktop-database >/dev/null 2>&1; then update-desktop-database "$APP_LIST" >/dev/null 2>&1 || true; fi
echo "BreakLab installed. Find it in Applications or search your desktop launcher."
