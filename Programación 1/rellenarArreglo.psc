SubAlgoritmo imprimirArreglo ( arreglo02, cantidad )
	definir i como entero
	imprimir "arreglo actual:"
	Para i<-1 Hasta cantidad Con Paso 1 Hacer
		Escribir arreglo02[i] " " sin saltar
	Fin Para
	escribir " "	
Fin SubAlgoritmo

SubAlgoritmo rellenarArreglo ( arreglo01, cantidad )
	//recorrer arreglo
	definir i como entero
	Para i<-2 Hasta cantidad Con Paso 1 Hacer
		arreglo01[i]<-i+33
	Fin Para
	
	//imprimir arreglo
	imprimirArreglo(arreglo01,cantidad)
Fin SubAlgoritmo

Algoritmo rellenarArreglos
	definir arreglo, i Como Entero
	dimensionar arreglo[10]
	arreglo[1]<-333
	arreglo[7]<-666
	arreglo[9]<-999
	
	rellenarArreglo(arreglo,10)
	imprimirArreglo(arreglo,10)
FinAlgoritmo


//Para i<-2 Hasta 10 Con Paso 1 Hacer
	//si i<>(7) o i<>(9) Entonces
		//arreglo[i] <- i+33
	//FinSi
//Fin Para