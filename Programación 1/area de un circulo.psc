Algoritmo sin_titulo
	//crear un algoritmo que calcule el area de un circulo.
	//solicitar al usuario los datos que necesites.
	Definir radio, area Como Real
	Definir radioMaximo Como Entero
	radiomaximo<-18
	//Realizar los calculos necesarios
	Escribir "Dame el radio:"
	Leer radio
	
	//opcional, generar un numero aleatorio 
	//"para no tomar en cuenta el valor del usuairo"
	//Analizando, el radio NO puede ser 0.
	radio<-aleatorio(1, radiomaximo)
	
	area<-PI*radio*radio
	
	//imprimir los resultados.
	Escribir "El radio es: " radio " y el area es: " area "."
	
FinAlgoritmo
