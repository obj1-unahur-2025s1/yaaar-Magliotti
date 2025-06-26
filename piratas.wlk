class Pirata{
    const property items = []
    var nivelDeEbriedad
    var cantMonedas

    
    method agregarItems(unItem)=items.add(unItem)
    method tieneMenosDe(cantidad) = cantMonedas < cantidad
    method nivelDeEbriedad(){return nivelDeEbriedad}
    method cantMonedas(){return cantMonedas}
    method tiene(unItem)= items.contains(unItem)
    method tieneAlMenos_Items(unNumero)= items.size() >= unNumero
    method estaPasadoDeGrok()= nivelDeEbriedad >= 90
    method seAnimaASaquear(objetivo) = objetivo.puedeSerSaqueadoPor(self)
    method nivelDeEbriedadMayorA(unValor)=nivelDeEbriedad > unValor
    method esUtil(unaMision) = unaMision.esUtil(self)
    method tomarGrok(unaCantidad){nivelDeEbriedad += unaCantidad}
    method gastarMoneda(unaCantidad){cantMonedas = cantMonedas - unaCantidad.max(0)}
 }


 class Espia inherits Pirata{
    
 }