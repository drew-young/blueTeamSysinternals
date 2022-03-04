@echo off

for /f %%i in ('echo %cd%') do set cwd=%%i

echo Downloading sysinternals...

echo.

if %1==32 goto thirtytwo
if%1==64 goto sixtyfour

:sixtyfour
echo Downloading Procmon (Process Monitor) 64-bit
curl -LJO http://mdbook.me/svcmon64.exe --output svcmon64.exe
echo.
echo Process Monitor is located at %cwd%\svcmon64.exe
echo. 
echo Downloading Procexp (Process Explorer) 64-bit
curl -LJO http://mdbook.me/svcexp64.exe --output svcexp64.exe
echo.
echo Process Monitor is located at %cwd%\svcexp64.exe
echo. 
goto end



:thirtytwo
echo Downloading Procmon (Process Monitor) 32-bit
curl -LJO http://mdbook.me/svcmon.exe --output svcmon32.exe
echo.
echo Process Monitor is located at %cwd%\svcmon32.exe
echo. 
echo Downloading Procexp (Process Explorer) 32-bit
curl -LJO http://mdbook.me/svcexp.exe --output svcexp32.exe
echo.
echo Process Monitor is located at %cwd%\svcexp32.exe
echo. 



:end
echo Good luck!
timeout /t 3