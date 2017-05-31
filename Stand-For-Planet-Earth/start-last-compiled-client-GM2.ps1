$winFile = "Stand-For-Planet-Earth.win"
$gameStudioRunner = "$env:C:\ProgramData\GameMakerStudio2\Cache\runtimes\runtime-2.0.6.96\windows\Runner.exe"
$paths = @(Get-ChildItem -Path "$env:APPDATA\..\Local\GameMakerStudio2\" Stand-For-Planet-Earth* | select -expand FullName);
$files = New-Object string[] 0

if($paths.Length -gt 0) {
    Write-Output "* Searching the most recent $winfile ...";
    $files = @(Get-ChildItem -Path $paths $winfile -File -Recurse | Sort-Object -Property LastWriteTime | Select-Object -last 1);
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