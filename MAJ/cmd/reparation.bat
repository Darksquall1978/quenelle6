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
::timeout /t 1 /nobreak > nul
::@echo  suppression du dossier patchers
::RMDIR /s /q bepinex\patchers
::timeout /t 1 /nobreak > nul
::@echo  suppression du dossier plugins-off
::RMDIR /s /q bepinex\plugins-off
::timeout /t 1 /nobreak > nul
::@echo  suppression du dossier doorstop_libs
::RMDIR /s /q doorstop_libs
::timeout /t 1 /nobreak > nul

::timeout /t 1 /nobreak > nul
::@echo  suppression du dossier unstripped_corlib
::RMDIR /s /q unstripped_corlib
::timeout /t 1 /nobreak > nul
::@echo  suppression du dossier vplus-data
::RMDIR /s /q vplus-data
::timeout /t 1 /nobreak > nul

 
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

::robocopy maj\cmd\quenelle6\bepinex\patchers BepInEx\patchers /mt /z /e
::timeout /t 1 /nobreak > nul
::ok
::pause

::xcopy maj\cmd\quenelle6\bepinex\plugins BepInEx\plugins\ /y
::timeout /t 1 /nobreak > nul

::robocopy maj\cmd\quenelle6\bepinex\plugins BepInEx\plugins /mt /z /e
::timeout /t 1 /nobreak > nul
::ok
::pause

::xcopy maj\cmd\quenelle6\bepinex\config BepInEx\config\ /y
::timeout /t 1 /nobreak > nul
::ok
::pause

::xcopy maj\cmd\quenelle6\bepinex\config BepInEx\conf-temp\ /y
::timeout /t 1 /nobreak > nul
::ok
::pause

::robocopy maj\cmd\quenelle6\bepinex\plugins-off BepInEx\plugins-off /mt /z /e
::timeout /t 1 /nobreak > nul
::ok
::pause

::robocopy maj\cmd\quenelle6\doorstop_libs doorstop_libs /mt /z /e
::timeout /t 1 /nobreak > nul
::ok
::pause

::robocopy maj\cmd\quenelle6\launcher launcher /mt /z /e 
::timeout /t 1 /nobreak > nul
::ok
::pause

::robocopy maj\cmd\quenelle6\unstripped_corlib unstripped_corlib /mt /z /e 
::timeout /t 1 /nobreak > nul
::ok
::pause

::robocopy maj\cmd\quenelle6\vplus-data vplus-data /mt /z /e 
::timeout /t 1 /nobreak > nul
::ok
::pause

::xcopy maj\cmd\quenelle6\doorstop_config.ini doorstop_config.ini /y
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

::xcopy maj\cmd\quenelle6\winhttp_.dll winhttp_.dll /y
::timeout /t 1 /nobreak > nul
::ok
::pause

::xcopy maj\cmd\quenelle6\Manager.apm Manager.apm /y
::timeout /t 1 /nobreak > nul


@echo off
IF EXIST maj\cmd\quenelle6 RMDIR /s /q maj\cmd\quenelle6

::start maj\cmd\reparerfin.bat

start launcher.exe
exit



