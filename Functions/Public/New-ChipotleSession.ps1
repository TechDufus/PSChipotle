#Region New-ChipotleSession

<#
.SYNOPSIS

.DESCRIPTION
.PARAMETER Credential
.PARAMETER Session
.PARAMETER DefaultHeaders
.EXAMPLE
    Some Syntax Here
.NOTES
    Author: matthewjdegarmo
    GitHub: https://github.com/matthewjdegarmo
    See The F5-LTM session for guidance. I like how they handle the scoping of the session.
    https://github.com/joel74/POSH-LTM-Rest/blob/master/F5-LTM/Public/New-F5Session.ps1
    [Microsoft.PowerShell.Commands.WebRequestSession]
#>
Function New-ChipotleSession() {
    [CmdletBinding()]
    Param(
        [PSCredential] $Credential = (New-Object System.Management.Automation.PSCredential ('matthew', $('SomePassword!' | ConvertTo-SecureString -AsPlainText))),

        $Session = '84c9fd56-99a7-452a-bc27-3dd66f60b7e8',

        [System.Object] $DefaultHeaders = @{
            'Content-Type' = 'application/JSON'
        }
    )

    Begin {}

    Process {
        Try {

            Return [ChipotleSession]@{
                Credential = $Credential
                Session = $Session
                DefaultHeaders = $DefaultHeaders
            }
        } Catch {
            Throw $_
        }
    }

    End {}
}
#EndRegion New-ChipotleSession