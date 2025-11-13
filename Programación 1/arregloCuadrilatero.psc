Algoritmo arreglo_cuadrilatero
	//1.Crear un arreglo bidimensional para almacenar los 4 puntos de un cuadrilátero.
	//2.Generar al azar los puntos para llenar el arreglo. Estos puntos deben estar dentro del cuadrado formado de (-10,-10) hasta (10,10), es decir, cada valor de coordenada debe estar entre (-10, 10).
	//3.Determinar el orden adecuado para que los puntos dibujen un cuadrilátero en Desmos. Es decir, modificar los puntos de tal forma que queden ordenados para graficarlos.
	//4.Imprimir los puntos en pantalla en formato entendible para el graficador Desmos: "polygon( (1,1),(3,5),(4,10),(6,3))"
	//5.Copiar y pegar en Desmos para corroborar que se dibuja correctamente.
	//6.Anexar al final del código, el enlace de las figuras plasmadas en Desmos.
	//7.Anexar al final del código, comentarios sobre las acciones que realizaste para cumplir con este objetivo.
	
	definir puntos Como Entero
	dimension puntos[4,2]
	definir i, j, tempX, tempY como entero
	definir xUnicas, yUnicas Como Logico
	
	escribir "Generando puntos al azar..."
	xUnicas<-Falso
	yUnicas<-falso
	repetir
		para i<-1 hasta 4 Hacer
			puntos[i,1]<-Aleatorio(-10,10)
			puntos[i,2]<-Aleatorio(-10,10)
		FinPara

		si xUnicas=falso entonces
			si puntos[1,1]=puntos[2,1] o puntos[1,1]=puntos[3,1] o puntos[1,1]=puntos[4,1] entonces
				xUnicas<-Falso
			FinSi
			si puntos[2,1]=puntos[3,1] o puntos[2,1]=puntos[4,1] entonces
				xUnicas<-Falso
			FinSi
			si puntos[3,1]=puntos[4,1] entonces
				xUnicas<-Falso
			FinSi	
		SiNo
			xUnicas<-Verdadero
		finsi

		si yUnicas=falso y xUnicas=Verdadero entonces
			si puntos[1,2]=puntos[2,2] o puntos[1,2]=puntos[3,2] o puntos[1,2]=puntos[4,2] entonces
				yUnicas<-Falso
			FinSi
			si puntos[2,2]=puntos[3,2] o puntos[2,2]=puntos[4,2] entonces
				yUnicas<-Falso
			FinSi
			si puntos[3,2]=puntos[4,2] entonces
				yUnicas<-Falso
			FinSi	
		SiNo
			yUnicas<-Verdadero
		finsi
	Mientras que xUnicas=falso y yUnicas=falso
		
	para i<- 1 hasta 3 Hacer
		para j<-1 hasta 3 Hacer
			si puntos[j,1]>puntos[j+1,1] Entonces
				tempX<-puntos[j,1]
				puntos[j,1]<-puntos[j+1,1]
				puntos[j+1,1]<-tempX
				
				tempY<-puntos[j,2]
				puntos[j,1]<-puntos[j+1,2]
				puntos[j+1,2]<-tempY
			FinSi
		FinPara
	FinPara
	
	SI puntos[1,2]>puntos[2,2] entonces
		tempX<-puntos[1,1]
		tempY<-puntos[1,2]
		puntos[1,1]<-puntos[2,1]
		puntos[1,2]<-puntos[2,2]
		puntos[2,1]<-tempX
		puntos[2,2]<-tempY
	FinSi
	
	SI puntos[3,2]>puntos[4,2] entonces
		tempX<-puntos[3,1]
		tempY<-puntos[3,2]
		puntos[3,1]<-puntos[4,1]
		puntos[3,2]<-puntos[4,2]
		puntos[4,1]<-tempX
		puntos[4,2]<-tempY
	FinSi
	
	escribir "codigo para Desmos:"
	escribir ""
	escribir "polygon(" Sin Saltar
	escribir "(", puntos[1,1], "," puntos[1,2], ")," sin saltar
	escribir "(", puntos[3,1], "," puntos[3,2], ")," sin saltar
	escribir "(", puntos[4,1], "," puntos[4,2], ")," sin saltar
	escribir "(", puntos[2,1], "," puntos[2,2], ")" sin saltar
	escribir ")"
	escribir ""
	escribir "Gracias por usar mi programa"
FinAlgoritmo
