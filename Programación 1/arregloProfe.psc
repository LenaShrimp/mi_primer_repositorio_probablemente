Algoritmo arregloCadena
	// ( ) -> funciones
	// [ ] -> lista de arreglos
	definir arregloProfe Como Cadena
	definir i como entero
	//CREAR ARREGLO
	dimensionar arregloProfe[20]
	definir size como entero
	size<-17
	//meter elementos en cada posicion del arregloProfe
	arregloProfe[1] <- "H"
	arregloProfe[2] <- "o"
	arregloProfe[3] <- "l"
	arregloProfe[4] <- "a"
	arregloProfe[5] <- " "
	arregloProfe[6] <- "m"
	arregloProfe[7] <- "u"
	arregloProfe[8] <- "n"
	arregloProfe[9] <- "d"
	arregloProfe[10] <- "o"
	arregloProfe[11] <- " "
	arregloProfe[12] <- "c"
	arregloProfe[13] <- "r"
	arregloProfe[14] <- "u"
	arregloProfe[15] <- "e"
	arregloProfe[16] <- "l"
	arregloProfe[17] <- "!"
	
	//Imprimir al reves
	Para i<-17 Hasta 1 Con Paso -1 Hacer
		escribir sin saltar arregloProfe[i]
	Fin Para
	
	//intercambiar las letras para tenerlas en orden inverso
	definir temp como cadena
	temp<-arregloProfe[1]
	arregloProfe[1]<-arregloProfe[17]
	arregloProfe[19]<-temp
	
	Para i<-1 Hasta 17/2 Con Paso 1 Hacer
		temp<-arregloProfe[i]
		arregloProfe[i]<-arregloProfe[17-ind+1]
		arregloProfe[17-ind+1]<-temp
	Fin Para
	//copiar la misma impresión 
	para i<-1 hasta 17 Hacer
		escribir sin saltar arregloProfe[i]
	FinPara
	imprimir ""
	
FinAlgoritmo
