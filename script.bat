@echo off
setlocal

set "ORIGEN=%~dp0"
set "DESTINO=%~dp0png_domo"

if not exist "%DESTINO%" mkdir "%DESTINO%"

for /r "%ORIGEN%" %%F in (
    "logo-ceibal.png"
    "logo-ceibal-small.png"
    "nav-back.png"
    "domo_animated.gif"
    "header-border-bottom.png"
    "yoyo.png"
    "yoyo-back-middle.png"
    "yoyo-back-right.png"
    "locker-back-left.png"
    "locker-back-right.png"
    "locker-back-top.png"
    "locker-vents.png"
    "yoyo-group.png"
    "games.png"
    "more.png"
    "videos.png"
    "search.png"
    "content-game.png"
    "content-more.png"
    "content-video.png"
    "nav-left.png"
    "nav-right.png"
    "footer_domo_logo.png"
    "footer_chicken_logo.png"
    "banner_boo_positivo2_copy_8wBKZZl.png"
) do (
    if exist "%%F" (
        copy /Y "%%F" "%DESTINO%\" >nul
        echo COPIADO: %%~nxF
    )
)

echo.
echo ================================
echo TERMINADO
echo Archivos guardados en:
echo %DESTINO%
echo ================================
pause