# SteamCMD: Windows Core Edition

[![Build Status](https://travis-ci.com/yamlCase/docker-steamcmd-wincore.svg?branch=master)](https://travis-ci.com/yamlCase/docker-steamcmd-wincore)[![GitHub issues](https://img.shields.io/github/issues/yamlCase/docker-steamcmd-wincore.svg)](https://github.com/yamlCase/docker-steamcmd-wincore/issues)

PixPan Studios presents the SteamCMD Docker image for Windows Core.  This is designed for Dedicated Game Servers that require legacy .NET or a Windows environment to run properly.

# Usage
This Docker Image is designed to be a minimal reference image for other Docker Images to create a Windows Dedicated Game Server.  In your Dockerfile, reference this project for FROM:

 ```
 FROM pixpan/steamcmd-wincore
 ```
 
 The project [pixpan/space-engineers](https://hub.docker.com/r/pixpan/space-engineers/) is a good reference for usage.

# Structure
This image adds the following components to an otherwise vanilla [microsoft/windowsservercore:1803](https://hub.docker.com/r/microsoft/windowsservercore/) image.

## Chocolatey
[Chocolatey](https://chocolatey.org) is *the* package manager for Windows.

## SteamCMD
Chocolatey is used to install [SteamCMD](https://developer.valvesoftware.com/wiki/SteamCMD) from the [Chocolatey SteamCMD](https://chocolatey.org/packages/steamcmd) Package.

Since this is an image used to create other images, there are no applicable volume or port mappings.


# Automated Build
This automated build is done on Travis-CI as it is (currently) the only free-to-use Open Source platform that supports Windows build machines.  If you wish to fork this project, be sure to create `$docker_username` and `$docker_password` to Travis as secret environment variables.