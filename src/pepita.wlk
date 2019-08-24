object pepita {

	var energia = 100

	method estaCansada() {	
		return energia < 50
	}

	method vola(kms) {	energia -= 10 + kms	}

	method come(comida) {	energia += comida.energiaQueOtorga()	}

	method estaFeliz() {
		return energia > 500 && energia < 1000
	}

	method cuantoQuiereVolar() {
		var distancia = energia / 5
		
		if (energia > 300 && energia < 400) {
			distancia += 10
		}
		
		if (energia % 20 == 0) {
			distancia += 15
		}
		
		return distancia
	}

	method salirAComer() {
		self.vola(5)
		self.come(alpiste)
		self.vola(5)
	}
	
	method haceLoQueQuieras(){
		if(self.estaCansada()){
			self.come(alpiste)
		}
		
		if(self.estaFeliz()){
			self.vola(8)
		}
	}

}

object roque{
	
	method entrenar(ave){
		ave.vola(10)
		ave.come(alpiste)
		ave.vola(5)
		ave.haceLoQueQuieras()
	}
}

object alpiste {

	var gramos = 10

	method energiaQueOtorga() {
		return 4 * gramos
	}

	method gramos(nuevosGramos) {
		gramos = nuevosGramos
	}

}

object manzana {

	method energiaQueOtorga() {
		return 50
	}

}

object mijo {

	var estadoDelMijo = "seco"

	method mojarse() {	estadoDelMijo = "mojado"	}

	method secarse() {	estadoDelMijo = "seco"	}

	method energiaQueOtorga() {
		if (estadoDelMijo == "mojado") {
			return 15
		}
		return 20
	}

}

object canelones {

	var tieneSalsa = false
	var tieneQueso = false

	method agregarSalsa() { tieneSalsa = true 	}

	method quitarSalsa() { tieneSalsa = false	}

	method agregarQueso() {	tieneQueso = true	}

	method quitarQueso() {	tieneQueso = false	}

	method energiaQueOtorga() {
		var energiaTotal = 20
		if (tieneSalsa) {	energiaTotal += 5	}
		if (tieneQueso) {	energiaTotal += 7	}
		return energiaTotal
	}

}

