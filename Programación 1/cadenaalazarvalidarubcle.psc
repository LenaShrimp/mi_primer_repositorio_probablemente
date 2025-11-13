Algoritmo sin_titulo
	//vamos a crear una cadena al azar de cierta longitud que me de el usuario (la longitud) ejemplo:(4) seria 9576 
	//(longitud maxima seria 10) (minima seria 1) (validarlo que de error si no lo da)
	definir nombre como cadena
	definir indice, largo, largo2, temporal como real
	definir temporal2, temporal3 como cadena
	temporal2<-""
	temporal3<-""
	indice<-0
	
	escribir "bienvenido, este programa crea una cadena al azar de cierta longitud y devuelve numeros diferentes al azar"
	Repetir
		escribir "dame una longitud:"
		leer largo
	Mientras Que (largo>10 o largo<1)
	
	
	Para indice<-0 Hasta largo Con Paso 1 Hacer
		temporal<-aleatorio(0,9)
		temporal2<- concatenar(temporal2, convertiratexto(temporal))
		temporal3<-Subcadena(temporal2, indice, indice)
		si temporal=convertiranumero(temporal3) Entonces
			Para indice<-0 Hasta largo Con Paso 1 Hacer
				temporal<-aleatorio(0,9)
				temporal2<- concatenar(temporal2, convertiratexto(temporal))
				temporal3<-Subcadena(temporal2, indice, indice)
			fin para
		FinSi
	Fin Para
	
	
	escribir "1 " temporal
	escribir "2 " temporal2
	escribir "3 " temporal3
	
	
FinAlgoritmo
