#!/usr/bin/env bash
set -euo pipefail

URL="http://127.0.0.1:8000/"

if curl -s -o /dev/null -w "%{http_code}" "$URL" | grep -q "^200$"; then
    echo "Сервис работает (HTTP 200)"
    exit 0
else
    echo "Сервис недоступен"
    exit 1
fi
