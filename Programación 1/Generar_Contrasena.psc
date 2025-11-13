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
	
	//crear 3 arreglos. uno de números [9], otro de simbolos [6], mayusculas[23] y convertir mayusculas a minusculas
	definir contrasenaBase, contrasenaFinal,contrasena, arregloSim, arregloMay, arregloMin, randomCadena como cadena
	definir num, random, arregloNum, tamano Como Real
	definir i, j como entero
	
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
	
	contrasenaBase<-""
	random<-Aleatorio(1,4)
	tamano<-10
	Segun random Hacer
		1:
			tamano<-26
		2:
			tamano<-26
		3:
			tamano<-6
		4:
			tamano<-10
	Fin Segun
	
	Para i<-tamano Hasta 1 Con Paso -1 Hacer
		random<-Aleatorio(1,4)
		randomCadena<-ConvertirATexto(random)
		Segun random Hacer
			1:
				si tamano<=10 entonces
					randomCadena<-ConvertirATexto(arregloNum[i])
				SiNo
					randomCadena<-arregloMay[i]
				finsi
					
			2:
				si tamano<=6 entonces
					randomCadena<-arregloSim[i]
				SiNo
					randomCadena<-Minusculas(arregloMay[i])
				finsi
			3:
				randomCadena<-arregloMay[i]
			4:
				randomCadena<-Minusculas(arregloMay[i])
		Fin Segun
		contrasenaBase<-Concatenar(contrasenaBase, randomCadena)
	Fin Para
	contrasenaFinal<-contrasenaBase
	
	Para i<-tamano Hasta 1 Con Paso -1 Hacer
		random<-Aleatorio(1,4)
		randomCadena<-ConvertirATexto(random)
		Segun random Hacer
			1:
				si tamano<=10 entonces
					randomCadena<-ConvertirATexto(arregloNum[i])
				SiNo
					randomCadena<-arregloMay[i]
				finsi
				
			2:
				si tamano<=6 entonces
					randomCadena<-arregloSim[i]
				SiNo
					randomCadena<-Minusculas(arregloMay[i])
				finsi
			3:
				randomCadena<-arregloMay[i]
			4:
				randomCadena<-Minusculas(arregloMay[i])
		Fin Segun
		contrasenaBase<-Concatenar(contrasenaBase, randomCadena)
	Fin Para
	contrasenaFinal<-Concatenar(contrasenaFinal,contrasenaBase)
	
	contrasena<-contrasenafinal
	escribir "tu contraseña segura es: " contrasena
	
	
	
FinAlgoritmo
