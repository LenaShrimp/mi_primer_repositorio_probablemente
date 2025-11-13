Algoritmo Generar_Contrasena
	//generar frase compuesta ejemplo: Camaron Con Sal
	//invertir el orden. Ejemplo: SalConCamaron
	//Cambiamos letras por numeros o simbolos ejemplo: S4!C0nC4m4r0n??
	
	//Ejercicio: genera contraseña
	//numeros[0-9]
	//Simbolos [!#@_$?]
	//Mayusculas
	//Minuscula
	//Longutud [8+]
	
	//Crear un arreglo [12]
	//azar[1,4]
	//Azar[1, longitud]
	
	//crear 3 arreglos. uno de números [10], otro de simbolos [6], mayusculas[23] y convertir mayusculas a minusculas
	
	definir arregloSim, arregloMay, arregloContrasena como cadena
	definir random, arregloNum, randomArreglo Como Real
	definir i como entero
	
	Dimensionar arregloContrasena[12]
	
	Dimensionar arregloNum[10]
	Dimensionar arregloSim[6]
	Dimensionar arregloMay[26]
	
	arregloNum[1] <- 0
	arregloNum[2] <- 1
	arregloNum[3] <- 2
	arregloNum[4] <- 3
	arregloNum[5] <- 4
	arregloNum[6] <- 5
	arregloNum[7] <- 6
	arregloNum[8] <- 7
	arregloNum[9] <- 8
	arregloNum[10] <- 9
	
	arregloSim[1] <- "!"
	arregloSim[2] <- "#"
	arregloSim[3] <- "@"
	arregloSim[4] <- "_"
	arregloSim[5] <- "$"
	arregloSim[6] <- "?"
	
	arregloMay[1] <- "A"
	arregloMay[2] <- "B"
	arregloMay[3] <- "C"
	arregloMay[4] <- "D"
	arregloMay[5] <- "E"
	arregloMay[6] <- "F"
	arregloMay[7] <- "G"
	arregloMay[8] <- "H"
	arregloMay[9] <- "I"
	arregloMay[10] <- "J"
	arregloMay[11] <- "K"
	arregloMay[12] <- "L"
	arregloMay[13] <- "M"
	arregloMay[14] <- "N"
	arregloMay[15] <- "O"
	arregloMay[16] <- "P"
	arregloMay[17] <- "Q"
	arregloMay[18] <- "R"
	arregloMay[19] <- "S"
	arregloMay[20] <- "T"
	arregloMay[21] <- "U"
	arregloMay[22] <- "V"
	arregloMay[23] <- "W"
	arregloMay[24] <- "X"
	arregloMay[25] <- "Y"
	arregloMay[26] <- "Z"
	
	Para i<-1 Hasta 12 Con Paso 1 Hacer
		random<-Aleatorio(1,4)
		Segun random Hacer
			1:
				randomArreglo<-Aleatorio(1,10)
				arregloContrasena[i]<-ConvertirATexto(arregloNum[randomArreglo])
			2:
				randomArreglo<-Aleatorio(1,6)
				arregloContrasena[i]<-arregloSim[randomArreglo]
			3:
				randomArreglo<-Aleatorio(1,26)
				arregloContrasena[i]<-arregloMay[randomArreglo]
			4:
				//minusculas
				randomArreglo<-Aleatorio(1,26)
				arregloContrasena[i]<-Minusculas(arregloMay[randomArreglo])
		Fin Segun
	Fin Para

	escribir "Bienvenid@ a mi programa, este genera una contraseña segura usando arreglos."
	escribir " "
	escribir sin saltar "Tu contraseña segura es: "  	
	
	para i<-1 hasta 12 Hacer
		escribir sin saltar arregloContrasena[i]
	FinPara
	
	escribir " "
	escribir " "
	Escribir "¡Gracias por usar mi programa!, creado por Luna Elena Garcia Tapia para programación I."
	
FinAlgoritmo
