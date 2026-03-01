# ============================================================
# Frontier Hugo — Download missing Construction Materials images
# Run from project root:  .\download-material-images.ps1
# All images free for commercial use (Pexels license)
# ============================================================

$dest = Join-Path $PSScriptRoot "static\materials"

# Map of filename -> Pexels photo ID
$images = [ordered]@{
    "owsj.jpg"              = 12771407
    "cfs.jpg"               = 5261943
    "metal-decking.jpg"     = 5741296
    "engineered-wood.jpg"   = 8961300
    "cast-in-place.jpg"     = 6018652
    "precast-concrete.jpg"  = 1463917
    "shotcrete.jpg"         = 10202865
    "brick-masonry.jpg"     = 1875997
    "cmu-block.jpg"         = 194096
    "existing-materials.jpg"= 1549256
}

Write-Host ""
Write-Host "=== Frontier Hugo - Material Image Downloader ===" -ForegroundColor Cyan
Write-Host "Destination: $dest"
Write-Host ""

foreach ($file in $images.Keys) {
    $id  = $images[$file]
    # Build URL without ampersands in the outer expression
    $qs  = "auto=compress" + "&" + "cs=tinysrgb" + "&" + "w=1280" + "&" + "h=850" + "&" + "dpr=1"
    $url = "https://images.pexels.com/photos/$id/pexels-photo-$id.jpeg?" + $qs
    $out = Join-Path $dest $file

    if (Test-Path $out) {
        Write-Host "  SKIP  $file (already exists)" -ForegroundColor DarkGray
        continue
    }

    try {
        Write-Host "  GET   $file  (photo $id) ..." -ForegroundColor Yellow -NoNewline
        Invoke-WebRequest -Uri $url -OutFile $out -UseBasicParsing -ErrorAction Stop
        Write-Host "  OK" -ForegroundColor Green
    } catch {
        Write-Host "  FAILED - $($_.Exception.Message)" -ForegroundColor Red
    }
}

Write-Host ""
Write-Host "Done! Now commit and push:" -ForegroundColor Cyan
Write-Host "  git add static/materials/ content/materials/"
Write-Host "  git commit -m 'Add CM images and new material entries'"
Write-Host "  git push"
Write-Host ""
