
Class ChipotleSession {

    [ValidateNotNullOrEmpty()] 
    [System.String] $Username

    [ValidateNotNullOrEmpty()] 
    [PSCredential] $Credential

    #Currently Unknown Type
    [ValidateNotNullOrEmpty()]
    $Session

    [ValidateNotNullOrEmpty()]
    $DefaultHeaders

}