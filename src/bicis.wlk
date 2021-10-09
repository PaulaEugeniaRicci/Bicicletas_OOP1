class Bicis {
	//descriptores de acceso - property	
	var property rodado 
	var property largo 
	var property marca 
	
	const property accesorios = []
	method agregarAccesorios(listaAccesorios) {accesorios.addAll(listaAccesorios)}
	
	method altura() {return rodado * 2.5 + 15}
	method velocidadDeCrucero() {return if (largo>120) {rodado + 6} else {rodado + 2}}
	method carga() {return accesorios.sum( {accesorio=> accesorio.carga()} )}
	method peso() {return accesorios.sum( {accesorio=>accesorio.peso()}) + (rodado/2)}	
	method tieneLuz() { return accesorios.any( {accesorio=>accesorio.esLuminoso()}) }
	
	method cantAccesoriosLivianos() {return accesorios.count( {accesorio=>accesorio.peso()<1} )}	
}
