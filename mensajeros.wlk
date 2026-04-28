import vehiculos.*

object roberto {
    var property peso = 90
    var property vehiculo = bicicleta
    method cambiarPeso(nuevoPeso) {
        peso = nuevoPeso
    } // asumo que puede cambiar el peso.

    method pesoTotal() {
        return vehiculo.peso() + peso
    }

    method puedeLlamar() {
        return false
    }
  
}

object chuckNorris {
  method pesoTotal() {
    return 80
  }
  method puedeLlamar() {
    return true
  }
}

object neo {
    var tieneCredito = true
    method cargarCredito() {
      tieneCredito = true
    }
    method agotarCredito() {
      tieneCredito = false
    }
    method pesoTotal() {
        return 0
  }
    method puedeLlamar() {
        return tieneCredito
    }
}