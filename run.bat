@echo off
REM Check if Python is installed
python --version >nul 2>&1
IF ERRORLEVEL 1 (
    echo Python is not installed or not in PATH.
    pause
    exit /b
)

REM Start HTTP server on port 8080
echo Starting local server on http://localhost:8080
start "" http://localhost:8080

REM Start Python HTTP server in this folder
python -m http.server 8080

pause
