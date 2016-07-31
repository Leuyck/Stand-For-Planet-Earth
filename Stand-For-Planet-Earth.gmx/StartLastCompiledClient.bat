@echo off

set winFile=Stand-For-Planet-Earth
set runner=%appdata%\GameMaker-Studio\Runner.exe

pushd %appdata%\..\Local

FOR /f %%F IN ('dir /s /b %winFile%.win') DO (
	echo * Start the gamemaker studio runner '%runner%' with the WIN file '%%F'.
	start "" "%runner%" -game "%%F"
	goto end
)

:end
popd
echo * Done.