@echo off
title Launching AI-Image-Caption-Backend-API
echo ========================================================
echo   [1-CLICK RUN] Starting AI-Image-Caption-Backend-API
echo ========================================================
echo.

where node >nul 2>nul
if %ERRORLEVEL% neq 0 (
    echo [ERROR] Node.js is not installed or not in PATH!
    echo Please install Node.js from https://nodejs.org
    pause
    exit /b 1
)

if not exist "node_modules\" (
    echo [INFO] Installing dependencies (npm install)...
    call npm install
)

echo [INFO] Opening endpoint in your web browser...
start http://localhost:3000

echo [INFO] Starting Node.js API server (server.js)...
echo Press Ctrl+C in this terminal to stop the server at any time.
echo.
call npm start || node server.js
pause
