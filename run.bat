@echo off
title CivicLens AI
color 0B

echo.
echo ==========================================
echo          CIVICLENS AI
echo       Local Web Application
echo ==========================================
echo.

cd /d "%~dp0"

echo Starting CivicLens AI...
echo.

if not exist "index.html" (
    echo ERROR: index.html not found!
    echo Make sure run.bat is inside the civiclens-ai folder.
    echo.
    pause
    exit /b 1
)

echo Opening browser...
start "" "http://localhost:8000"

echo.
echo ==========================================
echo   CivicLens AI is running
echo   http://localhost:8000
echo ==========================================
echo.
echo Press CTRL+C to stop the server.
echo.

npx http-server . -p 8000

pause