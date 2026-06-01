# PowerShell script to restructure the project by moving directories under assets/
# Run this from the root directory of the project: .\move_to_assets.ps1

Write-Host "Creating assets/ directory..." -ForegroundColor Cyan
New-Item -ItemType Directory -Path "assets" -Force -ErrorAction SilentlyContinue

Write-Host "Moving css, fonts, images, and js directories to assets/..." -ForegroundColor Yellow
Move-Item -Path "css", "fonts", "images", "js" -Destination "assets" -Force -ErrorAction SilentlyContinue

Write-Host "Cleaning up obsolete clean_project.ps1 script..." -ForegroundColor Yellow
Remove-Item -Path "clean_project.ps1" -Force -ErrorAction SilentlyContinue

Write-Host "Assets folder restructure completed successfully!" -ForegroundColor Green
