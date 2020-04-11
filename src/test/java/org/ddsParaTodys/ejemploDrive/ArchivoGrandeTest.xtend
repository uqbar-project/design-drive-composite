package org.ddsParaTodys.ejemploDrive

import org.junit.jupiter.api.BeforeEach
import org.junit.jupiter.api.DisplayName
import org.junit.jupiter.api.Test

import static org.junit.jupiter.api.Assertions.assertTrue

@DisplayName("Dado un archivo grande")
class ArchivoGrandeTest {

	Archivo archivoGrande
	
	@BeforeEach
	def void init() {
		archivoGrande = new Archivo => [
			tamanio = 5.001f
		]
	}
	
	@Test
	@DisplayName("detectamos correctamente un archivo grande")
	def void testArchivoGrandeSeVerificaCorrectamente() {
		assertTrue(archivoGrande.esGrande())		
	}
}
