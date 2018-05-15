git branch --merged | Where-Object { $_ -notmatch "^\*|master|dev15\.*" } | Foreach-Object { git branch -d $_.Trim() }
