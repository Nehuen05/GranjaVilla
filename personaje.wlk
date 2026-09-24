import wollok.game.*

object personaje {
	var property position = game.center()
	const property image = "fplayer.png"

    method position() { //metodo necesario para wollok game
		return position
	}

    method position(_position) { //el setter solo lo necesito para testear
		position = _position 
	}

    method mover(direccion) {
		const nuevaPosition = direccion.siguiente(position) //No modifico la position en la primera linea porque volar podría lanzar error
		position = nuevaPosition //ahora si puedo modificar la posicion
	}

	method plantaMaiz() {
		game.addVisual(new Maiz( position = self.position()) )
	}

	method rega() {
		const cultivosEnMiPosicion = game.colliders(self)
		cultivosEnMiPosicion.forEach(cultivo => cultivo.regate() )
	}

}
