package org.ddsParaTodys.ejemploDrive

import org.eclipse.xtend.lib.annotations.Accessors

@Accessors
class Archivo implements ElementoNavegable {
	
	// medido en MB
	float tamanio
	
	override esGrande() {
		tamanio > 5
	}
	
	override tamanio() {
		tamanio
	}
	
}