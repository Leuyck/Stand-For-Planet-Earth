$winFile = "Stand-For-Planet-Earth.win"
$gameStudioRunner = "$env:APPDATA\GameMaker-Studio\Runner.exe"
$gmttt = @(Get-ChildItem -Path "$env:APPDATA\..\Local\" gm_ttt_*);
$files = New-Object string[] 0

if($gmttt.Length -gt 0) {
    Write-Output "* Searching the most recent $winfile ...";
    $files = @(Get-ChildItem -Path "$env:APPDATA\..\Local\$($gmttt[0])\" $winfile -File -Recurse | Sort-Object -Property LastWriteTime | Select-Object -last 1);
}

if ($files.Length -gt 0) {
    Write-Output "* $winFile has been found here : $($files[0].FullName), date : $($files[0].LastWriteTime)";
    $count = Read-Host "How many instance of $winFile do you want to start ?"
    Write-Output "* Starting $count instances of the game with game marker studio ...";

    for ($i=1; $i -le $count; $i++) {
        Start-Process "$gameStudioRunner" " -game `"$($files[0].FullName)`""
    }
}
else {
    Write-Output "* File not found.";
}