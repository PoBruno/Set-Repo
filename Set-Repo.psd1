@{
    RootModule = 'Set-Repo-Module.psm1'
    ModuleVersion = '1.0.0'
    GUID = '12345678-90ab-cdef-1234-567890abcdef'
    Author = 'Bruno Gomes'
    Description = 'PowerShell module for quick navigation between repositories.'
    FunctionsToExport = @('set-repo')
    PowerShellVersion = '5.1'
    RequiredModules = @()
    PrivateData = @{
        PSData = @{
            LicenseUri = 'https://opensource.org/licenses/MIT'
            ProjectUri = 'https://github.com/PoBruno/Set-Repo'
        }
    }
}
