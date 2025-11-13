Algoritmo encriptamiento
	// mensaje: "Hola mundo"
	// encriptamiento: "odnum aloH" (invertir)
	// "aloHodnum" (partir 1/2(dos variables por ejemplo)-intercambiar)
	// "ALOHODNUM" (mayusculas opcional)
	
	definir mensaje, mensaje_encriptado, mensaje_partido, mensaje_partido_final, mensaje_final, final como cadena
	definir i, j como entero
	definir corte como real
	
	escribir "Escribe un mensaje"
	leer mensaje
	mensaje_final<-""
	mensaje_encriptado<-mensaje
	corte<-trunc(longitud(mensaje)/2)
	
	
	Para i<-0 Hasta longitud(mensaje) Con Paso 1 Hacer
		
		mensaje_encriptado<-subcadena(mensaje, i, i)
		
		mensaje_final<-concatenar(mensaje_encriptado, mensaje_final)
		
		
		si longitud(mensaje_final)=corte Entonces
			mensaje_partido<-mensaje_final
		FinSi
		
		si longitud(mensaje_final)=longitud(mensaje) entonces
			mensaje_partido_final<-subcadena(mensaje_final, 1, corte)
		FinSi
	Fin Para
	
	final<-concatenar(mensaje_partido, mensaje_partido_final)
	
	escribir "mensaje invertido = " mensaje_final
	//escribir "mensaje partido = " mensaje_partido
	//escribir "mensaje partido final= " mensaje_partido_final
	escribir " "
	escribir "mensaje final " final
	escribir " "
	escribir "mensaje final final " mayusculas(final)
FinAlgoritmo
