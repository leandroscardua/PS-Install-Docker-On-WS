# Atualizar o NuGet para poder baixar a ultima versao do Docker.
Install-PackageProvider -Name NuGet -Force

# Install the Windows Feature Containers on the Server
Install-WindowsFeature -Name Containers

# Install the Docker Engine Enterprise on the Server
Install-Module -Name DockerMsftProvider -Repository PSGallery -Force

# Install a client interface to manage the Docker Engine Enterprise
Install-Package -Name docker -ProviderName DockerMsftProvider


# A reboot is required to complete the Docker Installation 
Restart-Computer -Force
