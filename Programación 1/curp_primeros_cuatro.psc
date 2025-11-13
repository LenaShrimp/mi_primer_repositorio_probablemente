Algoritmo curp_primeros_cuatro
	//Criterios de construcción 
	
	//primer letra primer apellido
	//primer vocal interna primer apellido
	//letra inicial segundo apellido
	//primera letra del nombre
	
	//excepciones:
	//1) ñ x
	//2) maria jose
	//3) profanidades kaka buey popo
	
	definir primer_nombre como cadena
	definir primer_digito como cadena
	
	Repetir
		Escribir Dame tu primer nombre
		leer primer_nombre
		primer_digito<-subcadena(primer_nombre, longitud(primer_nombre)-1, longitud(primer_nombre)-1)
	Mientras Que primer_digito=(Mayusculas(ultimo_caracter)='A' O Mayusculas(ultimo_caracter)='B' O Mayusculas(ultimo_caracter)='C' O Mayusculas(ultimo_caracter)='D' O Mayusculas(ultimo_caracter)='E' O Mayusculas(ultimo_caracter)='F' O Mayusculas(ultimo_caracter)='G' O Mayusculas(ultimo_caracter)='H' O Mayusculas(ultimo_caracter)='I' O Mayusculas(ultimo_caracter)='J' O Mayusculas(ultimo_caracter)='K' O Mayusculas(ultimo_caracter)='L' O Mayusculas(ultimo_caracter)='M' O Mayusculas(ultimo_caracter)='N' O Mayusculas(ultimo_caracter)='Ñ' O Mayusculas(ultimo_caracter)='O' O Mayusculas(ultimo_caracter)='P' O Mayusculas(ultimo_caracter)='Q' O Mayusculas(ultimo_caracter)='R' O Mayusculas(ultimo_caracter)='S' O Mayusculas(ultimo_caracter)='T' O Mayusculas(ultimo_caracter)='U' O Mayusculas(ultimo_caracter)='V' O Mayusculas(ultimo_caracter)='W' O Mayusculas(ultimo_caracter)='X' O Mayusculas(ultimo_caracter)='Y' O Mayusculas(ultimo_caracter)='Z')
	
	ultimo_caracter <- Subcadena(entrada,Longitud(entrada)-1,Longitud(entrada)-1)
	
FinAlgoritmo
