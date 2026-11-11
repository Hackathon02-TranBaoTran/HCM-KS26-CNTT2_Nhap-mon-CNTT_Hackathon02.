# Script: tong_hop.ps1
# Tac gia: Trần Bảo Trân
# Ngay tao: 11/11/2026
Write-Host "Dang tao bao cao"
"=== BAO CAO SU CO WEBSITE ===">logs\service.log
Get-Content logs\service.log | Select-String "status=500" >> logs\loi_500.txt
Get-Content logs\service.log | Select-String "status="404" | Measure-Object >> Count
Write-Host "Hoan thanh!"