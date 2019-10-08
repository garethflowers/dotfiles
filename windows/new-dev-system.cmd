@echo off

:: install chocolatey
@powershell -NoProfile -ExecutionPolicy unrestricted -Command "(iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))) >$null 2>&1" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin
choco feature enable -n allowGlobalConfirmation
choco feature enable -n allowEmptyChecksums
choco upgrade chocolatey

:: general apps
choco upgrade googlechrome

:: graphics/diagramming
choco upgrade dia
choco upgrade gimp
choco upgrade inkscape
choco upgrade paint.net
choco upgrade pencil -pre

:: media
choco upgrade vlc

:: remote/networking
choco upgrade filezilla
choco upgrade putty.install
choco upgrade teamviewer
choco upgrade tightvnc
choco upgrade transmission-qt

::utils
choco upgrade autoruns
choco upgrade procexp
choco upgrade procmon

:: command line tools
choco upgrade curl
choco upgrade optipng
choco upgrade rsync
choco upgrade sdelete
choco upgrade unzip
choco upgrade wget
choco upgrade wput
choco upgrade zip

:: fonts
choco upgrade inconsolata

:: dev apps
choco upgrade visualstudiocode
choco upgrade postman

:: vcs
choco upgrade git -params '"/GitAndUnixToolsOnPath /NoAutoCrlf /NoShellIntegration /WindowsTerminal"'
choco upgrade github
choco upgrade gitkraken
choco upgrade ankhsvn
choco upgrade tortoisesvn

:: dotnet development
choco upgrade visualstudio2012professional -packageParameters "/Features:'OfficeTools WebTools'"
choco upgrade depends
choco upgrade ilmerge
choco upgrade ilspy
choco upgrade nuget.vs
choco upgrade wixtoolset
choco upgrade dotnet4.6.1
choco upgrade dotnet4.6
choco upgrade dotnet4.5.2
choco upgrade dotnet4.5.1
choco upgrade dotnet4.5
choco upgrade dotnet3.5
choco upgrade netfx-4.6.1-devpack
choco upgrade netfx-4.6-devpack
choco upgrade netfx-4.5.2-devpack
choco upgrade netfx-4.5.1-devpack
choco upgrade netfx-4.0.3-devpack

:: android development
choco upgrade javaruntime
choco upgrade jdk
choco upgrade android-sdk
choco upgrade androidstudio
