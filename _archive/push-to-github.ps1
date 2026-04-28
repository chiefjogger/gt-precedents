# Setup script: clone the WinX cohort bundle and push to GitHub Pages.
# Run from PowerShell on your machine (where gh CLI is authenticated).
# Reason for the bundle: the workspace folder lives on OneDrive, which corrupts .git
# internals via its sync layer. We build the repo outside OneDrive, then push.

# Edit these two lines if you want different defaults
$RepoName = "winx-cohort"
$Visibility = "private"   # change to "public" if you prefer the page reachable without GitHub login

# Where to clone the repo (outside OneDrive). Change if you want a different folder.
$DestPath = "$env:USERPROFILE\dev\$RepoName"

# Path to the bundle (inside the OneDrive workspace; reading from OneDrive is fine)
$BundlePath = "$PSScriptRoot\winx-cohort.bundle"

# --- script begins ---

if (-not (Test-Path $BundlePath)) {
    Write-Host "Bundle not found at $BundlePath" -ForegroundColor Red
    exit 1
}

# 1. Verify gh is authenticated
Write-Host "Checking gh authentication..." -ForegroundColor Cyan
gh auth status 2>&1 | Out-Null
if ($LASTEXITCODE -ne 0) {
    Write-Host "gh CLI is not authenticated. Run 'gh auth login' first." -ForegroundColor Red
    exit 1
}

# 2. Create destination folder outside OneDrive
$ParentDir = Split-Path -Parent $DestPath
if (-not (Test-Path $ParentDir)) { New-Item -ItemType Directory -Path $ParentDir | Out-Null }
if (Test-Path $DestPath) {
    Write-Host "Destination $DestPath already exists. Remove it or change `$DestPath at the top of this script." -ForegroundColor Red
    exit 1
}

# 3. Clone the bundle
Write-Host "Cloning bundle to $DestPath..." -ForegroundColor Cyan
git clone $BundlePath $DestPath
if ($LASTEXITCODE -ne 0) { Write-Host "git clone failed" -ForegroundColor Red; exit 1 }

Push-Location $DestPath
git remote remove origin

# 4. Create the GitHub repo and push
$VisFlag = "--$Visibility"
Write-Host "Creating GitHub repo $RepoName ($Visibility)..." -ForegroundColor Cyan
gh repo create $RepoName $VisFlag --source=. --remote=origin --description "Masan Group internal: WinX cohort post-mortem (23 companies, India + Indonesia + Vietnam)" --push
if ($LASTEXITCODE -ne 0) {
    Write-Host "gh repo create failed" -ForegroundColor Red
    Pop-Location
    exit 1
}

# 5. Get the owner from gh auth status
$Owner = (gh api user --jq '.login').Trim()
Write-Host "Owner: $Owner"

# 6. Enable GitHub Pages from /docs on main branch
Write-Host "Enabling GitHub Pages from /docs on main..." -ForegroundColor Cyan
gh api -X POST "repos/$Owner/$RepoName/pages" -f "source[branch]=main" -f "source[path]=/docs" 2>&1 | Out-Null
if ($LASTEXITCODE -ne 0) {
    Write-Host "POST failed (Pages may already be enabled). Trying PUT to update..." -ForegroundColor Yellow
    gh api -X PUT "repos/$Owner/$RepoName/pages" -f "source[branch]=main" -f "source[path]=/docs" 2>&1 | Out-Null
}

# 7. Print the URL
Start-Sleep -Seconds 3
$pages = gh api "repos/$Owner/$RepoName/pages" 2>$null | ConvertFrom-Json
if ($pages -and $pages.html_url) {
    Write-Host ""
    Write-Host "==============================================" -ForegroundColor Green
    Write-Host "  Done. The dossier will be live in 30-90 sec at:" -ForegroundColor Green
    Write-Host "  $($pages.html_url)" -ForegroundColor Green
    Write-Host "==============================================" -ForegroundColor Green
    Write-Host ""
    Write-Host "Repo: https://github.com/$Owner/$RepoName"
    Write-Host "Local clone: $DestPath"
} else {
    Write-Host "Pages enabled. Check status with: gh api repos/$Owner/$RepoName/pages" -ForegroundColor Yellow
    Write-Host "Repo: https://github.com/$Owner/$RepoName"
}

Pop-Location
