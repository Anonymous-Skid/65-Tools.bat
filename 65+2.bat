@echo off
title Amar - Super Multitool 65 Options
color 0A
mode con: cols=120 lines=40
setlocal enabledelayedexpansion

:menu
cls
echo =========================================================
echo                  AMAR - SUPER MULTITOOL
echo =========================================================
echo.

:: Liste des options
echo 1.  Ouvrir Bloc-notes
echo 2.  Ouvrir Calculatrice
echo 3.  Ouvrir Paint
echo 4.  Ouvrir CMD
echo 5.  Ouvrir PowerShell
echo 6.  Ouvrir Explorateur Windows
echo 7.  Afficher IP locale
echo 8.  Ping Google
echo 9.  Verifier connexion Internet
echo 10. Afficher processus en cours
echo 11. Afficher espace disque
echo 12. Lancer Windows Update
echo 13. Verifier version Windows
echo 14. Redemarrer PC
echo 15. Eteindre PC
echo 16. Mise en veille
echo 17. Afficher info CPU
echo 18. Afficher info RAM
echo 19. Lister programmes installes
echo 20. Nettoyer fichiers temporaires
echo 21. Ouvrir gestionnaire de taches
echo 22. Ouvrir peripheriques et imprimantes
echo 23. Ouvrir panneau de configuration
echo 24. Ouvrir Windows Defender
echo 25. Activer/Désactiver Wi-Fi
echo 26. Afficher adresses MAC
echo 27. Lancer ipconfig /all
echo 28. Lancer tracert google.com
echo 29. Afficher route reseau
echo 30. Ouvrir navigateur par defaut
echo 31. Rechercher fichier
echo 32. Creer dossier rapide
echo 33. Supprimer dossier rapide
echo 34. Afficher date et heure
echo 35. Modifier date
echo 36. Modifier heure
echo 37. Lancer Notepad++ (si installe)
echo 38. Lancer VLC (si installe)
echo 39. Lancer Discord (si installe)
echo 40. Lancer Chrome
echo 41. Lancer Firefox
echo 42. Lancer Edge
echo 43. Ouvrir gestion disque
echo 44. Lancer ressources systeme (perfmon)
echo 45. Verifier batterie
echo 46. Afficher services Windows
echo 47. Demarrer service Windows
echo 48. Stopper service Windows
echo 49. Ouvrir reseau et partage
echo 50. Lancer calculateur IP
echo 51. Afficher infos GPU
echo 52. Ouvrir Snipping Tool
echo 53. Ouvrir Windows Store
echo 54. Lancer CMD en admin
echo 55. Nettoyer cache DNS
echo 56. Afficher logs Windows
echo 57. Lancer Gestionnaire des taches avance
echo 58. Ouvrir configuration systeme (msconfig)
echo 59. Ouvrir Mon ordinateur
echo 60. Afficher utilisateurs connectes
echo 61. Lancer explorateur de fichiers en admin
echo 62. Redemarrer explorateur Windows
echo 63. Ouvrir horloge Windows
echo 64. Ouvrir calculateur rapide
echo 65. Quitter
echo.

set /p choix=Entrez votre choix (1-65) :

:: Gestion des choix
if "%choix%"=="1" start notepad
if "%choix%"=="2" start calc
if "%choix%"=="3" start mspaint
if "%choix%"=="4" start cmd
if "%choix%"=="5" start powershell
if "%choix%"=="6" start explorer
if "%choix%"=="7" ipconfig
if "%choix%"=="8" ping google.com
if "%choix%"=="9" ping google.com -n 1
if "%choix%"=="10" tasklist
if "%choix%"=="11" wmic logicaldisk get size,freespace,caption
if "%choix%"=="12" start ms-settings:windowsupdate
if "%choix%"=="13" systeminfo | findstr /B /C:"OS Name" /C:"OS Version"
if "%choix%"=="14" shutdown /r /t 5
if "%choix%"=="15" shutdown /s /t 5
if "%choix%"=="16" rundll32.exe powrprof.dll,SetSuspendState 0,1,0
if "%choix%"=="17" wmic cpu get name
if "%choix%"=="18" wmic memorychip get capacity
if "%choix%"=="19" wmic product get name
if "%choix%"=="20" del /q/f/s %TEMP%\*
if "%choix%"=="21" taskmgr
if "%choix%"=="22" control printers
if "%choix%"=="23" control
if "%choix%"=="24" start windowsdefender:
if "%choix%"=="25" netsh interface set interface "Wi-Fi" admin=disable & netsh interface set interface "Wi-Fi" admin=enable
if "%choix%"=="26" getmac
if "%choix%"=="27" ipconfig /all
if "%choix%"=="28" tracert google.com
if "%choix%"=="29" route print
if "%choix%"=="30" start https://www.google.com
if "%choix%"=="31" set /p fname=Nom du fichier: & dir /s /b "%fname%"
if "%choix%"=="32" set /p dname=Nom dossier: & mkdir "%dname%"
if "%choix%"=="33" set /p dname=Nom dossier: & rmdir /s /q "%dname%"
if "%choix%"=="34" date /t & time /t
if "%choix%"=="35" date
if "%choix%"=="36" time
if "%choix%"=="37" start "" "C:\Program Files\Notepad++\notepad++.exe"
if "%choix%"=="38" start "" "C:\Program Files\VideoLAN\VLC\vlc.exe"
if "%choix%"=="39" start "" "C:\Users\%USERNAME%\AppData\Local\Discord\Update.exe" --processStart Discord.exe
if "%choix%"=="40" start chrome
if "%choix%"=="41" start firefox
if "%choix%"=="42" start msedge
if "%choix%"=="43" diskmgmt.msc
if "%choix%"=="44" perfmon
if "%choix%"=="45" powercfg /batteryreport
if "%choix%"=="46" services.msc
if "%choix%"=="47" set /p sname=Nom service: & net start "%sname%"
if "%choix%"=="48" set /p sname=Nom service: & net stop "%sname%"
if "%choix%"=="49" control /name Microsoft.NetworkAndSharingCenter
if "%choix%"=="50" start calc
if "%choix%"=="51" wmic path win32_videocontroller get name
if "%choix%"=="52" snippingtool
if "%choix%"=="53" start ms-windows-store:
if "%choix%"=="54" powershell -Command "Start-Process cmd -Verb RunAs"
if "%choix%"=="55" ipconfig /flushdns
if "%choix%"=="56" eventvwr
if "%choix%"=="57" taskmgr /v
if "%choix%"=="58" msconfig
if "%choix%"=="59" explorer shell:MyComputerFolder
if "%choix%"=="60" query user
if "%choix%"=="61" powershell -Command "Start-Process explorer -Verb RunAs"
if "%choix%"=="62" taskkill /f /im explorer.exe & start explorer.exe
if "%choix%"=="63" control /name Microsoft.DateAndTime
if "%choix%"=="64" start calc
if "%choix%"=="65" exit

pause
goto menu