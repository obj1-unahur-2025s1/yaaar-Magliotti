class CiudadCostera{
    const habitantes
    method esVulnerableA_(unBarco) =unBarco.tripulacion().size() >= habitantes * 0.4 ||
        unBarco.tripulacion().all({p=> p.nivelDeEbriedad() >= 90})
    method laTripulacionSeAnima(unaTripulacion) = unaTripulacion.any({p=> self.puedeSerSaqueadoPor(p)})
    method puedeSerSaqueadoPor(unPirata) = unPirata.nivelDeEbriedad() >= 50
}