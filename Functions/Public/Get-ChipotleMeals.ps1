#Region Get-ChipotleMeals

<#
.SYNOPSIS

.DESCRIPTION

.EXAMPLE
    Some Syntax Here
.NOTES
    Author: matthewjdegarmo
    GitHub: https://github.com/matthewjdegarmo
    API IRU: https://lt-services.chipotle.com/menuinnovation/v1/restaurants/{restaurantId}/onlinemeals[?channelId][&includeUnavailableItems]
.LINK
    https://lt-servicesportal.chipotle.com/docs/services/3a753a58f40945adb56ce4b621b9d6f6/operations/GetOnlineMealsByRestaurantId
#>
Function Get-ChipotleMeals() {
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
#EndRegion Get-ChipotleMeals