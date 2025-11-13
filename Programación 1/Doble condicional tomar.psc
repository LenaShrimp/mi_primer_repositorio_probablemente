Algoritmo ejercicio3_1_1A_bebidaCondicional
	Definir nombre, domicilio Como Cadena
	Definir edad Como Real
	Definir ultimo_caracter como cadena
	
	Escribir "Bienvenid@ a mi programa, este pide 3 datos y en base a eso dice si puedes beber o no."
	Escribir "Dame tu nombre."
	Leer nombre
	Escribir "Dame tu domicilio.(Solo MX, CB, PR, TW.)"
	Leer domicilio
	Escribir "Dame tu edad."
	Leer edad
	ultimo_caracter <- Subcadena(nombre,Longitud(nombre),Longitud(nombre)-1)
	escribir ultimo_caracter
		
	Si edad >= 21 entonces
		Escribir Nombre ", tiene derecho a tomar!"
	SiNo	
		Si domicilio="TW" y edad>=20 entonces
			Escribir Nombre ", tiene derecho a tomar!"
		SiNo
			Si domicilio="MX" y edad>=18 Entonces
				Escribir Nombre ", tiene derecho a tomar!"
			SiNo
				Si domicilio="CB" y edad>=16 Entonces
					Escribir Nombre ", tiene derecho a tomar!"
				SiNo
					Escribir nombre ", no tienes derecho a tomar!"
				Fin Si
			Fin Si
		FinSi
	FinSi
	Escribir " "
	Escribir "Gracias por usar mi programa mi nombre es Luna Elena Garcia Tapia y mi expediente es 221202285."
	
FinAlgoritmo
