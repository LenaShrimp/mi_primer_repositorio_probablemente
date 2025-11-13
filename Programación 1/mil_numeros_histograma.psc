Algoritmo mil_numeros_histograma
			
			definir histograma como cadena
			definir random, arregloNumeros, promedio Como Real
			definir i como entero
			
			Dimensionar arregloNumeros[34]
			
			
			arregloNumeros[1] <- 17
			arregloNumeros[2] <- 18
			arregloNumeros[3] <- 19
			arregloNumeros[4] <- 20
			arregloNumeros[5] <- 21
			arregloNumeros[6] <- 22
			arregloNumeros[7] <- 23
			arregloNumeros[8] <- 24
			arregloNumeros[9] <- 25
			arregloNumeros[10] <- 26
			arregloNumeros[11] <- 27
			arregloNumeros[12] <- 28
			arregloNumeros[13] <- 29
			arregloNumeros[14] <- 30
			arregloNumeros[15] <- 31
			arregloNumeros[16] <- 32
			arregloNumeros[17] <- 33
			arregloNumeros[18] <- 34
			arregloNumeros[19] <- 35
			arregloNumeros[20] <- 36
			arregloNumeros[21] <- 37
			arregloNumeros[22] <- 38
			arregloNumeros[23] <- 39
			arregloNumeros[24] <- 40
			arregloNumeros[25] <- 41
			arregloNumeros[26] <- 42
			arregloNumeros[27] <- 43
			arregloNumeros[28] <- 44
			arregloNumeros[29] <- 45
			arregloNumeros[30] <- 46
			arregloNumeros[31] <- 47
			arregloNumeros[32] <- 48
			arregloNumeros[33] <- 49
			arregloNumeros[34] <- 50
			
			//histogram([17,23,21,22,24],3)
			histograma<-"histogram(["
			promedio<-0
			Para i<-1 Hasta 1000 Con Paso 1 Hacer

				si i<1000 Entonces
					random<-Aleatorio(1,34)
					promedio<-promedio+arregloNumeros[random]
					histograma<-Concatenar(histograma, ConvertirATexto(arregloNumeros[random]))
					histograma<-Concatenar(histograma, ",")
				SiNo
					histograma<-Concatenar(histograma, ConvertirATexto(arregloNumeros[random]))
					histograma<-Concatenar(histograma, "],3)")
				FinSi
			Fin Para
			
			promedio<-promedio/1000
			
			
			escribir "Bienvenid@ a mi programa, este genera un histograma usando arreglos."
			escribir " "
			escribir sin saltar "Tu histograma es: "  histograma
			

			
			escribir " "
			escribir " "
			escribir "El promedio del histograma es: " promedio
			escribir" "
			escribir"Te recomiendo copiar y pegar esta linea en el buscador primero para quitar los espacios, y luego copiarla y pegarla en Desmond para hacer un histograma."
			escribir""
			Escribir "¡Gracias por usar mi programa!, creado por Luna Elena Garcia Tapia para programación I."
FinAlgoritmo
