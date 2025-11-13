Algoritmo AdivinaElNumero

	definir longitudN como Entero
	definir numeroSecreto como Cadena
	definir intentoUsuario como Cadena
	definir intentos, bienUbicados, malUbicados como Entero
	definir adivinado, seguirJugando como Logico
	definir respuestaContinuar como caracter
	definir i, j, digitoAzar como entero
	definir digitoCadena como cadena
	definir digitoRepetido como logico

	repetir
		escribir "Bienvenid@ a mi programa, este es un juego de adivina el número, pondras la cantidad a adivinar y luego generara diferentes al azar, intenta adivinarlo!"
		escribir "Ingresa la longitud del numero a adivinar (entre 2 y 10):"
		leer longitudN
		si longitudN<2 o longitudN>10 entonces
			escribir "Error: El largo debe ser entre 2 y 10."
			escribir " "
		finsi
	Hasta Que longitudN>=2 y longitudN<=10
	
	numeroSecreto <- ""
	
	Para i <- 1 hasta longitudN hacer
		Repetir
			digitoAzar <- Azar(10)
			digitoCadena <- ConvertirATexto(digitoAzar)
			digitoRepetido <- Falso
			Para j <- 1 Hasta Longitud(numeroSecreto) hacer
				Si subcadena(numeroSecreto, j, j) = digitoCadena entonces
					digitoRepetido <- verdadero
				FinSi
			Finpara
		Hasta que digitoRepetido = falso
		numeroSecreto <- concatenar(numeroSecreto, digitoCadena)
	FinPara
	Escribir "Hice un numero de ", longitudN, " digito; Suerte."

	intentos <- 0
	adivinado <- Falso
	seguirJugando <- Verdadero
	
	Mientras adivinado = falso y seguirJugando = verdadero hacer
		intentos <- intentos + 1
		Escribir "Intento ", intentos, ": Ingresa tu numero:"
		Leer intentoUsuario
		Si longitud(intentoUsuario) <> longitudN entonces
			Escribir "Tu numero debe tener ", longitudN, " cifras. Intentalo de nuevo."
		Sino
			bienUbicados <- 0
			malUbicados <- 0
			Para i <- 1 Hasta longitudN Hacer
				Si subcadena(numeroSecreto, i, i) = Subcadena(intentoUsuario, i, i) Entonces
					bienUbicados <- bienUbicados + 1
				FinSi
			FinPara
			
			Para i <- 1 Hasta longitudN hacer
				Para j <- 1 Hasta longitudN hacer
					Si subcadena(intentoUsuario, i, i) = Subcadena(numeroSecreto, j, j) Y i <> j Entonces
						malUbicados <- malUbicados + 1
					FinSi
				FinPara
			FinPara
			
			Escribir intentoUsuario, " tiene ", bienUbicados, " bien ubicados y ", malUbicados, " mal ubicados"
			
			Si bienUbicados = longitudN entonces
				adivinado <- verdadero
			Sino
				Si intentos mod 6 = 0 entonces
					Escribir ""
					Escribir "Ya llevas ", intentos, " intentos, de verdad quieres seguir intentando? [y/n]"
					Leer respuestaContinuar
					Si Minusculas(respuestaContinuar) = "n" Entonces
						seguirJugando <- Falso
					FinSi
				FinSi
			FinSi
		FinSi
		
		Escribir ""
	FinMientras
	
	Si adivinado = verdadero entonces
		Escribir "Felicidades, ganaste esta vez..."
	Sino
		Escribir "Perdedor, el numero secreto era: " numeroSecreto
		Escribir "Que pena, suerte a la proxima"
	FinSi
	escribir " "
	Escribir "Que tengas un buen día, muchas gracias por usar mi programa."
	Escribir "Creado por Luna Elena Garcia Tapia para la clase de programación I."
FinAlgoritmo