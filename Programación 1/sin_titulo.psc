SubAlgoritmo  llenarX ( arregloMd, n )
	definir i Como Entero
	definir random como real
	Para i<-1 Hasta n Con Paso 1 Hacer
		random<-aleatorio(-n/2, n/2-1)
		arregloMd[i, 1]<-random
	Fin Para
Fin SubAlgoritmo

Algoritmo arregloMd
	definir n Como Entero
	definir arregloMd Como Real
	n<-22
	dimension arregloMd[22,3]
FinAlgoritmo

