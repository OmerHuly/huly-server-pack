$zipFile = ".\huly-server-pack.zip"
$7zipPath = "E:\7Zip\7z.exe"

if (-not (Test-Path -Path $7zipPath -PathType Leaf)) {
    throw "7 zip file '$7zipPath' not found"
}

Set-Alias Start-SevenZip $7zipPath

$Source = "c:\BackupFrom\backMeUp.txt"

Start-SevenZip a -mx=9 "$zipFile" "assets" "pack.mcmeta" "pack.png"

$FileHash = (Get-FileHash -Algorithm SHA1 $zipFile).Hash.toLower()
Write-Output $FileHash
