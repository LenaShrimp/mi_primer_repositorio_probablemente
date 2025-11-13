Algoritmo dardo
	//consiste en lanzar dardos al azar a un cuadrado y determinar cuantos de ellos estan dentro de un circulo inscrito en el cuadrado
	
	//se llama metodo de montecarlo
	
	//la maquina se llama yuca (acarus.unison)
	
	//condiciones el circulo mide 1 de radio y centrado en el origenpor tanto el cuadrado esta centrado en el origen cuya longitud de lado mide 2
	//1 - determinar cuantos dardos vamos a lanzar (pedirlo al usuario x>0 (si es menor, que sea al azar))
	//2 - generar al azar la ubicación de cada dardo, generar (dos valores reales) (entre -1 y 1)
	//3 - determinar si esta dentro o fuera del circulo (utilizando la formula de distancia ) (si la distancia es mayor que 1 esta fuera)
	//4 - contabilizar la cantidad de dardos que caen dentro del circulo
	//5 - imprimir la cantidad de dardos que cayeron adentro y fuera
	
	//Paso 1
	definir ndardos como enteros
	
	Repetir
		escribir "Hola bienvenido a mi jueguito, cuantos dardos quieres lanzar?"
		leer ndardos
	Mientras Que ndardos <= 0
	
	//Paso 2
	definir x0, y0 como real
	definir i, j como entero
	
	definir radio, distancia  como real
	definir exito_total como entero
	
	radio<-1
	exito_total<-0
	
	Para i<-0 Hasta ndardos Con Paso 1 Hacer
		x0 <- aleatorio(-1,0) + (aleatorio(0,10) / 10)
		y0 <- aleatorio(-1,0) + (aleatorio(0,10) / 10)
		
		//Paso 3
		
		distancia<-raiz(x0 * x0 + y0 * y0)
		
		//Paso 4
		
		Si distancia<=radio Entonces
			exito_total<- exito_total + 1
		Fin Si
	Fin Para
	
	//Paso 5
	Escribir exito_total " y " exito_total / ndardos
	escribir "valor aproximado de pi" 4 * (exito_total / ndardos)
FinAlgoritmo
