@echo off
chcp 65001 >nul
cd /d "%~dp0"
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0photos-scan.ps1"
if errorlevel 1 (
  echo.
  echo Failed. Please check the message above.
  pause
)
