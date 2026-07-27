#!/usr/bin/env sh
# Regenerate the Cursor copy of the skill from the source of truth.
set -eu

root="$(cd "$(dirname "$0")/.." && pwd)"
src="$root/skills/your-tam-is-fake"
dest="$root/.cursor/skills"

rm -rf "$dest/your-tam-is-fake"
mkdir -p "$dest"
cp -R "$src" "$dest/your-tam-is-fake"

echo "synced $src -> $dest/your-tam-is-fake"
