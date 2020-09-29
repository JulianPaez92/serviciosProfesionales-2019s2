import universidad.*


class ProfesionalAsociado {
	var property universidad
	
	method provinciasDondePuedeTrabajar() { return #{"Entre Ríos", "Corrientes", "Santa Fe"} }
	
	method honorariosPorHora() = 3000 
}



class ProfesionalVinculado {
	var property universidad
	
	method provinciasDondePuedeTrabajar() = #{universidad.provincia()}
	
	method honorariosPorHora() = universidad.honorariosRecomendados()
}



class ProfesionalLibre {
	var property universidad
	var property honorariosPorHora = 0
	var property provinciasDondePuedeTrabajar = #{}
	
}
