:start
@echo off &setlocal
title Fortune Teller
set /a count=0
for /f "tokens=1delims=:" %%i in ('findstr /n "^" "Fortunes.txt"') do set /a count=%%i
set /a rd=%random%%%count
if %rd% equ 0 (set "skip=") else set "skip=skip=%rd%"
set "found="
for /f "%skip%tokens=1*delims=:" %%i in ('findstr /n "^" "Fortunes.txt"') do if not defined found set "found=%%i"&set "var=%%j"
echo.%var%
endlocal
pause >nul
cls
goto start