@echo off
tasklist /FI "IMAGENAME eq How Do I Remove Him.exe" 2>NUL | find /I "How Do I Remove Him.exe" >NUL
if "%ERRORLEVEL%"=="0" (
    taskkill /F /IM "How Do I Remove Him.exe"
    echo Removed Him
) else (
    echo Didnt Find him.
)
pause
