@echo off
REM Git Push Helper Script (Batch version)

echo ===============================================
echo     Push 43.AI to Git Repository
echo ===============================================
echo.

REM Check current status
echo Current Git Status:
git status --short
echo.

REM Check if remote exists
git remote >nul 2>&1
if %errorlevel% equ 0 (
    echo Existing remotes:
    git remote -v
    echo.
    set /p USE_EXISTING="Use existing remote? (y/n): "
    if /i "%USE_EXISTING%"=="y" (
        set /p BRANCH="Branch name (default: master): "
        if "%BRANCH%"=="" set BRANCH=master
        echo.
        echo Pushing to remote...
        git push -u origin %BRANCH%
        goto :end
    )
)

REM Get repository URL
echo Enter your Git repository URL:
echo Examples:
echo   GitHub:  https://github.com/username/repo-name.git
echo   GitLab:  https://gitlab.com/username/repo-name.git
echo   SSH:     git@github.com:username/repo-name.git
echo.
set /p REPO_URL="Repository URL: "

if "%REPO_URL%"=="" (
    echo No URL provided. Exiting.
    exit /b 1
)

REM Add remote
echo.
echo Adding remote 'origin'...
git remote add origin %REPO_URL%
if %errorlevel% neq 0 (
    echo Remote might already exist. Updating...
    git remote set-url origin %REPO_URL%
)

REM Show remote
echo.
echo Remote configured:
git remote -v
echo.

REM Ask for branch name
set /p BRANCH="Branch name to push (default: master): "
if "%BRANCH%"=="" set BRANCH=master

REM Push
echo.
echo Pushing to %REPO_URL% ...
echo.

git push -u origin %BRANCH%

if %errorlevel% equ 0 (
    echo.
    echo ===============================================
    echo     Successfully pushed to repository!
    echo ===============================================
) else (
    echo.
    echo Push failed. Common issues:
    echo   1. Repository doesn't exist or URL is wrong
    echo   2. Authentication required
    echo   3. Branch name mismatch (try 'main' instead of 'master')
    echo.
    echo Try manually:
    echo   git push -u origin %BRANCH%
)

:end
