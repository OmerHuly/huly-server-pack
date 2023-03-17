$FileHash = (Get-FileHash -Algorithm SHA1 .\huly-server-pack.zip).Hash.toLower()
Write-Output $FileHash
