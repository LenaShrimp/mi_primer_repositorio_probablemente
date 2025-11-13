Proceso sin_titulo
		
	Definir monto, millares, centenas, decenas, unidades, monto_entero Como Real
	
		Escribir "Bienvenido a mi programa, este programa usa el operador MOD para contar las unidades, decenas, centenas y millares que componen un número."
		Escribir ""
		Escribir "Ingrese el monto (se ignorarán los centavos):"
		Leer monto
		
		monto_entero <- Trunc(monto)
		
		millares <- Trunc(monto_entero / 1000)
		
		centenas <- Trunc((monto_entero MOD 1000) / 100)
		
		decenas <- Trunc((monto_entero MOD 100) / 10)
		
		unidades <- Trunc(monto_entero MOD 10)
		
		Escribir monto_entero, " contiene el equivalente a:"
		Escribir millares, " mil(es), ", centenas, " ciento(s), ", decenas, " decena(s) y ", unidades, " peso(s)"
		Escribir " "
		Escribir "Gracias, mi nombre es Luna Elena Garcia Tapia y mi número de expediente es 221202285."
		
	
FinProceso
