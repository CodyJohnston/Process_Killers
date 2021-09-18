@echo off

REM this file firce kills Spotify when it is being a bitch
REM It does not rely an any depenedencies and can be run fron any Windows instalation
REM Written by @AdwareHunter

:check_admin
	net session  >nul 2>&1
if %errorlevel% == 0 (
	taskkill /f /im "spotify.exe"
) else (
	echo "You must run this task as administrator."
	pause >nul 
)