package org.ddsParaTodys.ejemploDrive

import java.util.List

class Directorio implements ElementoNavegable {
	
	List<ElementoNavegable> elementos = newArrayList
	
	override tamanio() {
		this.elementos.fold(0f, [ acum, elemento | acum + elemento.tamanio() ])
	}
	
	override esGrande() {
		this.elementos.size() > 2 || this.tamanio() > 10
	}
	
	def void agregarElemento(ElementoNavegable elemento) {
		this.elementos.add(elemento)
	}
	
}
