# Git Push Helper Script
# This script helps you add a remote repository and push your code

Write-Host "===============================================" -ForegroundColor Cyan
Write-Host "    Push 43.AI to Git Repository" -ForegroundColor Cyan
Write-Host "===============================================" -ForegroundColor Cyan
Write-Host ""

# Check current status
Write-Host "Current Git Status:" -ForegroundColor Yellow
git status --short
Write-Host ""

# Check if remote exists
$remoteExists = git remote | Measure-Object | Select-Object -ExpandProperty Count

if ($remoteExists -gt 0) {
    Write-Host "Existing remotes:" -ForegroundColor Green
    git remote -v
    Write-Host ""
    $useExisting = Read-Host "Use existing remote? (y/n)"
    if ($useExisting -eq "y" -or $useExisting -eq "Y") {
        $branch = Read-Host "Branch name (default: master)"
        if ([string]::IsNullOrWhiteSpace($branch)) { $branch = "master" }
        Write-Host ""
        Write-Host "Pushing to remote..." -ForegroundColor Cyan
        git push -u origin $branch
        exit
    }
}

# Get repository URL
Write-Host "Enter your Git repository URL:" -ForegroundColor White
Write-Host "Examples:" -ForegroundColor Gray
Write-Host "  GitHub:  https://github.com/username/repo-name.git" -ForegroundColor Gray
Write-Host "  GitLab:  https://gitlab.com/username/repo-name.git" -ForegroundColor Gray
Write-Host "  SSH:     git@github.com:username/repo-name.git" -ForegroundColor Gray
Write-Host ""
$repoUrl = Read-Host "Repository URL"

if ([string]::IsNullOrWhiteSpace($repoUrl)) {
    Write-Host "No URL provided. Exiting." -ForegroundColor Red
    exit
}

# Add remote
Write-Host ""
Write-Host "Adding remote 'origin'..." -ForegroundColor Cyan
git remote add origin $repoUrl

if ($LASTEXITCODE -ne 0) {
    Write-Host "Remote might already exist. Updating..." -ForegroundColor Yellow
    git remote set-url origin $repoUrl
}

# Show remote
Write-Host ""
Write-Host "Remote configured:" -ForegroundColor Green
git remote -v
Write-Host ""

# Ask for branch name
$branch = Read-Host "Branch name to push (default: master)"
if ([string]::IsNullOrWhiteSpace($branch)) { $branch = "master" }

# Push
Write-Host ""
Write-Host "Pushing to $repoUrl ..." -ForegroundColor Cyan
Write-Host ""

git push -u origin $branch

if ($LASTEXITCODE -eq 0) {
    Write-Host ""
    Write-Host "===============================================" -ForegroundColor Green
    Write-Host "    Successfully pushed to repository!" -ForegroundColor Green
    Write-Host "===============================================" -ForegroundColor Green
} else {
    Write-Host ""
    Write-Host "Push failed. Common issues:" -ForegroundColor Red
    Write-Host "  1. Repository doesn't exist or URL is wrong" -ForegroundColor Yellow
    Write-Host "  2. Authentication required (use SSH or GitHub CLI)" -ForegroundColor Yellow
    Write-Host "  3. Branch name mismatch (try 'main' instead of 'master')" -ForegroundColor Yellow
    Write-Host ""
    Write-Host "Try manually:" -ForegroundColor Cyan
    Write-Host "  git push -u origin $branch" -ForegroundColor White
}
