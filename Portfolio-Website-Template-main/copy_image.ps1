# PowerShell script to copy the generated and uploaded images to assets/images/
# Run this from the root directory of the project: .\copy_image.ps1

Write-Host "Copying images..." -ForegroundColor Cyan

# 1. Profile image (your uploaded photo)
$src_profile = "C:\Users\HP-pc\.gemini\antigravity-ide\brain\4abc736d-5e06-4324-b87b-7d4275a64ee2\media__1780343347005.jpg"
$dest_profile = "d:\Portfolio-Website-Template-main\Portfolio-Website-Template-main\assets\images\ravi_professional.jpg"

# 2. Aether AI Mockup
$src_aether = "C:\Users\HP-pc\.gemini\antigravity-ide\brain\4abc736d-5e06-4324-b87b-7d4275a64ee2\aether_mockup_1780339541226.png"
$dest_aether = "d:\Portfolio-Website-Template-main\Portfolio-Website-Template-main\assets\images\aether_mockup.png"

# 3. E-Commerce Mockup
$src_ecom = "C:\Users\HP-pc\.gemini\antigravity-ide\brain\4abc736d-5e06-4324-b87b-7d4275a64ee2\ecom_mockup_1780339567193.png"
$dest_ecom = "d:\Portfolio-Website-Template-main\Portfolio-Website-Template-main\assets\images\ecom_mockup.png"

if (Test-Path $src_profile) {
    Copy-Item -Path $src_profile -Destination $dest_profile -Force
    Write-Host "Profile image copied successfully to assets/images/ravi_professional.jpg!" -ForegroundColor Green
} else {
    Write-Error "Source profile image not found at $src_profile"
}

if (Test-Path $src_aether) {
    Copy-Item -Path $src_aether -Destination $dest_aether -Force
    Write-Host "Aether AI mockup copied successfully to assets/images/aether_mockup.png!" -ForegroundColor Green
} else {
    Write-Error "Source Aether AI mockup not found at $src_aether"
}

if (Test-Path $src_ecom) {
    Copy-Item -Path $src_ecom -Destination $dest_ecom -Force
    Write-Host "E-Commerce mockup copied successfully to assets/images/ecom_mockup.png!" -ForegroundColor Green
} else {
    Write-Error "Source E-Commerce mockup not found at $src_ecom"
}
