@echo off
REM Sync mods from server git repo to local Minecraft client (Windows)
REM Usage: sync-mods.bat [minecraft-mods-path]

if "%1"=="" (
    set "MODS_DIR=%APPDATA%\.minecraft\mods"
) else (
    set "MODS_DIR=%1"
)

if not exist "%MODS_DIR%" (
    echo Creating mods directory: %MODS_DIR%
    mkdir "%MODS_DIR%"
)

echo Syncing mods to: %MODS_DIR%
echo.

REM Copy all jar files to Minecraft mods folder
copy /Y *.jar "%MODS_DIR%\" >nul 2>&1

if %ERRORLEVEL% EQU 0 (
    echo Mods synced successfully!
    echo.
    echo Installed mods:
    dir /B *.jar 2>nul
) else (
    echo No mod files found to sync.
)

echo.
echo Start Minecraft 1.20.1 with Fabric to play!
pause
