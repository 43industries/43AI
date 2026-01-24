# 43.AI Assistant Launcher
# This script helps you set your API key and run the assistant

Write-Host "===============================================" -ForegroundColor Cyan
Write-Host "    43.AI Personal Assistant Launcher" -ForegroundColor Cyan
Write-Host "===============================================" -ForegroundColor Cyan
Write-Host ""

# Check if API key is already set
if ($env:ANTHROPIC_API_KEY) {
    Write-Host "[OK] API key is already set" -ForegroundColor Green
    Write-Host ""
} else {
    Write-Host "[!] API key not found in environment" -ForegroundColor Yellow
    Write-Host ""
    Write-Host "Please enter your Anthropic API key:" -ForegroundColor White
    Write-Host "(You can get one from: https://console.anthropic.com/)" -ForegroundColor Gray
    Write-Host ""
    $apiKey = Read-Host "Enter API key" -AsSecureString
    $BSTR = [System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($apiKey)
    $plainApiKey = [System.Runtime.InteropServices.Marshal]::PtrToStringAuto($BSTR)
    $env:ANTHROPIC_API_KEY = $plainApiKey
    Write-Host ""
    Write-Host "[OK] API key set for this session" -ForegroundColor Green
    Write-Host ""
}

# Run the assistant
Write-Host "Starting 43.AI Assistant..." -ForegroundColor Cyan
Write-Host ""
py 43.AI
