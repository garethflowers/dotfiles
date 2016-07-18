@echo off

:: install chocolatey
@powershell -NoProfile -ExecutionPolicy unrestricted -Command "(iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))) >$null 2>&1" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin
choco feature enable -n allowGlobalConfirmation

:: general apps
choco upgrade chocolatey
choco upgrade 7zip 7zip.commandline adobereader gimp javaruntime paint.net pencil slack vlc
choco upgrade filezilla putty
choco upgrade autoruns procexp procmon sdelete
choco upgrade curl optipng rsync unzip wget wput zip
choco upgrade inconsolata

:: dev apps
choco upgrade pgadmin3
choco upgrade ankhsvn git gitkraken tortoisesvn
choco upgrade atom visualstudiocode
choco upgrade visualstudio2012professional -packageParameters "/Features:'OfficeTools'"
choco upgrade depends ilmerge ilspy wixtoolset
choco upgrade dotnet4.6 dotnet4.5.2 dotnet4.5.1 dotnet4.5 dotnet3.5
