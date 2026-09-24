import wollok.game.*
import cultivos.*


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
		self.validarPosicionVacia()
		game.addVisual(new Maiz( position = self.position()) )
	}

	method rega() {
		self.cultivosDeBajo().forEach({cultivo => cultivo.regate()} )
	}
	method cultivosDeBajo() { return game.colliders(self)
	}

	method validarPosicionVacia() {
		if (not self.cultivosDeBajo().isEmpty()){
			self.error("ya hay un cultivo aca")
		}
	}

}
