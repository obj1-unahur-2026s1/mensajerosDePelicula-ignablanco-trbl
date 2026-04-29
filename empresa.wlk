import mensajeros.*

object mensajeria {
  const mensajeros = []

  method contratarUnMensajero(unMensajero) {
    mensajeros.add(unMensajero)
  }

  method despedirUnMensajero(unMensajero) {
    mensajeros.remove(unMensajero)
  }

  method despedirATodos() {
    mensajeros.clear()
  }

  method esGrande() {
    return mensajeros.size() > 2
  }

  method elPrimerEmpleadoPuedeEntregar(unPaquete) {
    return unPaquete.puedeSerEntregado(self.primerEmpleado())
  }

  method primerEmpleado() = mensajeros.first()
  
  method ultimoMensajero() = mensajeros.last()

  method pesoUltimoMensajero() = self.ultimoMensajero().pesoTotal()
  
  method pesoTotalDeLosMensajeros() = mensajeros.sum({m => m.pesoTotal()})

  method alMenosUnMensajeroPuedeEntregar(unPaquete) {
    return mensajeros.any({m => unPaquete.puedeSerEntregado(m)})
  }

  method losQuePuedenLlevar(unPaquete) {
    return mensajeros.filter({m => unPaquete.puedeSerEntregado(m)})
  }

}
