@{
    # ID do módulo
    RootModule = 'Set-Repo-Module.psm1'

    # Versão do módulo
    ModuleVersion = '1.0.0.0'

    # Nome do módulo
    GUID = '12345678-90ab-cdef-1234-567890abcdef'

    # Autor do módulo
    Author = 'Seu Nome'

    # Descrição do módulo
    Description = 'PowerShell module for quick navigation between repositories.'

    # Visibilidade das funções e variáveis
    FunctionsToExport = @('set-repo')
    VariablesToExport = @()
    AliasesToExport = @()
    CmdletsToExport = @()

    # Dependências do módulo
    RequiredModules = @()
    RequiredAssemblies = @()

    # Informações sobre o arquivo de licença
    LicenseUri = 'https://opensource.org/licenses/MIT'

    # Informações sobre o arquivo de projeto
    ProjectUri = 'https://github.com/PoBruno/Set-Repo'

    # Informações sobre o arquivo de ícone
    IconUri = ''

    # Copyright
    Copyright = '(c) 2024 Seu Nome. All rights reserved.'

    # Tags do módulo
    Tags = @('PowerShell', 'Repository', 'Navigation')

    # Informações de pré-requisito
    ExternalModuleDependencies = @()
    ExternalScriptDependencies = @()
    ExternalReferenceDependencies = @()

    # Informações sobre o script de instalação
    ScriptsToProcess = @()
    TypesToProcess = @()
    FormatsToProcess = @()
    AssembliesToProcess = @()

    # Informações adicionais
    PrivateData = @{
        PSData = @{
            Tags = @('PowerShell', 'Repository', 'Navigation')
            LicenseUri = 'https://opensource.org/licenses/MIT'
            ProjectUri = 'https://github.com/PoBruno/Set-Repo'
            IconUri = ''
            ReleaseNotes = 'Initial release of the Set-Repo module.'
        }
    }
}
