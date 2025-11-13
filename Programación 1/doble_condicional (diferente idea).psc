Algoritmo doble_condicional
	//Que el usuario proporcione dos nombres y el programa diga cual de los dos es más largo.
	definir Nombre_1, Nombre_2 Como Cadena
	Definir variable, variable_2 Como Real
	
	Nombre_1<-"Hola"
	Nombre_2<-"Mundo"
	variable<-aleatorio(3,9)
	variable_2<-aleatorio(3,9)
	Nombre_1<-ConvertirATexto(variable)
	Nombre_2<-ConvertirATexto(variable_2)
	
	Si Nombre_1 = "3" Entonces
		Escribir Nombre_1<-"" " Es un nombre mas largo!"
	SiNo
		Escribir Nombre_2 " Es un nombre mas largo!"
	FinSi
	
	Escribir nombre_1 " y " nombre_2 
	
	Si Nombre_1 > Nombre_2 Entonces
		Escribir Nombre_1 " Es un nombre mas largo!"
	SiNo
		Escribir Nombre_2 " Es un nombre mas largo!"
	FinSi
	
FinAlgoritmo
