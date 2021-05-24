#Region [ChipotleOrder]

Class ChipotleOrder {
    
    #Currently Unknown Type
    [ValidateNotNullOrEmpty()]
    $RestaurantID
    
    [ValidateNotNullOrEmpty()]
    [System.String] $MainOrder
    
    [ValidateNotNullOrEmpty()]
    [System.String] $SideOrder
    
    [System.String] $BaseURI = 'https://some-url-here.com/order/some/endpoint/v2'
    [System.String] $URIRequest = "$BaseURI/?$MainOrder&$SideOrder&$RestaurantID"
}
#EndRegion [ChipotleOrder]
