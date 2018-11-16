FROM microsoft/windowsservercore:1803

MAINTAINER yamlcase (at) pixpan.com

# Make Chocolately installation/use compatible with docker for windows https://github.com/chocolatey/choco/issues/1055
ENV chocolateyUseWindowsCompression false

# Install package manager
RUN powershell -Command \
    iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1')); \
    choco feature disable --name showDownloadProgress

# Install SteamCMD
RUN choco install -y steamcmd

# Run Steamcmd for the first time to update itself.
RUN powershell $(steamcmd.exe +login anonymous +quit; powershell exit 0)
