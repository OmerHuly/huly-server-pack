$zipFile = ".\huly-server-pack.zip"
$compress = @{
LiteralPath = ".\pack.mcmeta", ".\pack.png", ".\assets"
DestinationPath = $zipFile
}
Compress-Archive @compress -Update
$FileHash = (Get-FileHash -Algorithm SHA1 $zipFile).Hash.toLower()
Write-Output $FileHash
