object gimenez{
	var fondoDeSueldos = 3000000
	
	method fondoDeSueldos() = fondoDeSueldos
	method pagarA(empleado){
		fondoDeSueldos -= empleado.sueldo()
		empleado.cobrarSueldo()
	}
}

object galvan {
	var sueldo = 150000
	var totalDinero = 0
	var deuda = 0
	
	method sueldo() = sueldo
	method totalDeuda() = deuda
	method totalDinero() = totalDinero
	method sueldo(nuevoSueldo){
		sueldo = nuevoSueldo
	}
	method cobrarSueldo(){
		totalDinero += sueldo
	}
	method gastar(gasto){
		if (gasto > self.totalDinero()) {
			deuda += gasto
		}else{
			totalDinero -= gasto
		}
	}
	method pagarDeuda(){
		if(self.totalDeuda()<=self.totalDinero()){
			totalDinero -= deuda
			deuda = 0
		}
	}
}

object baigorria{
	var empanadasVendidas = 0
	var valorEmpanada = 150
	var sueldo = empanadasVendidas * valorEmpanada
	var totalCobrado = 0
	
	method empanadasVendidas() = empanadasVendidas
	method sueldo() = sueldo
	method venderEmpanadas(numVentas){
		empanadasVendidas += numVentas
	}
	method valorEmpanada(nuevoPrecio){
		valorEmpanada = nuevoPrecio
	}
	method cobrarSueldo(){
		totalCobrado += sueldo
	}
}

