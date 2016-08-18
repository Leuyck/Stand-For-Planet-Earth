
$winFile = "Stand-For-Planet-Earth.win"
$gameStudioRunner = "$env:APPDATA\GameMaker-Studio\Runner.exe"

Write-Output "* Searching the most recent $winfile ..."

$files = @(Get-ChildItem -Path "$env:APPDATA\..\Local\" $winFile -File -Recurse | Sort-Object -Property LastWriteTime | Select-Object -last 1)

if ($files.Length -gt 0) {
    Write-Output "* $winFile has been found here : $($files[0].FullName), date : $($files[0].LastWriteTime)";
    Write-Output "* Starting the game with game marker studio ...";
    Start-Process "$gameStudioRunner" " -game `"$($files[0].FullName)`""
}
else {
    Write-Output "* No file found.";
}