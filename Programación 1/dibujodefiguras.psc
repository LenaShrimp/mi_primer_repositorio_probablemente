Algoritmo dibujodefiguras
	
	definir opciones, tamanio como entero
	definir simbolo como caracter
	definir i, j, mitad como entero
	
	escribir "Bienvenid@ a mi programa, este te presentara con un menú de opciones donde puedes decidir que figura imprimir!"
	escribir ""
	repetir
		escribir "---------------------------------------------"
		escribir "                    Menú"
		escribir "---------------------------------------------"
		escribir "1. Imprimir Reloj de Arena"
		escribir "2. Imprimir Rombo"
		escribir "3. Imprimir Moño"
		escribir "4. Imprimir Copa"
		escribir "5. Imprimir TODAS las figuras"
		escribir "6. Salir"
		escribir "---------------------------------------------"
		
		repetir
			escribir "Elige una opcion (del 1 al 6)"
			leer opciones
			si opciones < 1 o opciones > 6 entonces
				escribir "Error: SOLO opciones del 1 al 6."
				escribir " "
			finsi
		Hasta Que opciones >= 1 y opciones <= 6
	
		
		si opciones >= 1 y opciones <= 5 entonces
			repetir
				escribir "Ingrese el tamaño de la figura (numero impar entre 5 y 21):"
				leer tamanio
				si (tamanio < 5 o tamanio > 21 o tamanio mod 2 = 0) entonces
					escribir "Error: El tamaño debe ser un numero IMPAR entre 5 y 21."
				finsi
			hasta que (tamanio >= 5 y tamanio <= 21 y tamanio mod 2 <> 0)
			
			escribir "Ingrese el simbolo a utilizar para el dibujo:"
			leer simbolo
		finsi
		
		mitad <- trunc(tamanio/2)
		
		segun opciones hacer
			1:
				escribir " "
				escribir "--- RELOJ DE ARENA RELLENO ---"
				para i <- 0 hasta tamanio - 1
					para j <- 0 hasta tamanio - 1
						si abs(j - mitad) <= mitad - abs(i - mitad) entonces
							escribir sin saltar simbolo
						sino
							escribir sin saltar " "
						finsi
					finpara
					escribir ""
				finpara
				
				escribir " "
				escribir "--- RELOJ DE ARENA HUECO ---"
				para i <- 0 hasta tamanio-1
					para j <- 0 hasta tamanio-1
						si i=0 o i=tamanio-1 o j=i o j+i = tamanio-1 entonces
							escribir sin saltar simbolo
						sino
							escribir sin saltar " "
						finsi
					finpara
					escribir ""
				finpara
				
			2:
				escribir " "
				escribir "--- ROMBO RELLENO ---"
				para i <- 0 hasta tamanio - 1
					para j <- 0 hasta tamanio - 1
						si abs(i - mitad) + abs(j - mitad) <= mitad entonces
							escribir sin saltar simbolo
						sino
							escribir sin saltar " "
						finsi
					finpara
					escribir ""
				finpara
				
				escribir " "
				escribir "--- ROMBO HUECO ---"
				para i <- 0 hasta tamanio-1
					para j <- 0 hasta tamanio-1
						si abs(i-mitad) + abs(j-mitad) = mitad entonces
							escribir sin saltar simbolo
						sino
							escribir sin saltar " "
						finsi
					finpara
					escribir ""
				finpara
				
			3:
				escribir " "
				escribir "--- MOÑO RELLENO ---"
				para i <- 0 hasta tamanio - 1
					para j <- 0 hasta tamanio - 1
						si abs(i - mitad) <= abs(j - mitad) entonces
							escribir sin saltar simbolo
						sino
							escribir sin saltar " "
						finsi
					finpara
					escribir ""
				finpara
				
				escribir " "
				escribir "--- MOO HUECO ---"
				para i <- 0 hasta tamanio-1
					para j <- 0 hasta tamanio-1
						si j=0 o j=tamanio-1 o j=i o i+j=tamanio-1 entonces
							escribir sin saltar simbolo
						sino
							escribir sin saltar " "
						finsi
					finpara
					escribir ""
				finpara
				
			4:
				escribir " "
				escribir "--- COPA RELLENA ---"
				para i <- 0 hasta tamanio - 1
					para j <- 0 hasta tamanio - 1
						si (i <= mitad y abs(j - mitad) <= mitad - i) o (i > mitad y i < tamanio - 1 y j = mitad) o (i = tamanio - 1) entonces
							escribir sin saltar simbolo
						sino
							escribir sin saltar " "
						finsi
					finpara
					escribir ""
				finpara
				
				escribir " "
				escribir "--- COPA HUECA ---"
				para i <- 0 hasta mitad
					para j <- 0 hasta tamanio-1
						si i=0 o j=i o j=(tamanio-1-i) entonces
							escribir sin saltar simbolo
						sino
							escribir sin saltar " "
						finsi
					finpara
					escribir ""
				finpara
				para i <- mitad+1 hasta tamanio-2
					para j <- 0 hasta tamanio-1
						si j = mitad entonces
							escribir sin saltar simbolo
						sino
							escribir sin saltar " "
						finsi
					finpara
					escribir ""
				finpara
				para j <- 0 hasta tamanio-1
					escribir sin saltar simbolo
				finpara
				escribir ""
				
			5:
				escribir "--- DIBUJANDO TODAS LAS FIGURAS ---"
				
				escribir " "
				escribir "--- RELOJ DE ARENA RELLENO ---"
				para i <- 0 hasta tamanio - 1
					para j <- 0 hasta tamanio - 1
						si abs(j - mitad) <= mitad - abs(i - mitad) entonces
							escribir sin saltar simbolo
						sino
							escribir sin saltar " "
						finsi
					finpara
					escribir ""
				finpara
				escribir " "
				escribir "--- RELOJ DE ARENA HUECO ---"
				para i <- 0 hasta tamanio-1
					para j <- 0 hasta tamanio-1
						si i=0 o i=tamanio-1 o j=i o j+i = tamanio-1 entonces
							escribir sin saltar simbolo
						sino
							escribir sin saltar " "
						finsi
					finpara
					escribir ""
				finpara
				
				escribir " "
				escribir "--- ROMBO RELLENO ---"
				para i <- 0 hasta tamanio - 1
					para j <- 0 hasta tamanio - 1
						si abs(i - mitad) + abs(j - mitad) <= mitad entonces
							escribir sin saltar simbolo
						sino
							escribir sin saltar " "
						finsi
					finpara
					escribir ""
				finpara
				escribir " "
				escribir "--- ROMBO HUECO ---"
				para i <- 0 hasta tamanio-1
					para j <- 0 hasta tamanio-1
						si abs(i-mitad) + abs(j-mitad) = mitad entonces
							escribir sin saltar simbolo
						sino
							escribir sin saltar " "
						finsi
					finpara
					escribir ""
				finpara
				
				escribir " "
				escribir "--- MOÑO RELLENO ---"
				para i <- 0 hasta tamanio - 1
					para j <- 0 hasta tamanio - 1
						si abs(i - mitad) <= abs(j - mitad) entonces
							escribir sin saltar simbolo
						sino
							escribir sin saltar " "
						finsi
					finpara
					escribir ""
				finpara
				escribir " "
				escribir "--- MOÑO HUECO ---"
				para i <- 0 hasta tamanio-1
					para j <- 0 hasta tamanio-1
						si j=0 o j=tamanio-1 o j=i o i+j=tamanio-1 entonces
							escribir sin saltar simbolo
						sino
							escribir sin saltar " "
						finsi
					finpara
					escribir ""
				finpara
				
				escribir " "
				escribir "--- COPA RELLENA ---"
				para i <- 0 hasta tamanio - 1
					para j <- 0 hasta tamanio - 1
						si (i <= mitad y abs(j - mitad) <= mitad - i) o (i > mitad y i < tamanio - 1 y j = mitad) o (i = tamanio - 1) entonces
							escribir sin saltar simbolo
						sino
							escribir sin saltar " "
						finsi
					finpara
					escribir ""
				finpara
				escribir " "
				escribir "--- COPA HUECA ---"
				para i <- 0 hasta mitad
					para j <- 0 hasta tamanio-1
						si i=0 o j=i o j=(tamanio-1-i) entonces
							escribir sin saltar simbolo
						sino
							escribir sin saltar " "
						finsi
					finpara
					escribir ""
				finpara
				para i <- mitad+1 hasta tamanio-2
					para j <- 0 hasta tamanio-1
						si j = mitad entonces
							escribir sin saltar simbolo
						sino
							escribir sin saltar " "
						finsi
					finpara
					escribir ""
				finpara
				para j <- 0 hasta tamanio-1
					escribir sin saltar simbolo
				finpara
				escribir ""
				
			6:
				escribir "Adios, gracias por usar mi programa, creado por Luna Elena Garcia Tapia para programación I."
			de otro modo:
				si opciones <> 6 entonces
					escribir "ERROR: Opcion invalida, solo numeros enteros del 1 al 6."
				finsi
		finsegun
		si opciones >= 1 y opciones <= 5 entonces
			escribir ""
			escribir "Presione ENTER para continuar..."
			esperar tecla
			limpiar pantalla
		finsi
		
	hasta que opciones = 6
FinAlgoritmo