@echo off
cd /d "%~dp0"
echo ========================================================
echo    Launching SAFWAN SD Data Analytics Portfolio...
echo ========================================================
echo.

:: Try opening directly in Google Chrome
if exist "C:\Program Files\Google\Chrome\Application\chrome.exe" (
    start "" "C:\Program Files\Google\Chrome\Application\chrome.exe" "%~dp0index.html"
    exit
)
if exist "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" (
    start "" "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" "%~dp0index.html"
    exit
)

:: Try opening directly in Microsoft Edge
if exist "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" (
    start "" "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" "%~dp0index.html"
    exit
)
if exist "C:\Program Files\Microsoft\Edge\Application\msedge.exe" (
    start "" "C:\Program Files\Microsoft\Edge\Application\msedge.exe" "%~dp0index.html"
    exit
)

:: Fallback to default browser
start "" "%~dp0index.html"
exit
