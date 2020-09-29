import profesionales.*
import universidad.*

class Empresa {
	var property profesionales = #{}
	var property honorarioReferencia = 0
	
	method cuantos(unaUniversidad) = profesionales.count({ v => v.universidad() == unaUniversidad })
	
	method profesionalesCaros() = profesionales.filter({ v => v.honorariosPorHora() > honorarioReferencia })
	
	method universidadesFormadoras() = profesionales.map({ v => v.universidad() }).asSet()
	
	method elMasBarato() = profesionales.min({ v => v.honorariosPorHora() })
	
	method esDeGenteAcotada() = profesionales.all({ v => v.provinciasDondePuedeTrabajar().size() >= 3 })
	
}
