Algoritmo sin_titulo
	Definir dia_semana Como Cadena
	Definir fecha Como Cadena
	Definir dia, mes, anio Como Cadena
	definir dia_real, anio_real como real
	definir es_bisiesto Como Logico
	
	fecha<-"Lunes"
	fecha<-"09/09/2025"
	
	Escribir "Buenos días este programa te pide un día de la semana y una fecha, en base a eso te dice si es valida o no."
	Escribir " "
	Escribir "Introduce el día de la semana (Lunes, Martes, Miercoles, Jueves, Viernes, Sabado o Domingo)."
	Leer dia_semana
	Escribir "Hola dime el día, mes y año (Solo este formato: XX/XX/XXXX)."
	Leer fecha
	

	dia<-Subcadena(fecha,Longitud(fecha)-10,Longitud(fecha)-8)
	mes<-Subcadena(fecha,Longitud(fecha)-6,Longitud(fecha)-5)
	anio<-Subcadena(fecha,Longitud(fecha)-3,Longitud(fecha)-0)
	dia_real<-ConvertirANumero(dia)
	anio_real<-ConvertirANumero(anio)
	
	Si mes = "01" Entonces
		mes <- "Enero"
	SiNo
		Si mes = "02" Entonces
			mes <- "Febrero"
		SiNo
			Si mes = "03" Entonces
				mes <- "Marzo"
			SiNo
				Si mes = "04" Entonces
					mes <- "Abril"
				SiNo
					Si mes = "05" Entonces
						mes <- "Mayo"
					SiNo
						Si mes = "06" Entonces
							mes <- "Junio"
						SiNo
							Si mes = "07" Entonces
								mes <- "Julio"
							SiNo
								Si mes = "08" Entonces
									mes <- "Agosto"
								SiNo
									Si mes = "09" Entonces
										mes <- "Septiembre"
									SiNo
										Si mes = "10" Entonces
											mes <- "Octubre"
										SiNo
											Si mes = "11" Entonces
												mes <- "Noviembre"
											SiNo
												Si mes = "12" Entonces
													mes <- "Diciembre"
												SiNo
													mes <- "Mes inválido"
												Fin Si
											Fin Si
										Fin Si
									Fin Si
								Fin Si
							Fin Si
						Fin Si
					Fin Si
				Fin Si
			Fin Si
		Fin Si
	Fin Si
	
    Si (anio_real MOD 4 = 0) Y ((anio_real MOD 100 <> 0) O (anio_real MOD 400 = 0)) Entonces
		
        Escribir "El año ", anio_real, " es bisiesto."
		es_bisiesto<-Verdadero
    Sino
        Escribir "El año ", anio_real, " no es bisiesto."
		es_bisiesto<-Falso
    FinSi
	
	Escribir " "
	
	Si dia_real >= 31 Entonces
		Escribir dia_semana " " dia " de " mes " de " anio " es una fecha valida."
	SiNo
		Si (mes = "Abril" O mes= "Junio" O mes="Septiembre" o mes="Noviembre") y dia_real >= 30 Entonces
			Escribir dia_semana " " dia " de " mes " de " anio " es una fecha valida."
		SiNo
			Si (mes = "Febrero") y dia_real >= 29 Entonces
				Escribir dia_semana " " dia " de " mes " de " anio " es una fecha valida."
			SiNo
				Si (es_bisiesto = VERDADERO) y dia_real >= 28 Entonces
					Escribir dia_semana " " dia " de " mes " de " anio " es una fecha valida."
				SiNo
					Escribir dia_semana " " dia " de " mes " de " anio " es una fecha invalida."
				Fin Si
			Fin Si
		Fin Si
	Fin Si
	Escribir " "
	Escribir "Gracias por usar nuestro programa, este fue hecho en equipo por Luna Elena Garcia Tapia y Kris (inserte apellido) para la clase de Programación 1."
FinAlgoritmo
