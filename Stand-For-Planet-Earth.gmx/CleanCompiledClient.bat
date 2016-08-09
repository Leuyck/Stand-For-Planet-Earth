@echo off

set winFile=Stand-For-Planet-Earth

pushd %appdata%\..\Local

FOR /f %%F IN ('dir /s /b %winFile%.win') DO (
	echo Suppression de %%F.
	del "%%F"
)

popd
echo * Done.