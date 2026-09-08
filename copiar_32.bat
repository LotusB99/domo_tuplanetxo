@echo off
setlocal EnableDelayedExpansion

cd /d "%~dp0"

set "DESTINO=32CARACTERES"

if not exist "%DESTINO%" mkdir "%DESTINO%"

echo.
echo Carpeta de trabajo:
echo %CD%
echo.
echo Buscando archivos PNG con exactamente 32 caracteres...
echo.

set /a encontrados=0

for %%F in (*.png) do (
    set "NOMBRE=%%~nF"

    if "!NOMBRE:~31,1!" neq "" if "!NOMBRE:~32,1!" == "" (
        echo Copiando: %%F
        copy /Y "%%F" "%DESTINO%\%%F" >nul
        set /a encontrados+=1
    )
)

echo.
echo ==========================================
echo Archivos encontrados: !encontrados!
echo ==========================================
echo.
echo Las copias estan en:
echo %CD%\%DESTINO%
echo.

pause