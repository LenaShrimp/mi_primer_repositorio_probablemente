Algoritmo arabigo_a_romano_corregido
	Escribir "Hola, bienvenid@ con este programa puedes ingresar un número arabigo y te devuelve el mismo en número romano."
	
	Definir romano Como Caracter
	Definir arabigo, unidades, decenas, centenas, millares Como Entero
	
	romano <- ""

	Escribir "Introduce un número entero entre 1 y 3999:"
	Leer arabigo
	
	Si arabigo >= 1 Y arabigo <= 3999 Entonces
		
		unidades <- arabigo mod 10
		decenas <- trunc((arabigo mod 100) / 10)
		centenas <- trunc((arabigo mod 1000) / 100)
		millares <- trunc(arabigo / 1000)
		
		Segun millares Hacer
			1: romano <- Concatenar(romano, "M")
			2: romano <- Concatenar(romano, "MM")
			3: romano <- Concatenar(romano, "MMM")
		FinSegun
		
		Segun centenas Hacer
			1: romano <- Concatenar(romano, "C")
			2: romano <- Concatenar(romano, "CC")
			3: romano <- Concatenar(romano, "CCC")
			4: romano <- Concatenar(romano, "CD")
			5: romano <- Concatenar(romano, "D")
			6: romano <- Concatenar(romano, "DC")
			7: romano <- Concatenar(romano, "DCC")
			8: romano <- Concatenar(romano, "DCCC")
			9: romano <- Concatenar(romano, "CM")
		FinSegun
		
		Segun decenas Hacer
			1: romano <- Concatenar(romano, "X")
			2: romano <- Concatenar(romano, "XX")
			3: romano <- Concatenar(romano, "XXX")
			4: romano <- Concatenar(romano, "XL")
			5: romano <- Concatenar(romano, "L")
			6: romano <- Concatenar(romano, "LX")
			7: romano <- Concatenar(romano, "LXX")
			8: romano <- Concatenar(romano, "LXXX")
			9: romano <- Concatenar(romano, "XC")
		FinSegun
		
		Segun unidades Hacer
			1: romano <- Concatenar(romano, "I")
			2: romano <- Concatenar(romano, "II")
			3: romano <- Concatenar(romano, "III")
			4: romano <- Concatenar(romano, "IV")
			5: romano <- Concatenar(romano, "V")
			6: romano <- Concatenar(romano, "VI")
			7: romano <- Concatenar(romano, "VII")
			8: romano <- Concatenar(romano, "VIII")
			9: romano <- Concatenar(romano, "IX")
		FinSegun
		
		Escribir "El número ", arabigo, " en romano es: ", romano
		
	Sino
		Escribir "Error: El número introducido está fuera del rango válido (1 a 3999)."
	FinSi
	Escribir "Gracias por usar mi programa, creado por Luna Elena Garcia Tapia, Nicole Durazo Vasquez y Héctor Medina Marcoff."
	
FinAlgoritmo