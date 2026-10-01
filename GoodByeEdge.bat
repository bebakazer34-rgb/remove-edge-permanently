@echo off
echo ====================================================
echo FORCE-UNINSTALLING MICROSOFT EDGE FOREVER...
echo ====================================================

:: 1. Force-kill all running Edge and Update processes
taskkill /f /t /im msedge.exe >nul 2>&1
taskkill /f /t /im MicrosoftEdgeUpdate.exe >nul 2>&1
taskkill /f /t /im edgeupdate.exe >nul 2>&1

:: 2. Wipe the core provisioned AppX package for all users
powershell -Command "Get-AppxPackage -AllUsers *MicrosoftEdge* | Remove-AppxPackage -ErrorAction SilentlyContinue"

:: 3. Take ownership and completely shred the standard program folders
cd "%PROGRAMFILES(X86)%\Microsoft"
takeown /R /F Edge /D Y >nul 2>&1
icacls Edge /grant administrators:F /T >nul 2>&1
rd Edge /S /Q >nul 2>&1

takeown /R /F EdgeUpdate /D Y >nul 2>&1
icacls EdgeUpdate /grant administrators:F /T >nul 2>&1
rd EdgeUpdate /S /Q >nul 2>&1

:: 4. Build dummy "walls" so Windows cannot recreate the folders
copy nul Edge >nul 2>&1
copy nul EdgeUpdate >nul 2>&1

:: 5. Lock the Windows Registry to block Edge updates completely
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\EdgeUpdate" /v DoNotUpdateToEdgeWithChromium /t REG_DWORD /d 1 /f >nul 2>&1

echo ====================================================
echo SUCCESS! MICROSOFT EDGE HAS BEEN COMPLETELY WIPED.
echo ====================================================
pause
