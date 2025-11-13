Algoritmo sin_titulo
	// como determinar el dia de tu nacimiento si es valido o real
	definir fecha, dia, mes, anio Como Cadena
	definir dia_real, mes_real, anio_real Como Real
	
	Escribir "Dame una fecha (Solo XX/XX/XXXX)."
	leer fecha
	
	dia<-Subcadena(fecha,Longitud(fecha)-10,Longitud(fecha)-8)
	mes<-Subcadena(fecha,Longitud(fecha)-6,Longitud(fecha)-5)
	anio<-Subcadena(fecha,Longitud(fecha)-3,Longitud(fecha)-0)
	dia_real<-ConvertirANumero(dia)
	mes_real<-ConvertirANumero(mes)
	anio_real<-ConvertirANumero(anio)

	Si (longitud(fecha) > 10) o (longitud(fecha) < 1) Entonces
		Escribir "Dame una fecha (Solo XX/XX/XXXX)."
		leer fecha
	SiNo
		Repetir
			Escribir "Error fecha invalida (Tienen que ser 10 caracteres)."
			Escribir "Dame una fecha (Solo XX/XX/XXXX)."
			Leer fecha
		Mientras Que (longitud(fecha) > 10) o (longitud(fecha) < 1)
	Fin Si
	
	Segun mes_real Hacer
		1:
			mes<-"Enero"
		2:
			mes<-"Febrero"
		3:
			mes<-"Marzo"
		4:
			mes<-"Abril"
		5:
			mes<-"Mayo"
		6:  
			mes<-"Junio"
		7:
			mes<-"Julio"
		8:
			mes<-"Agosto"
		9:
			mes<-"Septiembre"
		10:
			mes<-"Octubre"
		11:
			mes<-"Noviembre"
		12:
			mes<-"Diciembre"
		De Otro Modo:
	Fin Segun
	
	Segun dia_real Hacer
		1:
			dia<-"Domingo"
		2:
			dia<-"Lunes"
		3:
			dia<-"Martes"
		4:
			dia<-"Miercoles"
		5:
			dia<-"Jueves"
		6:  
			dia<-"Viernes"
		7:
			dia<-"Sabado"
		De Otro Modo:
	Fin Segun
	
	
	Escribir dia " de " mes " de " anio
	
	
FinAlgoritmo
