Algoritmo CURP
	
	Escribir "Bienvenid@ al programa para generar la CURP."
	
	// Variables de entrada
	Definir primer_apellido, segundo_apellido, nombre_completo, fecha_nacimiento, sexo, estado_nacimiento Como Caracter
	
	// Variables de procesamiento
	Definir primer_nombre Como Caracter
	Definir anio_nac_num Como Entero
	Definir anio_str, mes_str, dia_str Como Caracter
	Definir letra Como Caracter
	Definir i Como Entero
	Definir vocal_encontrada, consonante_encontrada Como Logico
	
	// Variables temporales para manipulación de cadenas
	Definir cadena_temporal, cadena_resultado Como Caracter
	
	// Variables para las partes de la CURP
	Definir curp_1_4, curp_5_10, curp_11, curp_12_13, curp_14_16, curp_17, curp_18, curp_final Como Caracter
	
	// --- SECCIÓN DE ENTRADA DE DATOS CON VALIDACIÓN ---
	Repetir
		Escribir "Escribe tu primer apellido (paterno):"
		Leer primer_apellido
	Mientras Que primer_apellido = ""
	
	Escribir "Escribe tu segundo apellido (materno). Si no tienes, presiona Enter."
	Leer segundo_apellido
	
	Repetir
		Escribir "Escribe tu nombre o nombres completos:"
		Leer nombre_completo
	Mientras Que nombre_completo = ""
	
	Repetir
		Escribir "Escribe tu fecha de nacimiento (formato dd/mm/aaaa):"
		Leer fecha_nacimiento
	Mientras Que Longitud(fecha_nacimiento) <> 10 O Subcadena(fecha_nacimiento,3,3) <> "/" O Subcadena(fecha_nacimiento,6,6) <> "/"
	
	Repetir
		Escribir "Escribe tu sexo (H para hombre, M para mujer):"
		Leer sexo
		sexo <- Mayusculas(sexo)
	Mientras Que sexo <> "H" Y sexo <> "M"
	
	Escribir "Escribe la clave de tu entidad federativa de nacimiento (ej. SR, DF, NL, etc.):"
	Leer estado_nacimiento
	estado_nacimiento <- Mayusculas(estado_nacimiento)
	
	// --- PROCESAMIENTO Y GENERACIÓN DE LA CURP ---
	
	primer_apellido <- Mayusculas(primer_apellido)
	segundo_apellido <- Mayusculas(segundo_apellido)
	nombre_completo <- Mayusculas(nombre_completo)
	
	// ** PASO 1: Procesamiento de Nombres y Apellidos **
	
	// --- Eliminación de prefijos en primer_apellido ---
	Si Longitud(primer_apellido) >= 3 Y Subcadena(primer_apellido, 1, 3) = "DE " Entonces
		primer_apellido <- Subcadena(primer_apellido, 4, Longitud(primer_apellido))
	FinSi
	Si Longitud(primer_apellido) >= 4 Y Subcadena(primer_apellido, 1, 4) = "DEL " Entonces
		primer_apellido <- Subcadena(primer_apellido, 5, Longitud(primer_apellido))
	FinSi
	
	// --- Reemplazo de nombres comunes ---
	Si Longitud(nombre_completo) >= 6 Y Subcadena(nombre_completo, 1, 6) = "MARIA " Entonces
		nombre_completo <- Concatenar("MA. ", Subcadena(nombre_completo, 7, Longitud(nombre_completo)))
	FinSi
	Si Longitud(nombre_completo) >= 5 Y Subcadena(nombre_completo, 1, 5) = "JOSE " Entonces
		nombre_completo <- Concatenar("J. ", Subcadena(nombre_completo, 6, Longitud(nombre_completo)))
	FinSi
	
	// --- Separar el primer nombre ---
	i <- 1
	Mientras i <= Longitud(nombre_completo) Y Subcadena(nombre_completo,i,i) <> " "
		i <- i + 1
	FinMientras
	primer_nombre <- Subcadena(nombre_completo,1,i-1)
	
	// --- Sustitución de Ñ por X en primer_apellido ---
	cadena_temporal <- primer_apellido
	cadena_resultado <- ""
	Para i <- 1 Hasta Longitud(cadena_temporal)
		letra <- Subcadena(cadena_temporal, i, i)
		Si letra = "Ñ" Entonces
			cadena_resultado <- Concatenar(cadena_resultado, "X")
		Sino
			cadena_resultado <- Concatenar(cadena_resultado, letra)
		FinSi
	FinPara
	primer_apellido <- cadena_resultado
	
	// --- Sustitución de Ñ por X en segundo_apellido ---
	cadena_temporal <- segundo_apellido
	cadena_resultado <- ""
	Para i <- 1 Hasta Longitud(cadena_temporal)
		letra <- Subcadena(cadena_temporal, i, i)
		Si letra = "Ñ" Entonces
			cadena_resultado <- Concatenar(cadena_resultado, "X")
		Sino
			cadena_resultado <- Concatenar(cadena_resultado, letra)
		FinSi
	FinPara
	segundo_apellido <- cadena_resultado
	
	// --- Sustitución de Ñ por X en primer_nombre ---
	cadena_temporal <- primer_nombre
	cadena_resultado <- ""
	Para i <- 1 Hasta Longitud(cadena_temporal)
		letra <- Subcadena(cadena_temporal, i, i)
		Si letra = "Ñ" Entonces
			cadena_resultado <- Concatenar(cadena_resultado, "X")
		Sino
			cadena_resultado <- Concatenar(cadena_resultado, letra)
		FinSi
	FinPara
	primer_nombre <- cadena_resultado
	
	// ** PASO 2: Generar los primeros 4 caracteres de la CURP **
	curp_1_4 <- Subcadena(primer_apellido,1,1)
	
	vocal_encontrada <- Falso
	Para i <- 2 Hasta Longitud(primer_apellido)
		letra <- Subcadena(primer_apellido,i,i)
		Si (letra="A" O letra="E" O letra="I" O letra="O" O letra="U") Y NO vocal_encontrada Entonces
			curp_1_4 <- Concatenar(curp_1_4, letra)
			vocal_encontrada <- Verdadero
		FinSi
	FinPara
	Si NO vocal_encontrada Entonces
		curp_1_4 <- Concatenar(curp_1_4, "X")
	FinSi
	
	Si segundo_apellido = "" Entonces
		curp_1_4 <- Concatenar(curp_1_4, "X")
	Sino
		curp_1_4 <- Concatenar(curp_1_4, Subcadena(segundo_apellido,1,1))
	FinSi
	
	curp_1_4 <- Concatenar(curp_1_4, Subcadena(primer_nombre,1,1))
	
	// Excepción para palabras altisonantes
	Si curp_1_4="BUEI" O curp_1_4="CACA" O curp_1_4="CAGA" O curp_1_4="COGE" O curp_1_4="CULO" O curp_1_4="FETO" O curp_1_4="JOTO" O curp_1_4="KAGO" O curp_1_4="KOJO" O curp_1_4="MAMO" O curp_1_4="MEAS" O curp_1_4="MEON" O curp_1_4="MION" O curp_1_4="PEDO" O curp_1_4="PENE" O curp_1_4="PUTA" O curp_1_4="QULO" O curp_1_4="RUIN" Entonces
		// CORRECCIÓN: Se anidan las llamadas a Concatenar para que cada una solo tenga dos argumentos.
		curp_1_4 <- Concatenar(Concatenar(Subcadena(curp_1_4,1,1), "X"), Subcadena(curp_1_4,3,4))
	FinSi
	
	// ** PASO 3: Fecha de Nacimiento (Caracteres 5 a 10) **
	dia_str <- Subcadena(fecha_nacimiento,1,2)
	mes_str <- Subcadena(fecha_nacimiento,4,5)
	anio_str <- Subcadena(fecha_nacimiento,7,10)
	// Se anidan las llamadas a Concatenar
	curp_5_10 <- Concatenar(Concatenar(Subcadena(anio_str,3,4), mes_str), dia_str)
	
	// ** PASO 4: Sexo (Caracter 11) **
	curp_11 <- sexo
	
	// ** PASO 5: Entidad Federativa (Caracteres 12 y 13) **
	curp_12_13 <- estado_nacimiento
	
	// ** PASO 6: Consonantes Internas (Caracteres 14 a 16) **
	consonante_encontrada <- Falso
	curp_14_16 <- ""
	Para i <- 2 Hasta Longitud(primer_apellido)
		letra <- Subcadena(primer_apellido,i,i)
		Si NO(letra="A" O letra="E" O letra="I" O letra="O" O letra="U") Y NO consonante_encontrada Entonces
			curp_14_16 <- letra
			consonante_encontrada <- Verdadero
		FinSi
	FinPara
	Si NO consonante_encontrada Entonces
		curp_14_16 <- "X"
	FinSi
	
	consonante_encontrada <- Falso
	Si segundo_apellido <> "" Entonces
		Para i <- 2 Hasta Longitud(segundo_apellido)
			letra <- Subcadena(segundo_apellido,i,i)
			Si NO(letra="A" O letra="E" O letra="I" O letra="O" O letra="U") Y NO consonante_encontrada Entonces
				curp_14_16 <- Concatenar(curp_14_16, letra)
				consonante_encontrada <- Verdadero
			FinSi
		FinPara
	FinSi
	Si NO consonante_encontrada Entonces
		curp_14_16 <- Concatenar(curp_14_16, "X")
	FinSi
	
	consonante_encontrada <- Falso
	Para i <- 2 Hasta Longitud(primer_nombre)
		letra <- Subcadena(primer_nombre,i,i)
		Si NO(letra="A" O letra="E" O letra="I" O letra="O" O letra="U") Y NO consonante_encontrada Entonces
			curp_14_16 <- Concatenar(curp_14_16, letra)
			consonante_encontrada <- Verdadero
		FinSi
	FinPara
	Si NO consonante_encontrada Entonces
		curp_14_16 <- Concatenar(curp_14_16, "X")
	FinSi
	
	// ** PASO 7: Homoclave (Caracter 17) **
	anio_nac_num <- ConvertirANumero(anio_str)
	Si anio_nac_num < 2000 Entonces
		curp_17 <- "0" // Placeholder
	Sino
		curp_17 <- "A" // Placeholder
	FinSi
	
	// ** PASO 8: Juntar los primeros 17 caracteres **
	// CORRECCIÓN: Se construye la cadena final paso a paso para usar Concatenar con solo dos argumentos.
	curp_final <- curp_1_4
	curp_final <- Concatenar(curp_final, curp_5_10)
	curp_final <- Concatenar(curp_final, curp_11)
	curp_final <- Concatenar(curp_final, curp_12_13)
	curp_final <- Concatenar(curp_final, curp_14_16)
	curp_final <- Concatenar(curp_final, curp_17)
	
	// ** PASO 9: Dígito Verificador (Posición 18) **
	curp_18 <- "8"//laceholder para el dígito verificador
	
	// ** PASO 10: Concatenar el dígito verificador para la CURP final **
	curp_final <- Concatenar(curp_final, curp_18)
	
	// --- SALIDA DEL RESULTADO ---
	Escribir " "
	Escribir "---------------------------------------------"
	Escribir "La CURP generada es: ", curp_final
	Escribir "---------------------------------------------"
	Escribir "Aviso: La homoclave (penúltimo dígito) y el dígito verificador (último) son asignados oficialmente. Los generados aquí son una simulación."

FinAlgoritmo