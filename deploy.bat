@echo off
rem Deploy outside the Jenkins workspace so cleanWs() does not remove it
set DEPLOY_DIR=%USERPROFILE%\jenkins_deploy\jenkins_Youssef_AlHajjYouness
if not exist "%DEPLOY_DIR%" mkdir "%DEPLOY_DIR%"
copy /Y app.py "%DEPLOY_DIR%\" || exit /b 1
python "%DEPLOY_DIR%\app.py" || exit /b 1
echo Deployed to %DEPLOY_DIR%
