@echo Suppression des fichiers temporaires.
@echo off
timeout /t 2 /nobreak > nul
Color 0A & Mode con cols=120 lines=100

@echo off
RMDIR /s /q maj\cmd\quenelle
