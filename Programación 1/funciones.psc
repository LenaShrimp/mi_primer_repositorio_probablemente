SubAlgoritmo retorno <- n_grande ( n )
	definir i, random, retorno, random_anterior, random_arreglo como entero
	dimension random_arreglo[8999]
	Para i<-1 Hasta 8999 Con Paso 1 Hacer
		random_arreglo[i] <- i+1000
	Fin Para
	random_anterior <- random_arreglo[aleatorio(1,8999)]
	Para i<-n-1 Hasta (n*2)-1 Con Paso 1 Hacer
		random <- random_arreglo[aleatorio(1,8999)]
		si random > random_anterior
			retorno <- random
		FinSi
	Fin Para
Fin SubAlgoritmo

Algoritmo funcion_grande
	//1)funcion para encontrar el máximo de n números entero n=300 n=50 azar(300) azar(50) n=20000000 opciones:9999
	//azar: numeros de 4 cifras opciones = 9000
 	definir n, random, grande, i, retorno, random_arreglo Como Entero
	definir textos como cadena
	escribir "limite a generar (ej: 50, 300, 10000)"
	leer n
	dimension random_arreglo[8999]
	random_arreglo[1] <- 1000
	random_arreglo[8889] <- 9999
	retorno<-n_grande(n)
	escribir retorno

	
	
	
FinAlgoritmo
