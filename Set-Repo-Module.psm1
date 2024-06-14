<#
.SYNOPSIS
    Navega para diferentes diretórios de repositórios com base em parâmetros fornecidos em um arquivo de configuração XML.

.DESCRIPTION
    A função `set-repo` permite que você navegue rapidamente para diferentes diretórios de repositórios
    usando parâmetros definidos em um arquivo de configuração XML. Suporta navegação para repositórios locais, remotos e específicos da empresa.

.PARAMETER Parametro
    Parâmetro para navegação. Os valores possíveis são definidos no arquivo de configuração XML.

.PARAMETER Subfolder
    Especifica uma subpasta dentro do diretório de repositórios quando aplicável.

.EXAMPLE
    set-repo -Parametro domo -Subfolder "FOLDER1"
    Navega para a subpasta "FOLDER1" dentro do diretório de projetos da empresa Domo.

.EXAMPLE
    set-repo -Parametro pobruno
    Navega para o repositório de Bruno no GitHub.

.NOTES
    Esta função é útil para desenvolvedores e técnicos de TI que frequentemente navegam entre diferentes diretórios de repositórios.
#>

function set-repo {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory=$true)]
        [string]$Parametro,
        [string]$Subfolder = ""
    )

    # Caminho para o arquivo de configuração XML
    $configPath = Join-Path -Path (Split-Path -Parent $MyInvocation.MyCommand.Path) -ChildPath "RepoConfig.xml"

    # Carregar configuração XML
    [xml]$config = Get-Content -Path $configPath

    # Encontrar e aplicar a configuração correspondente
    $repoConfig = $config.Configuration.Repo | Where-Object { $_.Parametro -eq $Parametro }

    if ($repoConfig -ne $null) {
        # Função auxiliar para navegar para um diretório
        function Navigate($baseFolder, $subfolderSearch) {
            if ($subfolderSearch -and $Subfolder) {
                $path = Join-Path -Path $baseFolder -ChildPath $Subfolder
            } else {
                $path = $baseFolder
            }

            if (Test-Path $path) {
                Set-Location $path
            } else {
                Write-Warning "Caminho '$path' não encontrado."
            }
        }

        Navigate -baseFolder $repoConfig.Folder -subfolderSearch ([bool]::Parse($repoConfig.SubfolderSearch))
    } else {
        Write-Warning "Configuração para '$Parametro' não encontrada no arquivo de configuração."
    }
}

Export-ModuleMember -Function set-repo
