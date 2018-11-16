# SteamCMD: Windows Core Edition

[![Build Status](https://travis-ci.com/yamlCase/docker-steamcmd-wincore.svg?branch=master)](https://travis-ci.com/yamlCase/docker-steamcmd-wincore)
[![GitHub issues](https://img.shields.io/github/issues/yamlCase/docker-steamcmd-wincore.svg)](https://github.com/yamlCase/docker-steamcmd-wincore/issues)

PixPan Studios presents the SteamCMD Docker image for Windows Core.  This is designed for Dedicated Game Servers that require legacy .NET or Windows environment to run properly.

## Usage
This Docker Image is designed to be a minimal reference image for other Docker Images.  Just add "FROM pixpan/steamcmd-wincore" in your DockerFile when creating a Windows Dedicated Game Server.  The project [pixpan/space-engineers] is a good reference for usage.