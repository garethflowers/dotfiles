:: install chocolatey
@powershell -NoProfile -ExecutionPolicy unrestricted -Command "(iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))) >$null 2>&1" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin
choco feature enable -n allowGlobalConfirmation

:: general apps
choco install 7zip
choco install googlechrome
choco install filezilla
choco install atom
choco install putty

:: dev apps
choco install tortoisesvn
choco install visualstudio2012professional
choco install ankhsvn
choco install wixtoolset
choco install ilspy
choco install dotnet4.5
choco install dotnet3.5
choco install dotnet4.6
