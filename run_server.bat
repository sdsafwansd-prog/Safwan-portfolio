@echo off
cd /d "%~dp0"
echo ========================================================
echo   Starting SAFWAN SD Portfolio Web Server (Port 5500)
echo ========================================================
echo.
echo Website Folder: %~dp0
echo Opening http://localhost:5500 in your browser...
echo.

:: Wait 1 second and launch browser
start "" "http://localhost:5500/index.html"

:: Run local python server inside portfolio 2 folder
python -m http.server 5500
pause

