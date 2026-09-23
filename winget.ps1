# PowerShell Core
winget install -e -h --id Microsoft.PowerShell

# Window Terminal
winget install -e -h --id Microsoft.WindowsTerminal

# Git
winget install -e -h --id Git.Git
winget install GitHub.Copilot

# Thunderbird
winget install -e --id Mozilla.Thunderbird

#Spotify
winget install -e --id Spotify.Spotify

# Additional Apps
# Notepad++
winget install -e -h --id Notepad++.Notepad++
# VS Code
winget install -e -h --id Microsoft.VisualStudioCode
# Azure Cli
winget install -e -h --id Microsoft.AzureCLI
# Firefox 
winget install -e -h --id Mozilla.Firefox
# Podman
winget install -e -h --id RedHat.Podman-Desktop
winget install -e -h --id RedHat.Podman
# Burp Suite Community
winget install -e -h --id PortSwigger.BurpSuite.Community
# Terraform
winget install -e -h --id Hashicorp.Terraform
# dotnet 8
winget install -e -h --id Microsoft.DotNet.SDK.8
# NuGet
winget install -e -h --id Microsoft.NuGet
# # Node.js
winget install -e -h --id OpenJS.NodeJS
# Python
winget install -e -h --id Python.Python.3.13
# Docker
winget install -e -h --id Docker.DockerDesktop
winget install -e -h --id Docker.DockerCLI

# Update
winget upgrade all -h
