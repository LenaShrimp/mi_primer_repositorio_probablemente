Algoritmo numero_dia_de_la_semana12_09_25
	//Pedirle al usuario un numero que este entre el 1 y el 7 (inclusivo)
	definir num Como Real
	escribir "quiero numero (solo del 1 al 7)"
	leer  num 
	
	Escribir "el número que elegiste es:"
	si (num > 7) o (num < 1) entonces 
		escribir "numero invalido, generare uno al azar."
		num<-aleatorio(1,7)
		Escribir num
	finsi
	
	
	Segun num Hacer
		1:
			Escribir "Domingo"
		2:
			Escribir "Lunes"
		3:
			Escribir "Martes"
		4:
			Escribir "Miercoles"
		5:
			Escribir "Jueves"
		6:  
			Escribir "Viernes"
		7:
			Escribir "Sabado"
		De Otro Modo:
			
	Fin Segun
	
FinAlgoritmo
