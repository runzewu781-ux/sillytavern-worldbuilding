@echo off
title SillyTavern
pushd "%~dp0SillyTavern" || exit /b 1
echo Starting SillyTavern. The browser will open when it is ready.
echo Close this window to stop SillyTavern.
node server.js
set "TAVERN_EXIT_CODE=%errorlevel%"
popd
if not "%TAVERN_EXIT_CODE%"=="0" pause
exit /b %TAVERN_EXIT_CODE%
