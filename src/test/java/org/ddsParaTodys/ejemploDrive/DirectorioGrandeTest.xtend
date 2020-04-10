package org.ddsParaTodys.ejemploDrive

import org.junit.jupiter.api.BeforeEach
import org.junit.jupiter.api.DisplayName
import org.junit.jupiter.api.Test

import static org.junit.jupiter.api.Assertions.assertTrue

@DisplayName("Directorios grandes")
class DirectorioGrandeTest {
	
	Directorio directorioGrande
	Directorio directorioConMuchosElementos
	
	@BeforeEach
	def void init() {
		directorioGrande = new Directorio => [
			agregarElemento(new Archivo => [
				tamanio = 6
			])
			agregarElemento(new Archivo => [
				tamanio = 5
			])
		]

		directorioConMuchosElementos = new Directorio => [
			agregarElemento(new Directorio)
			agregarElemento(new Directorio)
			agregarElemento(new Archivo => [
				tamanio = 2
			])
		]

	}
	
	@Test
	@DisplayName("un directorio muchos elementos es grande")
	def void testDirectorioConMuchosElementosEsGrande() {
		assertTrue(directorioConMuchosElementos.esGrande(), "El directorio con muchos elementos debería ser grande")
	}
	
	@Test
	@DisplayName("un directorio con tamanio > a 10MB es grande")
	def void testDirectorioConGranTamanioEsGrande() {
		assertTrue(directorioGrande.esGrande(), "El directorio con un gran tamaño debería ser grande")
	}
	
}