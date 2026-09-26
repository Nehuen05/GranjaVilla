import wollok.game.*

class Maiz {
	const property position =  game.origin()
	var esAdulta = false

	method image() {
		// TODO: hacer que devuelva la imagen que corresponde
		return if (esAdulta) "corn_adult.png"else "corn_baby.png"
	}

	method regate() {
		esAdulta=true
	}
}

class Trigo {
	const property position =  game.origin()
	var nivelActual = 0

	method image() {
		// TODO: hacer que devuelva la imagen que corresponde
		return if (nivelActual == 0) "wheat_0.png" else "wheat_1.png"
	}

	method regate() {
		nivelActual = nivelActual + 1
	}
}

class Tomate {
	const property position =  game.origin()

	method image() {
		// TODO: hacer que devuelva la imagen que corresponde
		return "tomaco.png"
	}

	method regate() {
	}
}