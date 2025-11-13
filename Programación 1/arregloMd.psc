SubAlgoritmo imprimirParaCopiar ( arregloMd, n)
	definir i Como Entero
	Para i<-1 Hasta n Con Paso 1 Hacer
		si i<>n Entonces
			escribir "(" sin saltar
			escribir arregloMd[i,1] "," sin saltar
			escribir arregloMd[i,2] ","sin saltar
			escribir arregloMd[i,3] ""sin saltar
			escribir ") "
		FinSi
	Fin Para
	escribir " "
	escribir " "
Fin SubAlgoritmo

SubAlgoritmo  llenarX (arregloMd,n)
	definir i Como Entero
	definir random como real
	Para i<-1 Hasta n Con Paso 1 Hacer
		random<-aleatorio(-n/2, n/2-1)
		arregloMd[i,1]<-random
	Fin Para
Fin SubAlgoritmo

SubAlgoritmo  llenarY (arregloMd,n)
	definir i Como Entero
	definir random como real
	Para i<-1 Hasta n Con Paso 1 Hacer
		random<-aleatorio(-n/2, n/2-1)
		arregloMd[i,2]<-random
		
	Fin Para
Fin SubAlgoritmo

SubAlgoritmo  llenarZ_conFuncion (arregloMd,n)
	definir i Como Entero
	definir random, x, coord_y, z_calculado como real
	Para i<-1 Hasta n Con Paso 1 Hacer
		x<-arregloMd[i,1]
		coord_Y<-arregloMd[i,2]
		
		z_calculado<-((x^2+coord_Y^2)/6)-5
		arregloMd[i,3]<-z_calculado
	Fin Para
Fin SubAlgoritmo

Algoritmo arregloMultidimensional
	definir n Como Entero
	definir arregloMd como real
	n<-22
	dimensionar arregloMd[22,3]
	escribir "Bienvenid@ a mi programa, este forma una figura tridimensional en base a una función que invente, luego genera puntos aleatorios a la mitad del perimetro de la figura."
	escribir "Copiar y pegar en desmos"
	escribir " "
	escribir "f\left(x,y\right)=\left(\frac{x^{2}}{6}+\frac{y^{2}}{6}\right)-5"
	llenarX(arregloMd, n)
	llenarY(arregloMd, n)
	llenarZ_conFuncion(arregloMd, n)
	imprimirParaCopiar(arregloMd, n)
	escribir ""
	escribir "Aquí esta el enlace donde grafique la figura: https://www.desmos.com/3d/ixe25ig7se?lang=es"
	escribir ""
	escribir "¡Gracias por usar mi programa! hasta la proxima."
FinAlgoritmo

