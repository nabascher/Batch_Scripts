:: Place in folder with files you want to rename!

color 0a
@echo on 
Setlocal enabledelayedexpansion

Set "Pattern= "
Set "Replace=_"

For %%a in (*.*) Do (
	Set "File=%%~a"
	Ren "%%a" !File:%Pattern%=%Replace%!"
)

Pause&Exit