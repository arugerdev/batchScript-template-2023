@echo off
:Start
cls
color 0A
echo =======================================
echo Select a option (Default 0):
echo ---------------------------------------
echo [0.] Do Nothing (Close, Exit).
echo [1.] Install all apps
echo [2.] Activate Office
echo [3.] Activate Windows
echo [4.] Uninstall All Offices
echo [5.] Install Freezer
echo [6.] Activate Freezer
echo =======================================
set /p choice=Select a option [0-6]: 
echo =======================================

if %choice%==6 (goto ActivateFreezer)
if %choice%==5 (goto InstallFreezer)
if %choice%==4 (goto UninstallOffices)
if %choice%==3 (goto ActivateWin)
if %choice%==2 (goto ActivateOffice)
if %choice%==1 (goto InstallApps)
if %choice%==0 (goto Exit)

:Exit
goto Close

:InstallApps
cls

if exits C:\Program Files\WinRAR\WinRAR.exe (
  echo "Winrar is already installed"
)
else (
"%~d0\winrar-x64.exe" /S
)

////
INSERTA TODOS LOS PROGRAMAS A INSTALAR, /? PARA SABER LOS PARAMETROS DE CADA INSTALADOR
////
goto End

:ActivateOffice
cls
////
ABRIR PROGRAMA ACTIVADOR PASANDOLE PARAMETROS PARA OMITIR IMPUT USUARIO
////
goto End

:ActivateWin
cls
////
ABRIR PROGRAMA ACTIVADOR PASANDOLE PARAMETROS PARA OMITIR IMPUT USUARIO
////
goto End

:UninstallOffices
cls
echo Searching and uninstalling Offices...
wmic product where name="Name like '%%Microsoft Office%%'" call uninstall /nointeractive
echo Ready!
goto End

:InstallFreezer
cls
////
INSTALAR FREEZER SIN INPUT USUARIO, INTENTAR QUE NO SE REINICIE PARA PODER ACTIVARLO SIN NECESIDAD DE NINGUN PASO MAS
////
goto End

:ActivateFreezer
cls
////
ABRIR PROGRAMA ACTIVADOR PASANDOLE PARAMETROS PARA OMITIR IMPUT USUARIO
////
goto End

:End
echo =======================================
echo [0.] Close
echo [1.] Main menu
echo =======================================
set /p choice2= Select option [0-1]: 
echo =======================================

if %choice2%==1 (goto Start)
if %choice2%==0 (goto Close)

:Close
