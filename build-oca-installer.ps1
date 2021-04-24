
$srcDir = "opsi-client-agent"
$dstFile = "opsi-client-agent-installer.exe"
if ($args.length -gt 0) {
	$srcDir = $args[0]
}
if ($args.length -gt 1) {
	$dstFile = $args[1]
}

$temp = [System.IO.Path]::GetTempPath()
$workDir = $temp + "\build-oca-installer"

if (Test-Path $workDir) {
	Remove-Item -Recurse -Force $workDir
}
New-Item -Path $workDir -Type directory

Write-Host "Copy oca files..."
Copy-Item -Path $srcDir -Destination $workDir -Recurse

Write-Host "Download 7zip..."
$WebClient = New-Object System.Net.WebClient
$WebClient.DownloadFile("https://7-zip.org/a/7z2101.exe", $workDir + "\7z-installer.exe")
$WebClient.DownloadFile("https://7-zip.org/a/7z920_extra.7z", $workDir + "\7z-extra.7z")

Write-Host "Install 7zip..."
Start-Process "$workDir\7z-installer.exe" -ArgumentList "/D=$workDir\7zip","/S" -Wait
Start-Process "$workDir\7zip\7z.exe" -ArgumentList "x","$workDir\7z-extra.7z","-aos","-o$workDir\7zip" -Wait

Write-Host "Create self extracting archive..."
Start-Process "$workDir\7zip\7z.exe" -ArgumentList "a","$workDir\oca.7z","$workDir\opsi-client-agent" -Wait
# "BeginPrompt=`"Start opsi client agent installation?`"`n"
$config=(
";!@Install@!UTF-8!`n" +
"Title=`"opsi-client-agent`"`n" +
"RunProgram=`"opsi-client-agent\oca-installation-helper.exe`"`n" +
";!@InstallEnd@!`n"
)
$Utf8NoBomEncoding = New-Object System.Text.UTF8Encoding $False
[System.IO.File]::WriteAllLines("$workDir\config.txt", $config, $Utf8NoBomEncoding)

cmd.exe /c copy /b "$workDir\7zip\7zS.sfx"+"$workDir\config.txt"+"$workDir\oca.7z" "$dstFile"
