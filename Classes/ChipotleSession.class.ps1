#Region [ChipotleSession]

Class ChipotleSession {
    
    [ValidateNotNullOrEmpty()] 
    [PSCredential] $Credential
    
    #Currently Unknown Type
    [ValidateNotNullOrEmpty()]
    $Session
    
    [ValidateNotNullOrEmpty()]
    [System.Object] $DefaultHeaders
    
    [System.String] $BaseURI = 'https://order.chipotle.com/api/customer/login'
    [System.String] $URIRequest = "https://order.chipotle.com/api/customer/login"
    
}
#EndRegion [ChipotleSession]
