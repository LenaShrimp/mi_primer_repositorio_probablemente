Algoritmo figura
	//generar 4 puntos al azar que formen un cuadrilatero
	//a=(1,1) b=(3,5 c=(4,10) d=(6,3)
	//generar 4 puntos al azar entre el -10 y el 10
	//tip: que esten en orden de menor a mayor
	//x tiene el numero mas bajo al principio  ej (0,5)
	//y tiene el numero mas alto al final ej (4,10)
	
	//paso 1 definir variables
	definir puntos como entero
	dimension puntos[4,2]
	
	definir cx,cy,dx, dy Como Real
	definir angulos Como Real
	dimension angulos[4]
	
	definir tempAngulo como real
	definir tempX, tempY, i, j como entero
	Escribir "Bienvenid@ a mi programa este genera 4 puntos aleatorios al azar, calcula sus angulos, los ordena y así forma un cuadrilatero"
	
	//paso 2, generar puntos aleatorios [-10, 10]
	Escribir "Se han generado 4 puntos aleatorios entre [-10, -10] y [10, 10]."
	para i<-1 hasta 4 Hacer
		puntos[i,1]<-Azar(21) - 10 //coordenada x
		puntos[i,2]<-azar(21) - 10 //coordenada y
	FinPara
	
	//paso 3
	cx<- (puntos[1,1] + puntos[2,1] + puntos[3,1] + puntos[4,1]) / 4
	cy<- (puntos[1,2] + puntos[2,2] + puntos[3,2] + puntos[4,2]) / 4
	
	//paso 3.2
	para i<-1 hasta 4 hacer
		dx<-puntos[i,1] - cx //distancia de x al centro
		dy<-puntos[i,2] - cy //distancia de y al centro
		si dx=0 entonces
			si dy>0 Entonces
				angulos[i]<-pi/2 //90 grados
			sino
				Si dy<0 Entonces
					angulos[i]<--pi/2 //-90 grados
				sino
					angulos[i]<-0 //el punto esta en el centro
				FinSi
			FinSi
		SiNo
	//paso 3.3 calcular el angulo base con Atangente
			angulos[i]<- Atan(dy/dx)
			
			//ajustar el angulo basado en el cuadrante (cuando x es negativo)
			si dx<0 Entonces
				si dy>=0 Entonces
					angulos[i]<-angulos[i]+pi //cuadrante 2
				SiNo
					angulos[i]<-angulos[i]-pi //cuadrante 3
				FinSi
			FinSi
		finsi
	FinPara
	
	//paso 3.4
	para i<-1 hasta 3 Hacer
		para j<-1 hasta 3 Hacer
			si angulos[j]>angulos[j+1] Entonces
				//intercambiar angulo
				tempAngulo<-angulos[j]
				angulos[j]<-angulos[j+1]
				angulos[j+1]<-tempAngulo
				//intercambiar la coordenada x del punto
				tempX<-puntos[j,1]
				puntos[j,1]<-puntos[j+1, 1]
				puntos[j+1, 1]<-tempX
				//intercambiar la coordenada y del punto
				tempY<-puntos[j,2]
				puntos[j,2]<-puntos[j+1, 2]
				puntos[j+1, 2]<-tempY
			FinSi
		FinPara
	FinPara
	//PASO 4 imprimir 
	escribir "Codigo para Desmos:"
	escribir ""
	escribir "polygon(" sin saltar
	para i<-1 hasta 4 Hacer
		escribir "(" Sin Saltar
		escribir puntos[i,1] sin saltar //x
		escribir "," Sin Saltar
		escribir puntos[i,2] sin saltar //y
		escribir ")" Sin Saltar
		
		si i<4 Entonces
			escribir "," sin saltar
		FinSi
	FinPara
	escribir ")"
	escribir ""
	//paso 5 y 6
	escribir "enlace de las figuras plasmadas en Desmos: https://www.desmos.com/geometry/34iuclo3of"
	escribir""
	escribir "Gracias por usar mi programa!, puede encontrar las acciones realizadas para cumplir el objetivo en los comentarios del pseudocodigo."
	//paso 7
	//Que acciones realice para cumplir con el objetivo:
	//1er paso, defini un arreglo para guardar las coordenadas 'puntos[4,2]'
	//2do paso, genere puntos aleatorios al azar con azar(21)-10, esto genera un numero entre 0 y 20 y al restar 10, el rango se vuelve -10,10
	//3er paso ordenar los puntos
	//3.1 calcule el punto promedio de los 4 puntos (centro)
	//3.2 después el angulo de cada punto con respecto al punto promedio de los 4 (centro)
	//3.3 Use ATangente(dy/dx) y ajuste el resultado usando condicionales sumando o restando PI basandome en el 'cuadrante' (cuando dx era negativo)
	//3.4 hice un ciclo "para" para reordenar el arreglo usando los angulos que calcule anteriormente 
	
FinAlgoritmo

//generar 4 puntos x,y
//1p +negativo -y
//3p +p y a la derecha +y
