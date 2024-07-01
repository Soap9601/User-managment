@echo off
:menu
echo ====================================
echo   User Management Batch Script
echo ====================================
echo 1. Change a user's password
echo 2. Create a new user
echo 3. Delete a user
echo 4. List all users
echo 5. Exit
echo ====================================
set /p choice=Enter your choice (1-5): 

if "%choice%"=="1" goto changepassword
if "%choice%"=="2" goto createuser
if "%choice%"=="3" goto deleteuser
if "%choice%"=="4" goto listusers
if "%choice%"=="5" goto exit

:changepassword
set /p username=Enter the username: 
set /p newpassword=Enter the new password: 
net user %username% %newpassword%
echo Password for %username% has been changed.
pause
goto menu

:createuser
set /p newusername=Enter the new username: 
set /p newuserpassword=Enter the new user's password: 
net user %newusername% %newuserpassword% /add
echo User %newusername% has been created.
pause
goto menu

:deleteuser
set /p delusername=Enter the username to delete: 
net user %delusername% /delete
echo User %delusername% has been deleted.
pause
goto menu

:listusers
echo List of users:
net user
pause
goto menu

:exit
exit
