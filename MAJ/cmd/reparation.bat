@echo off
Color 0A & Mode con cols=120 lines=100
batbox /c 0X06 /d  
git clone https://github.com/Darksquall1978/quenelle6.git 
batbox /c 0X02 /d 
cd..
cd..
@echo off

@echo MAJ du --27/01/2024-- 15H00

timeout /t 2 /nobreak > nul
@echo  suppression du .git
RMDIR /s /q .git
::timeout /t 1 /nobreak > nul
@echo  suppression du dossier Mods
RMDIR /s /q FrostyModManager\Mods
timeout /t 1 /nobreak > nul
@echo  suppression de KyberBrowser
RMDIR /s /q KyberBrowser\KyberBrowser.exe


@echo  Copie des fichiers source

timeout /t 2 /nobreak > nul



@echo off 
robocopy maj\cmd\quenelle6\.git .git /mt /z /e
timeout /t 1 /nobreak > nul
::ok
::pause

xcopy maj\cmd\quenelle6\KyberBrowser\ KyberBrowser /y
::timeout /t 1 /nobreak > nul
::ok
::pause

robocopy maj\cmd\quenelle6\FrostyModManager\Mods FrostyModManager\Mods /mt /z /e
::timeout /t 1 /nobreak > nul
::ok
::pause


::robocopy maj\cmd\quenelle6\maj\cmd maj\cmd /mt /z /e 
::timeout /t 1 /nobreak > nul
::ok
::pause

xcopy maj\cmd\quenelle6\Launcher.apm Launcher.apm /y
::timeout /t 1 /nobreak > nul
::ok
::pause


::xcopy maj\cmd\quenelle6\Manager.apm Manager.apm /y
::timeout /t 1 /nobreak > nul


@echo off
IF EXIST maj\cmd\quenelle6 RMDIR /s /q maj\cmd\quenelle6


start launcher.exe
exit



