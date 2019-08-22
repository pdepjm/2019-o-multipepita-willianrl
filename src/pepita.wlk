object pepita {
	var energia = 100

	method estaCansada() {
		return energia < 50
	}

	method vola(kms) {
		energia -= 10 + kms
	}

	method come(comida) {
		energia = energia + comida.energiaQueOtorga()
	}
	
	method estaFeliz(){
		return (energia > 500 && energia < 1000)
	}
	
	method cuantoQuiereVolar(){
		var distancia = energia / 5
		
		if(energia > 300 && energia < 400){
			distancia += 10
		}
		if(energia%2 == 0){
			distancia += 15
		}
		
		return distancia
	}
	
	method salirAComer(){
		pepita.vola(5)
		pepita.come(alpiste)
		pepita.vola(5)
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
	var estadoDelMijo 
	method mojarse(){ estadoDelMijo = "mojado" }
	method secarse(){ estadoDelMijo = "seco" }
	method energiaQueOtorga(){
		if(estadoDelMijo == "mojado"){ return 15 }
		return 20
	}	
}

object canelones {
	var tieneSalsa = false
	var tieneQueso = false
	
	method agregarSalsa(){ tieneSalsa = true }
	method quitarSalsa(){ tieneSalsa = false}
	
	method agregarQueso(){ tieneQueso = true }
	method quitarQueso(){ tieneQueso = false }
	
	method energiaQueOtorga(){
		var energiaTotal = 20
		if(tieneSalsa){ energiaTotal += 5}
		if(tieneQueso){ energiaTotal += 7}
		return energiaTotal
	}
	l
	
	
}