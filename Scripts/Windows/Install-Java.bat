@echo off

::--------------------------------------------------
:: Install Java
:: 
:: File Name    : Install-Java.bat
:: Author       : Justin Chapdelaine (@email)
:: Updated      : 2020-02-11
:: 
:: Script posted at:
:: https://github.com/justinchapdelaine/it-resources
::--------------------------------------------------

:: Variables
set "folder=C:\STS\Programs\"
set "file=Java.exe"
set "url=https://javadl.oracle.com/webapps/download/AutoDL?BundleId=241533_1f5b5a70bf22433b84d0e960903adac8"
set "flags= /s"


:: Create %folder%
if not exist %folder% ( mkdir %folder% && echo %folder% created)

:: Download %file% from %url% to %folder%
echo 1. Downloading %file%
PowerShell -NoProfile -Command "(New-Object Net.WebClient).DownloadFile('%url%', '%folder%%file%')"

:: Start %file%
echo 2. Starting %file%
start %folder%%file%%flags%

:: Close window in 5 seconds
timeout /t 5