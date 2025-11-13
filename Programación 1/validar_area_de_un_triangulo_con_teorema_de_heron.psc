Algoritmo sin_titulo
	//calcular area de un triangulo ((base)(altura))/2
	definir random1, random2, random3, random4, random5, random6, a, b, c, s, teorema_heron Como Real
	definir validar como logico
	
	validar<-falso
	
	random1 <- aleatorio(1,20)
	random2 <- aleatorio(1,20)
	random3 <- aleatorio(1,20)
	
	random4 <- (aleatorio(1,20)) / 100
	random5 <- (aleatorio(1,20)) / 100
	random6 <- (aleatorio(1,20)) / 100
	
	a <- aleatorio(1,20) + random4
	b <- aleatorio(1,20) + random5
	c <- aleatorio(1,20) + random6
	
	//a < b + c
	//b < a + c
	//c < a + b
	
	//raiz(s*(s-a)*(s-b)*(s-c))
	
	Escribir "Bienvenid@ a mi programa, este genera lados al azar de un triangulo y valida que si sean de un triangulo real, después de eso calcula el area del triangulo usando el teorema de herón."

	Repetir
		Si (a < (b + c)) y (b < (a + c)) y (c < (a + b)) Entonces
			s <- (a + b + c) / 2
			teorema_heron <- raiz(s*(s-a)*(s-b)*(s-c))
			validar<-verdadero
		SiNo
			a <- aleatorio(1,20) + random4
			Si (a < (b + c)) y (b < (a + c)) y (c < (a + b)) Entonces
				s <- (a + b + c) / 2
				teorema_heron <- raiz(s*(s-a)*(s-b)*(s-c))
				validar<-verdadero
			sino
				b <- aleatorio(1,20) + random5
				Si a < (b + c) y b < (a + c) y c < (a + b) Entonces
					s <- (a + b + c) / 2
					teorema_heron <- raiz(s*(s-a)*(s-b)*(s-c))
					validar<-verdadero
				sino
					c <- aleatorio(1,20) + random6
					Si a < (b + c) y b < (a + c) y c < (a + b) Entonces
						s <- (a + b + c) / 2
						teorema_heron <- raiz(s*(s-a)*(s-b)*(s-c))
						validar<-verdadero
					SiNo
						a <- aleatorio(1,20) + random4
						Si a < (b + c) y b < (a + c) y c < (a + b) Entonces
							s <- (a + b + c) / 2
							teorema_heron <- raiz(s*(s-a)*(s-b)*(s-c))
							validar<-verdadero
						SiNo
							b <- aleatorio(1,20) + random5
							Si a < (b + c) y b < (a + c) y c < (a + b) Entonces
								s <- (a + b + c) / 2
								teorema_heron <- raiz(s*(s-a)*(s-b)*(s-c))
								validar<-verdadero
							SiNo
								c <- aleatorio(1,20) + random6
								
							finsi
						finsi
					finsi
				finsi
			finsi
		finsi
	Mientras Que validar=falso
	escribir " "
	escribir "El area del triangulo es " teorema_heron ", su lado A mide: " a ", su lado B mide:  " b " y su lado C mide:  " c
	escribir " "
	Escribir "Gracias por usar mi programa, hecho por Luna Elena Garcia Tapia para programación 1."
	//salida es el area
	
	//area mide tanto con estos lados
FinAlgoritmo
