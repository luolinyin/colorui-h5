@echo off
cd /d "%~dp0"
set PORT=8080
set PY=
where python  >nul 2>nul && set "PY=python"
where python3 >nul 2>nul && set "PY=python3"
where py      >nul 2>nul && set "PY=py"
if not defined PY (echo [错误] 未找到 Python，请先安装 https://www.python.org/ & pause & exit /b 1)
echo ============================================
echo  ColorUI H5 演示站  (本地镜像，离线可运行)
echo  访问地址: http://127.0.0.1:%PORT%/
echo  关闭此窗口即可停止服务
echo ============================================
start "" "http://127.0.0.1:%PORT%/"
%PY% -m http.server %PORT%
