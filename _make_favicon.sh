#!/usr/bin/env bash
set -euo pipefail

python3 - <<'PY'
from PIL import Image

source = Image.open("images/favicon.png").convert("RGBA")
source.save(
    "favicon.ico",
    sizes=[(16, 16), (24, 24), (32, 32), (48, 48), (64, 64), (128, 128), (256, 256)],
)
source.save(
    "images/favicon.ico",
    sizes=[(16, 16), (24, 24), (32, 32), (48, 48), (64, 64), (128, 128), (256, 256)],
)
PY
