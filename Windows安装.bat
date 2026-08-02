@echo off
chcp 65001 >nul 2>&1
title Wanying Claude Code Install
set "SCRIPT_DIR=%~dp0"
if not exist "%SCRIPT_DIR%windows-install.ps1" (
  echo 找不到 windows-install.ps1
  pause
  exit /b 1
)
powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%SCRIPT_DIR%windows-install.ps1"
