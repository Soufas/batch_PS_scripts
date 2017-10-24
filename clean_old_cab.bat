@echo off
set cnt=0
for %%A in (C:\Windows\Temp\*) do set /a cnt+=1
echo File count = %cnt%
if %cnt% gtr 20 goto :bigger

:bigger
rem "Delete old *.tmp files"
forfiles /P "C:\Windows\Temp" /S /M cab_* /C "cmd /c del /F /Q @path" /D -10

:end