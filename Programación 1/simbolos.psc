Algoritmo genera_simbolos
	//hacer un cuadrado n por n  debe ser un numero impar 
	//dimension rango [5,21]
	//simbolo: X
	//tamaño: Y
	
	definir numeroSecreto como Cadena
	definir intentoUsuario como Cadena
	definir intentos, bienUbicados, malUbicados como Entero
	definir adivinado, seguirJugando como Logico
	definir respuestaContinuar como caracter
	definir i, j, digitoAzar como entero
	definir digitoCadena como cadena
	definir digitoRepetido como logico
	 
	definir longitudN como Entero
	definir simbolo como cadena
	
	simbolo<-"*"
	
	repetir
		escribir "Bienvenid@ a mi programa!"
		escribir "Ingresa el tamaño  [entre 5 y 21 (solo números impares)]:"
		leer longitudN
		si longitudN=6 o longitudN=8 o longitudN=10 o longitudN=12 o longitudN=14 o longitudN=16 o longitudN=18 o longitudN=20 entonces
			escribir "Error: SOLO numero impares entre 5 y 21."
			escribir " "
		finsi
	Hasta Que longitudN=5 o longitudN=7 o longitudN=9 o longitudN=11 o longitudN=13 o longitudN=15 o longitudN=17 o longitudN=19 o longitudN=21
	
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
