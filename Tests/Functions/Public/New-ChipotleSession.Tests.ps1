BeforeDiscovery {
    $ModuleRoot =   Split-Path (
                        Split-Path (
                            Split-Path $PSScriptRoot -Parent
                        ) -Parent
                    ) -Parent
    Remove-Module PSChipotle -Force -ErrorAction SilentlyContinue
    Import-Module $ModuleRoot -Force
}

Describe "Function Tests: New-ChipotleSession" {
    Context "Output" {
        It "Should return BaseType: [System.Object]" {
            (New-ChipotleSession) | Should -BeOfType System.Object
        }
        It "Should return type name: [ChipotleSession]" {
            (New-ChipotleSession).GetType().Name | Should -Be 'ChipotleSession'
        }
        It "Assignes Credential Properly" {
            $Credential = New-Object System.Management.Automation.PSCredential ('Test_User', $('Test_Password!' | ConvertTo-SecureString -AsPlainText))
            $Session = New-ChipotleSession -Credential $Credential
            $Session.Credential | Should -Be $Credential
            $Session.Credential.Username | Should -Be $Credential.Username
            $Session.Credential.GetNetworkCredential() | Should -Be $Credential.GetNetworkCredential()
            $Session.Credential.GetNetworkCredential().Password | Should -Be $Credential.GetNetworkCredential().Password
        }
        It "Assignes Session Properly" {
            $SessionGuid = (New-Guid).guid
            $Session = New-ChipotleSession -Session $SessionGuid
            $Session.Session | Should -Be $SessionGuid
        }
        It "Assignes DefaultHeaders Properly" {
            $DefaultHeaders = New-Guid | ConvertTo-Json
            $Session = New-ChipotleSession -DefaultHeaders $DefaultHeaders
            $Session.DefaultHeaders | Should -Be $DefaultHeaders
        }
    }
}