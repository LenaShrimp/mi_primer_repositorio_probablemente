Proceso Cambio_de_monedas
	definir tipos_de_monedas como cadena
	definir relacion_cambio como real
	definir monto como real
	definir costo_moneda como real
	relacion_cambio<-18.64
	
	Escribir "Bienvenid@ este programa convierte el peso mexicano a la moneda de tu eleccion"
	Escribir " "
	Escribir "Elige a que moneda se hará el cambio (peso mexicano)."
	leer tipos_de_monedas
	
	
	Escribir "¿Cuanto dinero quieres cambiar?"
	leer monto
	costo_moneda<-aleatorio(100,240) / 10.1
	relacion_cambio<-monto / costo_moneda
	
	Escribir monto " pesos mexicanos equivalen a " relacion_cambio," " tipos_de_monedas " y cada uno vale " costo_moneda " pesos." //definir nueva variable que me de cuanto vale cada moneda"
	Escribir " "
	Escribir "Gracias por atenderte soy Luna Elena Garcia Tapia y mi expediente es 221202285"
	
	
	
	
FinProceso
