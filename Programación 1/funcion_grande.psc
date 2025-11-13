SubAlgoritmo retorno <- n_grande ( n )
	definir i, random, contador, retorno, random_anterior como entero
	random_anterior <- aleatorio(1000, 9999)
	//contador<-0
	Para i<-n+1 Hasta (n*2) Con Paso 1 Hacer
		random <- aleatorio(1000, 9999)
		si random > random_anterior
			retorno <- random
		SiNo
			retorno<-random_anterior
		FinSi
	//contador<-contador+1
	Fin Para
	//imprimir contador
Fin SubAlgoritmo

Algoritmo funcion_grande
 	definir n, random, grande, i, retorno Como Entero
	escribir "limite a generar (ej: 50, 300, 10000)"
	leer n
	retorno<-n_grande(n)
	escribir retorno
FinAlgoritmo


//dimension random_arreglo[9000]
//Para i<-1 Hasta 9000 Con Paso 1 Hacer
//random_arreglo[i] <- i+999
//Fin Para
//random_anterior <- random_arreglo[aleatorio(1,9000)]

//random <- random_arreglo[aleatorio(1,9000)]

//dimension random_arreglo[8999]
//random_arreglo[1] <- 1000
//random_arreglo[8889] <- 9999