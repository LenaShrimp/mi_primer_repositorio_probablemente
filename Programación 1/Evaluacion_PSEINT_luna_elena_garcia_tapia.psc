Proceso Evaluacion_PSEINT
	Definir segund, minutos, horas, random, random_min, random_hora Como Real
	
	Escribir "Bienvenid@ este programa genera una cantidad al azar de segundos entre 10000 y 99999, convierte la cantidad de segundos a minutos, calcula la cantidad de segundos residuales y finalmente, este imprime el resultado."
	
	random<-aleatorio(10000,99999)
	random_min<-trunc(random/60)
	random_hora<-trunc(random_min/60)
	

	segund<-trunc(random mod 60)
	minutos<-trunc(random_min mod 60)
	horas<-trunc(random_hora mod 60)
	
	Escribir " "
	Escribir "Los " random " segundos equivalen a " horas " hora(s), " minutos " minuto(s) y " segund " segundo(s)"
	Escribir " "
	Escribir "Gracias por usar mi programa mi número de expediente es 221202285 y mi nombre es Luna Elena Garcia Tapia."
FinProceso