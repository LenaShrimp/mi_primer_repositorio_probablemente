Algoritmo juego_del_7
	definir dado1, dado2, dados, saldo, saldo_final, cantidad Como Real
	definir usuario, apuesta como cadena
	definir logic como logico
	
	saldo<-aleatorio(100,999)
	dado1<-aleatorio(1,6)
	dado2<-aleatorio(1,6)
	dados<-dado1+dado2
	saldo_final<-saldo
	
	
	Escribir "Introduce tu nombre"
	leer usuario
	
	Si usuario = "" Entonces
		Repetir
			Escribir "Error: Introduce tu nombre"
			leer usuario
		Mientras Que usuario = ""
	FinSi
	Escribir " "
	Escribir "Bienvenid@ a mi casino online clandestino " usuario ", tu saldo es de " saldo " bolivares."
	Escribir " "
	Escribir "Cuanto quieres apostar? (Tu saldo es: " saldo ")"
	leer cantidad
	
	Si (cantidad > saldo) o (cantidad=0)Entonces
		Repetir
			Escribir "Cuanto quieres apostar? (Tu saldo es: " saldo ")"
			leer cantidad
		Mientras Que (cantidad > saldo) o (cantidad=0)
	FinSi
	Escribir "¿Quieres apostar 7 o un número menor/mayor a 7? (menor, mayor, igual)"
	leer apuesta
	Escribir " "
	Si apuesta<>"menor" y apuesta<>"mayor" y apuesta<>"igual"  Entonces
		Repetir
			Escribir "Error: Introduce menor, mayor o igual."
			leer apuesta
		Mientras Que apuesta<>"menor" y apuesta<>"mayor" y apuesta<>"igual"
	FinSi
	
	si apuesta="menor" o apuesta="mayor" o apuesta="igual" Entonces
		Segun apuesta Hacer
			"menor":
				si apuesta="menor" Entonces
					Si (dados=2 o dados=3 o dados=4 o dados=5 o dados=6) entonces
						logic<-verdadero
						saldo_final<-saldo*2
						Escribir "Tu dado 1 cayo " dado1 " y tu dado 2 cayo " dado2 ", lo cual suma " dados "."
						Escribir "Por lo tanto, eres un ganador, tu saldo es: " saldo_final "." 
					SiNo
						logic<-falso
						saldo_final<-saldo-cantidad
						Escribir "Tu dado 1 cayo " dado1 " y tu dado 2 cayo " dado2 ", lo cual suma " dados "."
						Escribir "Por lo tanto, eres un perdedor, tu saldo es: " saldo_final "." 
					FinSi
				FinSi
			"mayor":
				si apuesta="menor" Entonces
					Si (dados=2 o dados=3 o dados=4 o dados=5 o dados=6) entonces
						logic<-verdadero
						saldo_final<-saldo*2
						Escribir "Tu dado 1 cayo " dado1 " y tu dado 2 cayo " dado2 ", lo cual suma " dados "."
						Escribir "Por lo tanto, eres un ganador, tu saldo es: " saldo_final "." 
					SiNo
						logic<-falso
						saldo_final<-saldo-cantidad
						Escribir "Tu dado 1 cayo " dado1 " y tu dado 2 cayo " dado2 ", lo cual suma " dados "."
						Escribir "Por lo tanto, eres un perdedor, tu saldo es: " saldo_final "." 
					FinSi
				FinSi
			"igual":
				si apuesta="menor" Entonces
					Si (dados=2 o dados=3 o dados=4 o dados=5 o dados=6) entonces
						logic<-verdadero
						saldo_final<-saldo*2
						Escribir "Tu dado 1 cayo " dado1 " y tu dado 2 cayo " dado2 ", lo cual suma " dados "."
						Escribir "Por lo tanto, eres un ganador, tu saldo es: " saldo_final "." 
					SiNo
						logic<-falso
						saldo_final<-saldo-cantidad
						Escribir "Tu dado 1 cayo " dado1 " y tu dado 2 cayo " dado2 ", lo cual suma " dados "."
						Escribir "Por lo tanto, eres un perdedor, tu saldo es: " saldo_final "." 
					FinSi
				FinSi
		FinSegun
	SiNo
		Repetir
			Segun apuesta Hacer
				"menor":
					si apuesta="menor" Entonces
						Si (dados=2 o dados=3 o dados=4 o dados=5 o dados=6) entonces
							logic<-verdadero
							saldo_final<-saldo*2
							Escribir "Tu dado 1 cayo " dado1 " y tu dado 2 cayo " dado2 ", lo cual suma " dados "."
							Escribir "Por lo tanto, eres un ganador, tu saldo es: " saldo_final "." 
						SiNo
							logic<-falso
							saldo_final<-saldo-cantidad
							Escribir "Tu dado 1 cayo " dado1 " y tu dado 2 cayo " dado2 ", lo cual suma " dados "."
							Escribir "Por lo tanto, eres un perdedor, tu saldo es: " saldo_final "." 
						FinSi
					FinSi
				"mayor":
					si apuesta="menor" Entonces
						Si (dados=2 o dados=3 o dados=4 o dados=5 o dados=6) entonces
							logic<-verdadero
							saldo_final<-saldo*2
							Escribir "Tu dado 1 cayo " dado1 " y tu dado 2 cayo " dado2 ", lo cual suma " dados "."
							Escribir "Por lo tanto, eres un ganador, tu saldo es: " saldo_final "." 
						SiNo
							logic<-falso
							saldo_final<-saldo-cantidad
							Escribir "Tu dado 1 cayo " dado1 " y tu dado 2 cayo " dado2 ", lo cual suma " dados "."
							Escribir "Por lo tanto, eres un perdedor, tu saldo es: " saldo_final "." 
						FinSi
					FinSi
				"igual":
					si apuesta="menor" Entonces
						Si (dados=2 o dados=3 o dados=4 o dados=5 o dados=6) entonces
							logic<-verdadero
							saldo_final<-saldo*2
							Escribir "Tu dado 1 cayo " dado1 " y tu dado 2 cayo " dado2 ", lo cual suma " dados "."
							Escribir "Por lo tanto, eres un ganador, tu saldo es: " saldo_final "." 
						SiNo
							logic<-falso
							saldo_final<-saldo-cantidad
							Escribir "Tu dado 1 cayo " dado1 " y tu dado 2 cayo " dado2 ", lo cual suma " dados "."
							Escribir "Por lo tanto, eres un perdedor, tu saldo es: " saldo_final "." 
						FinSi
					FinSi
			FinSegun
		Mientras Que apuesta<>"menor" o apuesta<>"mayor" o apuesta<>"igual"
	FinSi
	
	//apuesta: validar que no lo sobrepase modalidad 3 opciones (x<7, 7, x>7)
	//ganaste (saldo actual), perdiste (saldo actual)
	Escribir " "
	Escribir "Gracias por usar mi programa, este casino clandestino online fue hecho por Luna Elena Garcia Tapia para programación I."
FinAlgoritmo
