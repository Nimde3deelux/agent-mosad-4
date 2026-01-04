@echo off
title Serveur local - AGENT DU MOSSAD 4
echo ============================================
echo   Lancement du serveur local pour le jeu
echo   AGENT DU MOSSAD 4
echo ============================================
echo.

REM Vérifie si Python est installé
python --version >nul 2>&1
IF %ERRORLEVEL% NEQ 0 (
    echo ERREUR : Python n'est pas installé sur ce PC.
    echo Installe Python depuis https://www.python.org/downloads/
    echo puis relance ce fichier.
    pause
    exit /b
)

echo Serveur en cours de lancement...
echo.

REM Lance un serveur HTTP sur le port 8000
start "" http://localhost:8000/index.html
python -m http.server 8000

pause