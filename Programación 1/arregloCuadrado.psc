Algoritmo arregloCuadrado
	definir arregloBi, i, j Como Entero
	Dimensionar arregloBi[7,2] //dimensiones [7 puntos, 2 coordenadas]
	
	//lenado del punto B (segundo punto)
	arregloBi[2,1]<-10 //coordenada x del segundo punto
	arregloBi[2,2]<-1
	
	//llenado del punto A
	escribir "dame los valores del punto A" Sin Saltar
	leer arregloBI[1,1]
	Leer arregloBI[1,2]
	//llenado 3
	arregloBi[3,1]<-10 //coordenada x del segundo punto
	arregloBi[3,2]<-7
	
	//siguiente (se repite el mismo patron solo cambia el primer numero (punto)
	arregloBi[4,1]<-8 //coordenada x del segundo punto
	arregloBi[4,2]<-7
	
	arregloBi[5,1]<-4
	arregloBi[5,2]<-6
	
	arregloBi[6,1]<-4
	arregloBi[6,2]<-10
	
	arregloBi[7,1]<-2
	arregloBi[7,2]<-10
	
	escribir sin saltar "polygon("
	//obtener los datos del arreglo bidimensional
	para i<-1 hasta 7 Hacer//ciclo para recorrer la primera dimension
		escribir sin saltar"("
		para j<-1 hasta 2 Hacer //ciclo para la segunda Dimension
			si j=2 Entonces
				escribir arregloBi[i,j] Sin Saltar
			SiNo
				escribir arregloBi[i,j] "," sin saltar
			FinSi
			escribir sin saltar arregloBi[i,j] "," 
		FinPara
		si i=7 Entonces
			escribir sin saltar"),"
		SiNo
			escribir ")"
		FinSi
	FinPara
	
	escribir sin saltar ")"
	
FinAlgoritmo
