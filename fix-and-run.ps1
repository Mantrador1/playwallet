# Set environment variables
$env:OPENROUTER_API_KEY = "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"
$env:TELEGRAM_BOT_TOKEN = ""
$env:CHAT_ID = ""

# Print diagnostic info
Write-Host "`n✅ Environment variables set:"
Write-Host "OPENROUTER_API_KEY: $($env:OPENROUTER_API_KEY.Substring(0,12))..."
Write-Host "TELEGRAM_BOT_TOKEN: $env:TELEGRAM_BOT_TOKEN"
Write-Host "CHAT_ID: $env:CHAT_ID"

# Launch main.py with error handling
if (Test-Path "main.py") {
    Write-Host "`n🚀 Launching main.py..."
    python main.py
} else {
    Write-Host "`n❌ File 'main.py' not found in this directory." -ForegroundColor Red
}
