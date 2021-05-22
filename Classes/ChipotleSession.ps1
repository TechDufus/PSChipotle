
Class ChipotleSession {

    [ValidateNotNullOrEmpty()] 
    [PSCredential] $Credential
    
    #Currently Unknown Type
    [ValidateNotNullOrEmpty()]
    $Session
    
    [ValidateNotNullOrEmpty()]
    [System.String] $DefaultHeaders
    
    [System.String] $BaseURI = 'https://some-url-here.com/user/some/endpoint/v2'
    
}