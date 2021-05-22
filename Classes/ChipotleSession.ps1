
Class ChipotleSession {

    [ValidateNotNullOrEmpty()] 
    [PSCredential] $Credential
    
    #Currently Unknown Type
    [ValidateNotNullOrEmpty()]
    $Session
    
    [ValidateNotNullOrEmpty()]
    [System.String] $DefaultHeaders
    
}