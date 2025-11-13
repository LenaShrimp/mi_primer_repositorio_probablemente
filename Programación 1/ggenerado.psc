	SubAlgoritmo imprimirParaCopiar (arregloMd, n)
		definir i como entero
		
		Para i<-1 Hasta n Con Paso 1 Hacer
			Escribir arregloMd[i, 1]
		Fin Para
		
		Escribir " "
		
		Para i<-1 Hasta n Con Paso 1 Hacer
			Escribir arregloMd[i, 2]
		Fin Para
		
		Escribir " "
		
		Para i<-1 Hasta n Con Paso 1 Hacer
			Escribir arregloMd[i, 3]
		Fin Para
	Fin SubAlgoritmo
	
	SubAlgoritmo llenarX(arregloMd, n)
		definir i, valorAleatorio como Entero
		Para i<-1 Hasta n Con Paso 1 Hacer
			valorAleatorio <- Aleatorio(-Trunc(n/2), Trunc(n/2)-1) 
			arregloMd[i, 1] <- valorAleatorio
		Fin Para
	Fin SubAlgoritmo
	
	SubAlgoritmo llenarY(arregloMd, n)
		definir i, valorAleatorio como Entero
		Para i<-1 Hasta n Con Paso 1 Hacer
			valorAleatorio <- Aleatorio(-Trunc(n/2), Trunc(n/2)-1)
			arregloMd[i, 2] <- valorAleatorio
		Fin Para
	Fin SubAlgoritmo
	
	SubAlgoritmo llenarZ_conFuncion(arregloMd, n)
		definir i Como Entero
		definir x, coord_Y, z_calculado Como Real 
		
		Para i<-1 Hasta n Con Paso 1 Hacer
			x <- arregloMd[i, 1]
			coord_Y <- arregloMd[i, 2]
			
			z_calculado <- (x^2 + coord_Y^2) / 6 
			
			arregloMd[i, 3] <- z_calculado
		Fin Para
	Fin SubAlgoritmo
	
	Algoritmo GeneradorDePuntos
		definir n Como Entero
		definir arregloMD Como Real
		n <- 22
		
		Dimension arregloMd[22, 3] 
		
		llenarX(arregloMd, n)
		llenarY(arregloMd, n)
		llenarZ_conFuncion(arregloMd, n)
		imprimirParaCopiar(arregloMd, n) 
		
FinAlgoritmo