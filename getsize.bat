@echo off
setlocal enabledelayedexpansion

set size=0
for /f "tokens=*" %%x in ('dir c:\windows\temp\ /s /a /b %1') do set /a size+=%%~zx
echo %size%
set /a sizemb=%size%/1024/1024
echo %sizemb%
endlocal