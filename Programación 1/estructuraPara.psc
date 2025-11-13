Algoritmo estructuraPara
	//vamos a solicitar la ciudad de nacimiento  al usuario
	//validar que nos brinde un nombre valido
	definir nombre como cadena
	definir indice, largo, temporal0 como real
	definir temporal, temporal2 como cadena
	
	Repetir
		escribir "dame tu ciudad:"
		leer nombre
	Mientras Que nombre=""
	
	largo<-longitud(nombre)
	
	Para indice<-1 Hasta largo Con Paso 1 Hacer
		//imprimir cad letra de la cadena que proporciono el usuario
		//obtener l aletra correspondiente (subcadena)
		//yluego convertir la letra a MAYUSCULAS
		//escribir mayusculas(subcadena(nombre, indice, indice))
		temporal<-subcadena(nombre, indice, indice)
		temporal2<-mayusculas(temporal)
		escribir temporal2
	finpara

	//Subcadena(fecha,Longitud(fecha)-10,Longitud(fecha)-8)
FinAlgoritmo
