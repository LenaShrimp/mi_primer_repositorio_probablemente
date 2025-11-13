Algoritmo CURP
	
	escribir "bienvenid@ a mi programa"
	
	Definir primer_apellido, segundo_apellido, nombres, fecha_nacimiento, sexo, entidad_federativa como cadena
	definir primer_nombre como cadena
	definir anio_nac_num como cadena
	definir anio_str, mes_str, dia_str como cadena
	definir letra como cadena
	definir i como entero
	definir vocal_encontrada, consonante_encontrada Como Entero
	
	//cadenas temporales
	definir cadena_temporal, cadena_resultado como logico
	
	definir curp1_4, curp5_10, curp11, curp12_13, curp14_16, curp17, curp_18, curp_final como cadena
	
	Repetir
		escribir "Escribe tu primer apellido (paterno)"
		leer primer_apellido
	Mientras Que primer_apellido=""
	
	escribir "escribe tu segundo apellido (materno). Si no tienes, presiona enter."
	leer segundo_apellido
	
	repetir 
		escribir "Escribe tus primeros nombres"
		leer nombres
	Mientras Que nombres="" 
	
	
	
FinAlgoritmo
