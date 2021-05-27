BeforeDiscovery {
    $ModuleRoot =   Split-Path (
                        Split-Path (
                            Split-Path $PSScriptRoot -Parent
                        ) -Parent
                    ) -Parent
    Remove-Module PSChipotle -Force -ErrorAction SilentlyContinue
    Import-Module $ModuleRoot -Force -WarningAction SilentlyContinue
}

Describe "Function Tests: Get-ChipotleMeals" {
    Context "Output" {
        It "Should return BaseType: [System.Object]" {
            (Get-ChipotleMeals)[0] | Should -BeOfType System.Object
        }
        It "Should return type name: [ChipotleOrder]" {
            (Get-ChipotleMeals).GetType().Name | Should -Be 'ChipotleOrder'
        }
        It "Assignes RestaurantId Properly" {
            $Meal = Get-ChipotleMeals -RestaurantId 9999999
            $Meal.RestaurantId | Should -Be 9999999 -Because "We specifically assigned this value"
        }
        It "Assignes MainOrder Properly" {
            $MainOrder = @{
                Type = 'Bowl'
                MainMeat = 'Shredded Chicken'
                Accessories = @(
                    'Rice',
                    'Sour Cream',
                    'Cheese'
                )
                Addons = @(
                    'Chips&Guac'
                )
            }
            $Meal = Get-ChipotleMeals -MainOrder $MainOrder
            $Meal.MainOrder.Type        | Should -Be 'Bowl'
            $Meal.MainOrder.MainMeat    | Should -Be 'Shredded Chicken'
            $Meal.MainOrder.Accessories | Should -Be @('Rice','Sour Cream','Cheese')
            $Meal.MainOrder.Addons      | Should -Be 'Chips&Guac'
            $Meal.MainOrder             | Should -Be $MainOrder
        }
        It "Assignes SideOrder Properly" {
            $Meal = Get-ChipotleMeals -SideOrder Chips
            $Meal.SideOrder | Should -Be Chips
        }
    }
}