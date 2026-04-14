#!/usr/bin/env bash
set -euo pipefail

PORT="${1:-8080}"

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

echo "스카이 타워 점프 실행 주소:"
echo "http://localhost:${PORT}/tower-girl-mobile-game.html"
echo
echo "종료하려면 Ctrl+C 를 누르세요."

python3 -m http.server "$PORT"
