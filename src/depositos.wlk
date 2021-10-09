class Depositos {
	const property bicis = []
	method agregarBicis(listaBicis) {bicis.addAll(listaBicis)}
	
	method bicisRapidas(){ return bicis.filter( {bici => bici.velocidadDeCrucero() > 25}) }
	method marcas() { return bicis.map ({bici=> bici.marca()}).asSet() }
	method esNocturno() {return bicis.all( {bici=> bici.tieneLuz()}) }
	method tieneBici(kilos) {return bicis.any( {bici=> bici.carga() > kilos}) }
	
	method marcaMasRapida(){ return bicis.max( {bici=> bici.velocidadDeCrucero() }).marca() }
	method cargaBicisLargas() {return bicis.filter( {bici=> bici.largo()>170}).sum({ bici=> bici.carga()}) }
	method bicisSinAcc() { return bicis.count( {bici=>bici.accesorios().isEmpty()})}
}

