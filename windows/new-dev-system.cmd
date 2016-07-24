@echo off

:: install chocolatey
@powershell -NoProfile -ExecutionPolicy unrestricted -Command "(iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))) >$null 2>&1" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin
choco feature enable -n allowGlobalConfirmation
choco upgrade chocolatey

:: general apps
choco upgrade 7zip 7zip.commandline adobereader gimp googlechrome inkscape javaruntime jdk paint.net pencil slack vlc

:: remote
choco upgrade filezilla putty tightvnc

::utils
choco upgrade autoruns procexp procmon sdelete grepwin

:: command line tools
choco upgrade curl optipng rsync unzip wget wput zip

:: fonts
choco upgrade inconsolata

:: dev apps
choco upgrade pgadmin3
choco upgrade atom visualstudiocode

:: vcs
choco upgrade ankhsvn git gitkraken
choco upgrade tortoisesvn --version 1.9.2

:: dotnet development
choco upgrade visualstudio2012professional -packageParameters "/Features:'OfficeTools WebTools'"
choco upgrade depends ilmerge ilspy wixtoolset
choco upgrade dotnet4.6.1 dotnet4.6 dotnet4.5.2 dotnet4.5.1 dotnet4.5 dotnet3.5
choco upgrade netfx-4.6.1-devpack netfx-4.6-devpack netfx-4.5.2-devpack netfx-4.5.1-devpack netfx-4.0.3-devpack


:: android development
choco upgrade android-sdk androidstudio
