import piratas.*
import barcos.*
import ciudadCostera.*
//si puede haber varias es porque es una clase plural == clase

class Mision {
    method puede_RealizarLaMision(unBarco) = unBarco.tieneSuficienteTripulacion()
}

class BusquedaTesoro inherits Mision{
    const itemsRequeridos = #{"unaBrujula", "unMapa","botellaGrogXD"}

    
    method esUtil(unPirata)= !unPirata.items().asSet().intersection(itemsRequeridos).isEmpty()
        && unPirata.tieneMenosDe(5)
    
    method esUtilBis(unPirata){
        return itemsRequeridos.any({i =>i.tiene(i)})&& unPirata.tieneMenosDe(5)
    }
    //method es_Util(unPirata){return
    //    self.tiene_LosItems(unPirata) &&
    //    unPirata.cantMonedas() <= 5
    //}
//
    //method tiene_LosItems(unPirata){ return
    //    unPirata.items().contains("unaBrujula") ||
    //    unPirata.items().contains("unMapa") ||
    //    unPirata.items().contains("botellaGrogXD")
    //}

    //method puede_RealizarLaMision(unBarco){
    //    unBarco.tripulacion().any({p => p.tiene("unaLlaveDeCofre")})
    //}
    method cumple_Requisitos(unBarco){return
        unBarco.hayTripulanteQueTieneItem("unaLlaveDeCofre")
    }
    override method puede_RealizarLaMision(unBarco){
        return super(unBarco) && self.puede_RealizarLaMision(unBarco)
    }

}

class ConvertirseEnLeyenda inherits Mision{
    const itemObligatorio 

    method es_Util(unPirata) = unPirata.tieneAlmenos_Items(10) &&
        self.tiene_ElItem(unPirata)
    method tiene_ElItem(unPirata)= unPirata.tiene(itemObligatorio)
}

class Saqueo inherits Mision{
    const victima

    method cantDineroDeterminada(){return saqueoCantDinero.numero()}
    method es_Util(unPirata)= unPirata.tieneMenosDe(saqueoCantDinero.numero()) &&
        unPirata.seAnimaASaquear()
    override method puede_RealizarLaMision(unBarco){ return
        victima.esVulnerableA_(unBarco) &&
        victima.laTripulacionSeAnima(unBarco.tripulacion()) &&
        super(unBarco)
    }
    //method laTripulacionSeAnima(unaTripulacion) =
    //    if (victima == CiudadCostera){
    //        unaTripulacion.any({p=> p.nivelDeEbriedad() >= 50})
    //    }
    //    else if(victima == BarcoPirata){
    //        unaTripulacion.any({p=> p.nivelDeEbriedad() >= 90})
    //    }
}




object saqueoCantDinero{
    var property numero = 10
}

