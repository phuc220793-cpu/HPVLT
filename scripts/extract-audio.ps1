param(
  [string]$InputVideo = "assets/valentine.mp4",
  [string]$OutputAudio = "assets/song.m4a"
)

$ErrorActionPreference = "Stop"

if (-not (Get-Command ffmpeg -ErrorAction SilentlyContinue)) {
  Write-Host "ffmpeg not found in PATH." -ForegroundColor Red
  Write-Host "Install it with: winget install Gyan.FFmpeg" -ForegroundColor Yellow
  exit 1
}

if (-not (Test-Path $InputVideo)) {
  Write-Host "Input video not found: $InputVideo" -ForegroundColor Red
  exit 1
}

$outDir = Split-Path -Parent $OutputAudio
if ($outDir -and -not (Test-Path $outDir)) {
  New-Item -ItemType Directory -Path $outDir | Out-Null
}

# Extract audio only (-vn). Use AAC in an M4A container for good size/quality.
ffmpeg -y -i $InputVideo -vn -c:a aac -b:a 192k $OutputAudio

Write-Host "Done: $OutputAudio" -ForegroundColor Green
