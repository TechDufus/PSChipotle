#Region New-ChipotleSession

<#
.SYNOPSIS

.DESCRIPTION

.NOTES
    Author: matthewjdegarmo
    GitHub: https://github.com/matthewjdegarmo
    See The F5-LTM session for guidance. I like how they handle the scoping of the session.
    https://github.com/joel74/POSH-LTM-Rest/blob/master/F5-LTM/Public/New-F5Session.ps1
    [Microsoft.PowerShell.Commands.WebRequestSession]
#>
Function New-ChipotleSession() {
    [CmdletBinding()]
    Param()

    Begin {}

    Process {
        Try {

        } Catch {
            Throw $_
        }
    }

    End {}
}
#EndRegion New-ChipotleSession