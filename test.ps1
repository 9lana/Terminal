# Save as: Educational_Malware_Simulator.ps1
# This is COMPLETELY HARMLESS - for learning purposes only

Write-Host "=== EDUCATIONAL MALWARE SIMULATOR ===" -ForegroundColor Cyan
Write-Host "Created for security education - No harmful actions!" -ForegroundColor Green
Write-Host ""

# 1. Show script is running
Write-Host "[1. VERIFICATION]" -ForegroundColor Yellow
Write-Host "Script Location: $PSCommandPath" -ForegroundColor Gray
Write-Host "Running as: $env:USERNAME on $env:COMPUTERNAME" -ForegroundColor Gray
Write-Host "Process ID: $PID" -ForegroundColor Gray
Start-Sleep -Seconds 1

# 2. Simulate reconnaissance
Write-Host "`n[2. SIMULATED RECONNAISSANCE]" -ForegroundColor Yellow
Write-Host "If this were real malware, it would:" -ForegroundColor Gray
Write-Host "- Gather system information" -ForegroundColor Gray
Write-Host "- Check for antivirus software" -ForegroundColor Gray
Write-Host "- Look for valuable files" -ForegroundColor Gray

# Harmless system check
$os = (Get-CimInstance Win32_OperatingSystem).Caption
Write-Host "`nYour system (read-only): $os" -ForegroundColor Gray

# 3. Simulate persistence mechanisms
Write-Host "`n[3. SIMULATED PERSISTENCE]" -ForegroundColor Yellow
Write-Host "Real malware would add:" -ForegroundColor Gray
Write-Host "- Registry Run keys" -ForegroundColor Gray
Write-Host "- Scheduled tasks" -ForegroundColor Gray
Write-Host "- Startup folder entries" -ForegroundColor Gray

Write-Host "`n[ACTUAL ACTION: Creating harmless test file]" -ForegroundColor Green
$testFile = "$env:TEMP\educational_test_$(Get-Date -Format 'yyyyMMdd_HHmmss').txt"
"Educational test file created at $(Get-Date)" | Out-File $testFile
Write-Host "Created: $testFile" -ForegroundColor Gray

# 4. Simulate payload delivery
Write-Host "`n[4. SIMULATED PAYLOAD DELIVERY]" -ForegroundColor Yellow
Write-Host "Simulating different malware types:" -ForegroundColor Gray

Write-Host "`na) Information Stealer (SIMULATED)" -ForegroundColor Cyan
Write-Host "   Would steal: Passwords, cookies, files" -ForegroundColor Gray
Write-Host "   Actual: Listing browser processes (view only)" -ForegroundColor Gray
Get-Process | Where-Object {$_.Name -match "chrome|firefox|edge"} | Select-Object Name, Id -First 3 | Format-Table

Write-Host "`nb) Ransomware (SIMULATED)" -ForegroundColor Cyan
Write-Host "   Would: Encrypt files and demand ransom" -ForegroundColor Gray
Write-Host "   Actual: Counting files (no encryption)" -ForegroundColor Gray
$docCount = (Get-ChildItem "$env:USERPROFILE\Documents" -File -ErrorAction SilentlyContinue | Measure-Object).Count
Write-Host "   Found $docCount files in Documents (NOT ENCRYPTED)" -ForegroundColor Gray

Write-Host "`nc) Keylogger (SIMULATED)" -ForegroundColor Cyan
Write-Host "   Would: Record all keystrokes" -ForegroundColor Gray
Write-Host "   Actual: No keys are being logged" -ForegroundColor Green

# 5. Create harmless log file
Write-Host "`n[5. CREATING EDUCATIONAL LOG]" -ForegroundColor Yellow
$logFile = "$env:USERPROFILE\Desktop\Security_Education_Log.txt"
@"
=== SECURITY EDUCATION LOG ===
Date: $(Get-Date)
User: $env:USERNAME
Computer: $env:COMPUTERNAME

This simulation demonstrated:
1. How malware gathers information
2. How malware establishes persistence
3. Different types of malware payloads

ACTIONS TAKEN:
- Created harmless test file: $testFile
- Listed browser processes (view only)
- Counted files (no modification)
- Created this educational log

NO MALICIOUS ACTIVITY OCCURRED!

Files created (safe to delete):
1. $testFile
2. $logFile

=== END OF SIMULATION ===
"@ | Out-File $logFile

Write-Host "Created educational log: $logFile" -ForegroundColor Green

# 6. Summary
Write-Host "`n" + ("="*50) -ForegroundColor Cyan
Write-Host "SIMULATION COMPLETE!" -ForegroundColor Green
Write-Host "="*50 -ForegroundColor Cyan
Write-Host ""
Write-Host "What you learned:" -ForegroundColor Yellow
Write-Host "✓ How malware scripts execute" -ForegroundColor Gray
Write-Host "✓ Common malware behaviors" -ForegroundColor Gray
Write-Host "✓ Importance of script monitoring" -ForegroundColor Gray
Write-Host ""
Write-Host "To delete created files:" -ForegroundColor Yellow
Write-Host "Remove-Item '$testFile'" -ForegroundColor Gray
Write-Host "Remove-Item '$logFile'" -ForegroundColor Gray
Write-Host ""
Write-Host "=== SAFE FOR EDUCATIONAL USE ===" -ForegroundColor Green