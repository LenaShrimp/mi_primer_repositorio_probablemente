Algoritmo MenorDeDos
	Definir a ,b, c Como Numeros

	
	a<-aleatorio(100,999)
	b<-aleatorio(100,999)
	a<-a+(aleatorio(1,9)/100)
	b<-b+(aleatorio(1,9)/100)
	
	escribir " " a " " b 
	//revisar si a es menor
	Escribir "Entre los valores de " a " y " b
	Si a<b entonces 
		Escribir "El menor de ambos es " a " "
	FinSi
	//revisar si b es menor
	Si a>b entonces 
		Escribir "El menor de ambos es " b " "
	FinSi
	
	Si a=b entonces 
		Escribir a " y " b "son iguales."
	FinSi
	
FinAlgoritmo
