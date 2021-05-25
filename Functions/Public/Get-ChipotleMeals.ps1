#Region Get-ChipotleMeals

<#
.SYNOPSIS

.DESCRIPTION
.PARAMETER RestaurantId
    ID for the desired facility.
.PARAMETER MainOrder
    ID for the desired facility.
.PARAMETER SideOrder
    ID for the desired facility.
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
    Param(
        $RestaurantId = 8675309,

        $MainOrder = @{
            Type = 'Burrito'
            MainMeat = 'Chicken'
            Accessories = @(
                'Rice',
                'Sour Cream',
                'Cheese'
            )
            Addons = @(
                'Chips&Guac'
            )
        },

        $SideOrder = 'Salad'
    )

    Begin {}

    Process {
        Try {

            Return [ChipotleOrder]@{
                RestaurantId = $RestaurantId
                MainOrder    = $MainOrder
                SideOrder    = $SideOrder
            }
        } Catch {
            Throw $_
        }
    }

    End {}
}
#EndRegion Get-ChipotleMeals