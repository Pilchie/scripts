# Get-Crashreports.ps1
# -----------------------------------
Get-EventLog -LogName Application -Source 'Windows Error Reporting' | Where Message –match 'P1:\s+(devenv|vshub|ScriptedSandbox64|VsDebug|XDesProc)' | Format-List
