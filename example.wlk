class Nave {
    var velocidad = 0
    var direccion = 0

    method acelerar(cuanto) {
        velocidad = (velocidad + cuanto).min(100000)
    }

    method desacelerar(cuanto) {
        velocidad = (velocidad - cuanto).max(0)
    }

    method irHaciaElSol() {
        direccion = 10
    }

    method escaparDelSol() {
        direccion = -10
    }

    method ponerseParaleloAlSol() {
        direccion = 0
    }

    method acercarseUnPocoAlSol() {
        direccion = (direccion + 1).min(10)
    }

    method alejarseUnPocoDelSol() {
        direccion = (direccion - 1).max(-10)
    }
}


class NaveBaliza inherits Nave {
    var colorActual = "verde"

    method cambiarColorDeBaliza(colorNuevo) {
        colorActual = colorNuevo
    }
}


class NavePasajeros inherits Nave {
    var cantidadDePasajeros
    var cantidadRacionDeComida = 0
    var cantidadDeBebidas = 0

    method cargarComida(cantidad) {
        cantidadRacionDeComida = cantidadRacionDeComida + cantidad
    }

    method descargarComida(cantidad) {
        cantidadRacionDeComida = cantidadRacionDeComida - cantidad
    }

    method cargarBebida(cantidad) {
        cantidadDeBebidas = cantidadDeBebidas + cantidad
    }

    method descargarBebida(cantidad) {
        cantidadDeBebidas = cantidadDeBebidas - cantidad
    }
}


class NavesDeCombate inherits Nave {
    var estaVisible = true
    var estaDesplegado = false

    const mensajes = []

    method ponerseVisible() {
        estaVisible = true
    }

    method ponerseInvisible() {
        estaVisible = false
    }

    method estaInvisible() {
        return !estaVisible
    }

    method desplegarMisiles() {
        estaDesplegado = true
    }

    method replegarMisiles() {
        estaDesplegado = false
    }

    method misilesDesplegados() {
        return estaDesplegado
    }

    method emitirMensaje(unMensaje) {
        mensajes.add(unMensaje)
    }

    method mensajesEmitidos() {
        return mensajes
    }

    method primerMensajeEmitido() {
        return mensajes.first()
    }

    method ultimoMensajeEmitido() {
        return mensajes.last()
    }

    method emitioMensaje(unMensaje) {
        return mensajes.contains(unMensaje)
    }

    method esEscueta() {
        return mensajes.all({ mensaje => mensaje.size() <= 30 })
    }
}