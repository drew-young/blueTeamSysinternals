@echo off

for /f %%i in ('echo %cd%') do set cwd=%%i

echo Downloading sysinternals...

echo.

if %1==32 goto thirtytwo
if%1==64 goto sixtyfour

:sixtyfour
echo Downloading Procmon (Process Monitor) 64-bit
curl https://cdn-102.anonfiles.com/J9p381K4x7/85945e0c-1645936289/svcmon64.exe --output svcmon64.exe
echo.
echo Process Monitor is located at %cwd%\svcmon64.exe
echo. 
echo Downloading Procexp (Process Explorer) 64-bit
curl https://cdn-103.anonfiles.com/H6pe88K8xd/61108b62-1645936356/svcexp64.exe --output svcexp64.exe
echo.
echo Process Monitor is located at %cwd%\svcexp64.exe
echo. 
goto end



:thirtytwo
echo Downloading Procmon (Process Monitor) 32-bit
curl https://cdn-103.anonfiles.com/Nbp58cK2x1/fffa3a4f-1645936336/svcmon.exe --output svcmon32.exe
echo.
echo Process Monitor is located at %cwd%\svcmon32.exe
echo. 
echo Downloading Procexp (Process Explorer) 32-bit
curl https://cdn-129.anonfiles.com/L2p789Kex8/87d375a1-1645936370/svcexp.exe --output svcexp32.exe
echo.
echo Process Monitor is located at %cwd%\svcexp32.exe
echo. 



:end
echo Good luck!
timeout /t 3