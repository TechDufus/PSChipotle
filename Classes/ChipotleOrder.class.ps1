#Region [ChipotleOrder]

Class ChipotleOrder {
    
    #Currently Unknown Type
    [ValidateNotNullOrEmpty()]
    $RestaurantID
    
    [ValidateNotNullOrEmpty()]
    $MainOrder
    
    [ValidateNotNullOrEmpty()]
    $SideOrder
    
    [System.String] $BaseURI = 'https://some-url-here.com/order/some/endpoint/v2'
    [System.String] $URIRequest = "$BaseURI/?$MainOrder&$SideOrder&$RestaurantID"
}
#EndRegion [ChipotleOrder]
