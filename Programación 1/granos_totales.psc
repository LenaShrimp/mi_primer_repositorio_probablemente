Algoritmo sin_titulo
	// cuantos gramos, kilos o toneladas tuvo que darle el rey al creador del ajedrez
	
	//calcular la cantidad de frijoles que caben en el tablero de ajedrez (64 casillas) colocando 1 en la primer casilla, 2 en la segunda, 4 en la tercera y asi
	//sucesivamente, se calculo una aproximación de la cantidad de granos en un kg resultando 2450 frijoles enteros
	//esto nos lleva a que una tonelada tiene 2450000 frijoles entero
	
	//calcular la cantidad de granos que hay en cada casilla
	
	//Paso 1 calcular la cantidad de granos en cada casilla 
	definir suma, cantidad como real
	definir i como entero
	definir kilo como entero
	

	i <- 0
	suma<-0
	kilo<-2450
	
	Para i<-0 Hasta 63 Con Paso 1 Hacer
		cantidad<-2^i
		suma<-suma+cantidad
		escribir "Celda " i+1 " tiene " cantidad " granos y van " suma " gramos en total"
	Fin Para 
	
	escribir " "
	escribir "la suma de granos son " suma/kilo "kilos"
	escribir " "
	escribir "La suma de granos son " suma/(kilo*1000), " toneladas"
	escribir " "
	escribir "se necesitaran " suma/(kilo*1000*80) " trailers de doble semi remolque"
	escribir " "

	//Paso 2 sumar la cantidad de frijoles en cada casilla
	
	
	//Paso 3 convertir la cantidad de granos a toneladas
	
	
	//Paso 4 mostrar el resultado en pantalla
	

	
FinAlgoritmo
