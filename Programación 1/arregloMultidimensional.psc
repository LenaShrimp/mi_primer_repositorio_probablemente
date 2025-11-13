SubAlgoritmo llenarY(arregloMd,n)
	definir i como entero
	definir random como real
	Para i<-1 Hasta n Con Paso 1 Hacer
		random<-Aleatorio(-n/2, n/2-1)
		arregloMd[i,i,i]<-n
	Fin Para
	
	escribir "LlenarX"	
	imprimirArreglo(arregloMd,n)
	escribir "finLlenarX"
Fin SubAlgoritmo

SubAlgoritmo llenarX(arregloMd,n)
	definir i como entero
	definir random como real
	Para i<-1 Hasta n Con Paso 1 Hacer
		random<-Aleatorio(-n/2, n/2-1)
		arregloMd[i,i,i]<-n
	Fin Para
	
	escribir "LlenarX"	
	imprimirArreglo(arregloMd,n)
	escribir "finLlenarX"
Fin SubAlgoritmo

SubAlgoritmo imprimirArreglo (arregloMd,n)
	definir i como entero
	imprimir "arreglo actual:"
	Para i<-1 Hasta n Con Paso 1 Hacer
		Escribir arregloMd[i,i,i] " " sin saltar
	Fin Para
	escribir " "	
Fin SubAlgoritmo

Algoritmo sin_titulo
	//1. Crear un  arreglo multidimensional para N (N=22) puntos en Reales cubicos = (x,y,z)
	
	//2. Generar valores para X desde (-n/2, n/2-1) para los N puntos
	
	//2.5. SubAlgoritmo: llenarX(arreglo, n)
	
	//3. Generar valores para Y aleatorios [-n/2, n/2-1]
	
	//3.5. SubAlgoritmo: llenarY(arreglo, n)
	
	//4. Calcular el valor de Z. (Con la función f) [Crear una función para enviar el arreglo y rellenar el valor de Z]
	
	//4.5. SubAlgoritmo: llenarZ(arreglo, n)
	
	//5. Publicar arreglo  para dibujar (Desmos)
	//5.5 Funcion: imprimirPuntos(arreglo, N)
	
	definir arregloMultidimensional, arregloMd Como Entero
	definir n Como Real
	n<-3
	
	dimensionar arregloMd[3,3,3]
	llenarX(arregloMd,3)
	imprimirArreglo(arregloMd,3)
FinAlgoritmo
