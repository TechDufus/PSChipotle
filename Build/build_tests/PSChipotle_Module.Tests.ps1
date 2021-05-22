BeforeDiscovery {
    $ThisRoot = Split-Path $PSScriptRoot -Parent
    #Requires -Modules @{ModuleName="Pester";ModuleVersion="5.1.0"}
    Remove-Module PSChipotle -ErrorAction SilentlyContinue
    Import-Module (Join-Path $ThisRoot 'PSChipotle.psd1') -Force
}
Describe "PSChipotle Module" {
    BeforeAll {
        $ThisRoot = Split-Path $PSScriptRoot -Parent
    }
    Context 'Module' {
        It "Imports Successfully" {
            Get-Module PSChipotle | Should -Not -BeNullOrEmpty
        }
    }
    Context 'Functions' {
        # It 'All: should import successfully' {
        #     $PublicImportedCommands = (Get-Command -Module PSChipotle).Name
        #     $FunctionRegex = '^Function .+?.(?=\()'
        #     $AllFunctions = ((Get-Content (Join-Path $script:ThisRoot 'PSChipotle.psm1') | Select-String -Pattern $FunctionRegex).Matches.value | Foreach-Object {@($_ -Split ' ')[1]}) | Sort-Object
        #     $PrivateFunctions = (Compare-Object $PublicImportedCommands $AllFunctions).InputObject

        #     ($PublicImportedCommands + $PrivateFunctions | Sort-Object) | Should -Be $AllFunctions
        # }

        It "Should be valid PowerShell code" {
            $FileContent = Get-Content (Join-Path $ThisRoot 'PSChipotle.psm1')
            $Errors = $null
            $null = [System.Management.Automation.PSParser]::Tokenize($FileContent, [ref]$errors)
            $errors.Count | Should -be 0
        }
    }
}