Algoritmo examen_voleibol
	//solicitar la cantidad de jugadores de cada equipo
	
	//validar que se necuentren entre 4 y 6 jugadores; (si un equipo tiene menos de 4 jugadores se declara perdedor, 
	//si tiene mas de 6 jugadores, volver a pedir la cantidad
	
	//generar un número aleatorio con rango igual a la cantidad de jugadores (cada jugador tiene la misma probabilidad de lograr un punto).
	//EL punto generado debe mostrarse, así como el puntaje actual de cada equipo (al final debe aparecer el puntaje definitivo del encuentro)
	
	//hacer un segundo "set" que sea igual al primer set
	
	//si los dos sets quedaron empatados (un equipo gana uno y pierde otro), simular un tercer set, pero solo de 15 puntos. Mostrar puntaje parcial y puntaje final.
	
	//mostrar un mensaje si el equipo de liz ha perdido o a ganado
	
	definir equipo_liz, equipo_contrario, i, mas_grande, total_equipos, contador_liz, contador_contrario, random, random2 como entero
	definir fin_set, liz, contrario2, liz2, contrario, finn Como Logico
	definir contador1, contador2, contador3 como cadena
	escribir "Bienvenido a mi partido de voleibol!, este genera te pregunta cuantos jugadores tiene cada equipo y simula 3 sets de voleibol y te dice si Liz pierde o gana"
	liz<-Falso
	liz2<-Falso
	contrario<-Falso
	contrario2<-falso
	finn<-falso
	Repetir
		escribir "¿Cuantos jugadores tiene el equipo de Liz?"	
		leer equipo_liz
	Mientras Que equipo_liz>6
	
	Repetir
		escribir "¿Cuantos jugadores tiene el equipo contrario?"
		leer equipo_contrario
	Mientras Que equipo_contrario>6
	
	si equipo_liz>=4 y equipo_contrario<4 Entonces
		escribir "El equipo contrario perdio ya que tiene menos de 4 integrantes y el equipo de Liz ha ganado."
		finn<-verdadero
	FinSi
	
	si equipo_liz<4 Entonces
		escribir "El equipo de Liz perdio ya que tiene menos de 4 integrantes."
		finn<-verdadero
	FinSi
		si finn=falso entonces
		si equipo_liz>equipo_contrario Entonces
			mas_grande<-equipo_liz
		FinSi
		
		si equipo_contrario>equipo_liz Entonces
			mas_grande<-equipo_contrario
		FinSi
		
		si equipo_contrario=equipo_liz Entonces
			mas_grande<-equipo_liz
		FinSi
		//los primeros n son de liz y 
		total_equipos<-equipo_liz+equipo_contrario
		contador1<-""
		contador2<-""
		contador3<-""
		contador_liz<-0
		contador_contrario<-0
		fin_set <- falso
		//supongamos random=1, - equipo_contrario=6 
		escribir "Primer set: "
		escribir " "
		escribir " "
		Repetir
			random<-aleatorio(1, total_equipos)
			random2<-random
			
			escribir "Aleatorio: " random2 " " Sin Saltar
			
			si random=1 o random=3 o random=5 o random=7 o random=9 o random=11 Entonces
				random2<-random
				contador_liz<-contador_liz+1
			FinSi
			
			si random=2 o random=4 o random=6 o random=8 o random=10 o random=12 Entonces
				random2<-random
				contador_contrario<-contador_contrario+1
			FinSi
			
			
			escribir "Puntaje: " contador_liz ":" contador_contrario
			si contador_liz>=25 o contador_contrario>=25  Entonces
				fin_set<-Verdadero
			FinSi
		Mientras Que fin_set=falso	
		si contador_liz>=25 Entonces
			escribir "Gano el equipo de Liz!!"
			escribir " "
			liz<-verdadero
		FinSi
		si contador_contrario>=25 Entonces
			escribir "Perdio el equipo de Liz, gano el contrario"
			escribir " "
			contrario<-verdadero
		FinSi
		
		contador1<-Concatenar("Puntaje: ", ConvertirATexto(contador_liz))
		contador1<-Concatenar(contador1, ":")
		contador1<-Concatenar(contador1, ConvertirATexto(contador_contrario))
		contador2<-""
		contador3<-""
		contador_liz<-0
		contador_contrario<-0
		fin_set <- falso
		Escribir "Segundo set:"
		escribir " "
		Repetir
			random<-aleatorio(1, total_equipos)
			random2<-random
			
			escribir "Aleatorio: " random2 " " Sin Saltar
			
			si random=1 o random=3 o random=5 o random=7 o random=9 o random=11 Entonces
				random2<-random
				contador_liz<-contador_liz+1
			FinSi
			
			si random=2 o random=4 o random=6 o random=8 o random=10 o random=12 Entonces
				random2<-random
				contador_contrario<-contador_contrario+1
			FinSi
			
			
			escribir "Puntaje: " contador_liz ":" contador_contrario
			si contador_liz>=25 o contador_contrario>=25  Entonces
				fin_set<-Verdadero
			FinSi
		Mientras Que fin_set=falso
		
		si contador_liz>=25 Entonces
			escribir "Gano el equipo de Liz!!"
			escribir " "
			liz2<-verdadero
		FinSi
		
		si contador_contrario>=25 Entonces
			escribir "Perdio el equipo de Liz, gano el contrario"
			escribir " "
			contrario2<-verdadero
		FinSi
		contador1<-Concatenar("Puntaje: ", ConvertirATexto(contador_liz))
		contador1<-Concatenar(contador1, ":")
		contador1<-Concatenar(contador1, ConvertirATexto(contador_contrario))
		contador2<-""
		contador3<-""
		contador_liz<-0
		contador_contrario<-0
		fin_set <- falso
		si ((liz=verdadero) y (contrario2=verdadero)) o ((liz2=verdadero) y (contrario=verdadero))  Entonces
			Escribir "DESEMPATE tercer set:"
			escribir " "
			Repetir
				random<-aleatorio(1, total_equipos)
				random2<-random
				
				escribir "Aleatorio: " random2 " " Sin Saltar
				
				si random=1 o random=3 o random=5 o random=7 o random=9 o random=11 Entonces
					random2<-random
					contador_liz<-contador_liz+1
				FinSi
				
				si random=2 o random=4 o random=6 o random=8 o random=10 o random=12 Entonces
					random2<-random
					contador_contrario<-contador_contrario+1
				FinSi
				
				
				escribir "Puntaje: " contador_liz ":" contador_contrario
				si contador_liz>=15 o contador_contrario>=15  Entonces
					fin_set<-Verdadero
				FinSi
			Mientras Que fin_set=falso
			
			si contador_liz>=15 Entonces
				escribir "Gano el equipo de Liz 2/3!!"
				escribir " "
				liz2<-verdadero
			FinSi
			
			si contador_contrario>=15 Entonces
				escribir "Perdio el equipo de Liz, gano el contrario 2/3"
				escribir " "
				contrario2<-verdadero
			FinSi
		FinSi
		escribir " "
		escribir"Gracias por jugar! adios. Creado por Luna Elena Garcia Tapia"
	FinSi
	
FinAlgoritmo
