Proceso sin_titulo
	//Este programa, se va a encargar de mostrar los elementos de una division.
	//¿Reales? o ¿Enteros?
	//Por el momento usaremos numeros enteros.
	Definir dividendo, cociente, residuo, divisor  Como Entero
	//Pedir datos al usuario
	escribir "proporciona datos necesarios (dividendo y divisor):"
	leer dividendo, divisor
	
	//calculamos la operación
	cociente<-trunc(dividendo / divisor)
	residuo<-(dividendo mod divisor)
	
	//Imprimir los elementos de la division
	Escribir sin saltar "Estos son los elementos de la división:", dividendo
	Escribir sin saltar "<-Este es el dividendo ", cociente, "<- Este es el cociente "
	Escribir residuo, "<- Este es el residuo ", divisor, "<- Este es el divisor"
	
	escribir "Estos son los elementos de la division:", dividendo "<- este es el dividendo ", cociente, residuo, divisor
FinProceso
