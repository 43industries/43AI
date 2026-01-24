@echo off
REM 43.AI Assistant Launcher (Batch version)
echo ===============================================
echo     43.AI Personal Assistant Launcher
echo ===============================================
echo.

REM Check if API key is set
if "%ANTHROPIC_API_KEY%"=="" (
    echo [!] API key not found in environment
    echo.
    echo Please set your Anthropic API key:
    echo   set ANTHROPIC_API_KEY=your_key_here
    echo.
    echo Or enter it now:
    set /p API_KEY="Enter your Anthropic API key: "
    set ANTHROPIC_API_KEY=%API_KEY%
    echo.
    echo [OK] API key set for this session
    echo.
) else (
    echo [OK] API key is already set
    echo.
)

REM Run the assistant
echo Starting 43.AI Assistant...
echo.
py 43.AI
