# Atualizar o NuGet para poder baixar a ultima versao do Docker.
Install-PackageProvider -Name NuGet -Force

# Instalar a Função de Container requerimento necessário para usar o Docker
Install-WindowsFeature -Name Containers

# Instalar o Docker Engine Enterprise no Servidor
Install-Module -Name DockerMsftProvider -Repository PSGallery -Force

# Instalar a interface cliente para gerenciar o Docker Engine Enterprise
Install-Package -Name docker -ProviderName DockerMsftProvider

# Uma reinicialização é requerida, devido a instalação do Windows Feature Containers e alterações pertinentes no sistema.
Restart-Computer -Force
