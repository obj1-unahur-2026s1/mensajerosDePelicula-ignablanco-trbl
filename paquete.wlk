object paquete {
    var property destino = brooklyn
    var estaPago = false
    method puedeEntregarse(unMensajero) {
        return unMensajero.puedeEntregarse(destino)
        && estaPago
    }

    method registrarPago() {estaPago = true}
    method rechazarPago() {estaPago = false}        
}