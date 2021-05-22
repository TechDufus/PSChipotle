#Create a class for order objects

Class Order {

    [void] SetOrderId($OrderId) {
        Add-Member -InputObject $this -Name OrderId -MemberType NoteProperty -Value $OrderId
    }
}