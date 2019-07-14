#Requires -RunAsAdministrator
# Update the NuGet Module
Write-Host "Atualizando o Gerenciador de Pacotes Nuget"
Install-PackageProvider -Name NuGet -Force

# Install the Windows Feature Containers on the Server
Write-Host "Installing Windows Containers Feature"
Install-WindowsFeature -Name Containers

# Install the Docker Engine Enterprise on the Server
Write-Host "Installing Docker Engine Enterprise"
Install-Module -Name DockerMsftProvider -Repository PSGallery -Force

# Install the client interface to manage the Docker Engine Enterprise
Write-Host "Installing Interface de Gerenciamento of the Docker"
Install-Package -Name docker -ProviderName DockerMsftProvider

# A reboot is required to complete the Docker Installation 
Write-Host "The server will reboot in 10 Seconds"
Restart-Computer -Delay 10 -Force
