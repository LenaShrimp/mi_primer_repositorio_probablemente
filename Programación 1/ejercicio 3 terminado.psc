Proceso Ejercicio_3_Clasificacion
	// Este algoritmo es un clasificador de datos.
	// Elaborado el 23 de agosto de 2025 por Luna Elena Garcia Tapia para Programación 1.
	Definir entrada Como Cadena
	Definir ultimo_caracter Como Cadena
	Escribir 'Escribe un dato.'
	Leer entrada
	Si Mayusculas(entrada)='VERDADERO' O Mayusculas(entrada)='FALSO' O Mayusculas(entrada)='V' O Mayusculas(entrada)='F' Entonces
		Escribir entrada, ' es de tipo lógico.'
	FinSi
	ultimo_caracter <- Subcadena(entrada,Longitud(entrada)-1,Longitud(entrada)-1)
	Si (ultimo_caracter)='0' O (ultimo_caracter)='1' O (ultimo_caracter)='2' O (ultimo_caracter)='3' O (ultimo_caracter)='4' O (ultimo_caracter)='5' O (ultimo_caracter)='6' O (ultimo_caracter)='7' O (ultimo_caracter)='8' O (ultimo_caracter)='9' Entonces
		Escribir entrada, ' es de tipo númerico.'
	FinSi
	Si Mayusculas(ultimo_caracter)='A' O Mayusculas(ultimo_caracter)='B' O Mayusculas(ultimo_caracter)='C' O Mayusculas(ultimo_caracter)='D' O Mayusculas(ultimo_caracter)='E' O Mayusculas(ultimo_caracter)='F' O Mayusculas(ultimo_caracter)='G' O Mayusculas(ultimo_caracter)='H' O Mayusculas(ultimo_caracter)='I' O Mayusculas(ultimo_caracter)='J' O Mayusculas(ultimo_caracter)='K' O Mayusculas(ultimo_caracter)='L' O Mayusculas(ultimo_caracter)='M' O Mayusculas(ultimo_caracter)='N' O Mayusculas(ultimo_caracter)='Ñ' O Mayusculas(ultimo_caracter)='O' O Mayusculas(ultimo_caracter)='P' O Mayusculas(ultimo_caracter)='Q' O Mayusculas(ultimo_caracter)='R' O Mayusculas(ultimo_caracter)='S' O Mayusculas(ultimo_caracter)='T' O Mayusculas(ultimo_caracter)='U' O Mayusculas(ultimo_caracter)='V' O Mayusculas(ultimo_caracter)='W' O Mayusculas(ultimo_caracter)='X' O Mayusculas(ultimo_caracter)='Y' O Mayusculas(ultimo_caracter)='Z' Entonces
		Escribir entrada, ' es de tipo cadena.'
	FinSi
FinProceso
