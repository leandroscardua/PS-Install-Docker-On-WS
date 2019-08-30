#Requires -RunAsAdministrator

# Update the NuGet Module

Write-Host "Updating The Nuget Package Management"

Install-PackageProvider -Name NuGet -Force | Out-Null

# Install the Windows Feature Containers on the Server

Write-Host "Installing Windows Containers Feature"

Install-WindowsFeature -Name Containers | Out-Null

# Install the Docker Engine Enterprise on the Server

Write-Host "Installing Docker Engine Enterprise"

Install-Module -Name DockerMsftProvider -Repository PSGallery -Force | Out-Null

# Install the client interface to manage the Docker Engine Enterprise

Write-Host "Installing Interface de Gerenciamento of the Docker"

Install-Package -Name docker -ProviderName DockerMsftProvider -Force | Out-Null

# A reboot is required to complete the Docker Installation 

pause

Write-Host "The server will reboot in 10 Seconds"

Restart-Computer
