#Region [ChipotleOrder]

Class ChipotleOrder {
    
    #Currently Unknown Type
    [ValidateNotNullOrEmpty()]
    $RestaurantID
    
    [ValidateNotNullOrEmpty()]
    $MainOrder
    
    [ValidateNotNullOrEmpty()]
    $SideOrder
    
    [System.String] $BaseURI = 'https://order.chipotle.com/api/restaurant/restaurantssearch'
    [System.String] $URIRequest = "$BaseURI/?$MainOrder&$SideOrder&$RestaurantID"
}
#EndRegion [ChipotleOrder]
