#!/usr/bin/env sh
set -eu

script_dir=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
codex_home=${CODEX_HOME:-"$HOME/.codex"}
target_dir="$codex_home/pets/sala"

mkdir -p "$target_dir"
cp "$script_dir/../pet/pet.json" "$target_dir/pet.json"
cp "$script_dir/../pet/spritesheet.webp" "$target_dir/spritesheet.webp"

printf 'Installed SALA to %s\n' "$target_dir"
