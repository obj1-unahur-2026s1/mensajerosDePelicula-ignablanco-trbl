object bicicleta {
  method peso() = 5 
}

object camion {
  var cantidadAcoplados = 1
  method cantidadAcoplados(cambiarAcoplados) {
    cantidadAcoplados = cambiarAcoplados
  }

  method peso() {
    return cantidadAcoplados * 500
  }
}