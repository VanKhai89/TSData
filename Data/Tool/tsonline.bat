@echo off
setlocal enabledelayedexpansion

REM ===== CONFIG =====
set CMD_DIR=C:\Users\KhaiPham\Desktop\Developer\TSOnline\Data\Tool\cmd

REM ===== GET DATETIME (ISO, LOCALE-INDEPENDENT) =====
for /f %%i in ('wmic os get localdatetime ^| find "."') do set dt=%%i

set yyyy=!dt:~0,4!
set mm=!dt:~4,2!
set dd=!dt:~6,2!
set hh=!dt:~8,2!
set nn=!dt:~10,2!
set ss=!dt:~12,2!

set TS=!yyyy!!mm!!dd!_!hh!!nn!!ss!

REM ===== FILE =====
REM set TMP_FILE=%CMD_DIR%\%TS%.tmp
set CMD_FILE=%CMD_DIR%\%TS%.ini

REM ===== WRITE COMMAND =====
echo %* > "%CMD_FILE%"

REM ===== ATOMIC RENAME =====
REM move /Y "%TMP_FILE%" "%CMD_FILE%" >nul
