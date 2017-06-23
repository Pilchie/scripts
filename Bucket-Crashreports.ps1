# Bucket-Crashreports.ps1
# -----------------------------------
# Assumes you run Get-Crashreports.ps1 and redirected the output to [Environment]::GetFolderPath("MyDocuments")\VS2017-EventLog-WER.txt”
# -----------------------------------
$MyDocsDir = [Environment]::GetFolderPath("MyDocuments")
Get-Content "$MyDocsDir\VS2017-EventLog-WER.txt" | Foreach {if ($_ -match 'Fault bucket\s+(.*)') {$matches[1] }} | Group -NoElement | Sort Count –desc
