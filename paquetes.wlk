import destinos.*
object paquete {
    var property destino = brooklyn
    var estaPago = false
    method puedeEntregarse(unMensajero) {
        return unMensajero.puedeEntregarse(destino)
        && estaPago
    }

    method registrarPago() {estaPago = true}
    method rechazarPago() {estaPago = false} 

    method precio() = 50   
    method estaPago() = estaPago    
}

object paquetito {
    var property destino = brooklyn

    method puedeEntregarse(unMensajero) {
        return destino.dejaPasar(unMensajero)
    }

    method precio() = 0
    method estaPago() = true
}

object  paqueton {
    const destinos = #{}
    var importeAbonado = 0 

    method precio() = destinos.size() * 100
    method registrarPago(unValor) {
        importeAbonado = (importeAbonado + unValor).min(self.precio())
    }

    method estaPago() {
        return importeAbonado >= self.precio()
    }
  
}