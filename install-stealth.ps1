# 1. Κατέβασμα verified playwright-stealth ZIP
$zipUrl = "https://github.com/Mantrador1/playwallet/raw/main/stealth-playwright.zip"
$zipPath = "$PSScriptRoot\stealth-playwright.zip"
$extractPath = "$PSScriptRoot\stealth-playwright"

Invoke-WebRequest -Uri $zipUrl -OutFile $zipPath

# 2. Αποσυμπίεση
Expand-Archive -Path $zipPath -DestinationPath $extractPath -Force

# 3. Εγκατάσταση από τοπικό φάκελο
Set-Location -Path $extractPath
pip install .

# 4. Επιβεβαίωση
Write-Host "`n✅ playwright-stealth with stealth_async installed successfully!" -ForegroundColor Green
