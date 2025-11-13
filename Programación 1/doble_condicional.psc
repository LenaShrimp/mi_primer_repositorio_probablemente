Algoritmo doble_condicional
	//Que el usuario proporcione dos nombres y el programa diga cual de los dos es más largo.
	definir Nombre_1, Nombre_2 Como Cadena
			
	Leer Nombre_1, Nombre_2
	
	Si Longitud(Nombre_1) < Longitud(Nombre_2) Entonces
		Escribir Nombre_2 " es un nombre mas largo!"
	SiNo
		//preguntar por las otras dos opciones
		//ser iguales o nombre_1 ser mas largo
		Si Longitud(Nombre_1) = Longitud(Nombre_2) Entonces
			Escribir "Ambos son de la misma longitud."
		SiNo
			Escribir Nombre_1 " es un nombre mas largo!"
		Fin Si
	FinSi
FinAlgoritmo
