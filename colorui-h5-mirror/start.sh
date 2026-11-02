#!/usr/bin/env bash
# ColorUI H5 演示站 - 一键启动 (Linux / macOS / Git Bash)
cd "$(dirname "$0")"
PORT=8080
PY=$(command -v python3 || command -v python)
if [ -z "$PY" ]; then echo "[错误] 未找到 Python，请先安装 https://www.python.org/"; exit 1; fi
echo "============================================"
echo " ColorUI H5 演示站 (本地镜像，离线可运行)"
echo " 访问地址: http://127.0.0.1:$PORT/"
echo " 按 Ctrl+C 停止服务"
echo "============================================"
(sleep 1; command -v xdg-open >/dev/null && xdg-open "http://127.0.0.1:$PORT/" >/dev/null 2>&1; command -v open >/dev/null && open "http://127.0.0.1:$PORT/" >/dev/null 2>&1) &
exec "$PY" -m http.server "$PORT"
