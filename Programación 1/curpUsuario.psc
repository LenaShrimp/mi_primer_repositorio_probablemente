Algoritmo curpUsuario
	Definir primer_apellido, segundo_apellido, primer_nombre, segundo_nombre, nombre_a_usar, primer_apellido_temporal, segundo_apellido_temporal, primer_nombre_temporal Como Caracter
	Definir fecha_nacimiento, sexo, entidad_federativa, letra, curp1_4, curp_final Como Caracter
	Definir i, j Como Entero
	
	Escribir "Bienvenid@, este programa genera los primeros 16 elementos de la CURP."
	
	Repetir
		Escribir "Escribe tu primer apellido:"
		Leer primer_apellido
	Mientras Que primer_apellido=""
	primer_apellido <- Mayusculas(primer_apellido)
	
	Escribir "Escribe tu segundo apellido (si no tienes, presiona enter):"
	Leer segundo_apellido
	segundo_apellido <- Mayusculas(segundo_apellido)
	
	Repetir
		Escribir "Escribe tu primer nombre:"
		Leer primer_nombre
	Mientras Que primer_nombre=""
	primer_nombre <- Mayusculas(primer_nombre)
	
	Escribir "Escribe tu segundo nombre (si no tienes, presiona enter):"
	Leer segundo_nombre
	segundo_nombre <- Mayusculas(segundo_nombre)
	
	curp1_4 <- Subcadena(primer_apellido, 1, 1)
	
	Definir vocal_encontrada Como Logico
	vocal_encontrada <- falso
	Para i <- 2 Hasta Longitud(primer_apellido) Hacer
		letra <- Subcadena(primer_apellido, i, i)
		Si vocal_encontrada = falso Entonces
			Si letra="A" O letra="E" O letra="I" O letra="O" O letra="U" Entonces
				curp1_4 <- Concatenar(curp1_4, letra)
				vocal_encontrada <- verdadero
			FinSi
		FinSi
	FinPara
	
	Si vocal_encontrada = falso Entonces
		curp1_4 <- Concatenar(curp1_4, "X")
	FinSi
	
	Si segundo_apellido = "" O segundo_apellido = " " Entonces
		curp1_4 <- Concatenar(curp1_4, "X")
	SiNo
		Si Subcadena(segundo_apellido, 1, 1) = "Ñ" Entonces
			curp1_4 <- Concatenar(curp1_4, "X")
		SiNo
			curp1_4 <- Concatenar(curp1_4, Subcadena(segundo_apellido, 1, 1))
		FinSi
	FinSi
	
	Si (primer_nombre="MARIA" O primer_nombre="JOSE") Y segundo_nombre <> "" Entonces
		nombre_a_usar <- segundo_nombre
	SiNo
		nombre_a_usar <- primer_nombre
	FinSi
	
	Si Subcadena(nombre_a_usar, 1, 1) = "Ñ" Entonces
		curp1_4 <- Concatenar(curp1_4, "X")
	SiNo
		curp1_4 <- Concatenar(curp1_4, Subcadena(nombre_a_usar, 1, 1))
	FinSi
	
	//1-4. excepciones: palabras altisonantes  (cambiar la primera vocal por x)
	//ver el documento de edelmira y probar los casos con la info proporcionada
	
	Segun Mayusculas(curp1_4) Hacer
		"BACA":
			curp1_4<-"BXCA"
		"BAKA":
			curp1_4<-"BXKA"
		"BUEI":
			curp1_4<-"BXEI"
		"BUEY":
			curp1_4<-"BXEY"
		"CACA":
			curp1_4<-"CXCA"
		"CACO":
			curp1_4<-"CXCO"
		"CAGA":
			curp1_4<-"CXGA"
		"CAGO":
			curp1_4<-"CXGO"
		"CAKA":
			curp1_4<-"CXKA"
		"CAKO":
			curp1_4<-"CXKO"
		"COGE":
			curp1_4<-"CXGE"
		"COGI":
			curp1_4<-"CXGI"
		"COJA":
			curp1_4<-"CXJA"
		"COJE":
			curp1_4<-"CXJE"
		"COJI":
			curp1_4<-"CXJI"
		"COJO":
			curp1_4<-"CXJO"
		"COLA":
			curp1_4<-"CXLA"
		"CULO":
			curp1_4<-"CXLO"
		"FALO":
			curp1_4<-"FXLO"
		"FETO":
			curp1_4<-"FXTO"
		"GETA":
			curp1_4<-"GXTA"
		"GUEI":
			curp1_4<-"GXEI"
		"GUEY":
			curp1_4<-"GXEY"
		"JETA":
			curp1_4<-"JXTA"
		"JOTO":
			curp1_4<-"JXTO"
		"KACA":
			curp1_4<-"KXCA"
		"KACO":
			curp1_4<-"KXCO"
		"KAGA":
			curp1_4<-"KXGA"
		"KAGO":
			curp1_4<-"KXGO"
		"KAKA":
			curp1_4<-"KXKA"
		"KAKO":
			curp1_4<-"KXKO"
		"KOGE":
			curp1_4<-"KXGE"
		"KOGI":
			curp1_4<-"KXGI"
		"KOJA":
			curp1_4<-"KXJA"
		"KOJE":
			curp1_4<-"KXJE"
		"KOJI":
			curp1_4<-"KXJI"
		"KOJO":
			curp1_4<-"KXJO"
		"KOLA":
			curp1_4<-"KXLA"
		"KULO":
			curp1_4<-"KXLO"
		"LILO":
			curp1_4<-"LXLO"
		"LOCA":
			curp1_4<-"LXCA"
		"LOCO":
			curp1_4<-"LXCO"
		"LOKA":
			curp1_4<-"LXKA"
		"LOKO":
			curp1_4<-"LXKO"
		"MAME":
			curp1_4<-"MXME"
		"MAMO":
			curp1_4<-"MXMO"
		"MEAR":
			curp1_4<-"MXAR"
		"MEAS":
			curp1_4<-"MXAS"
		"MEON":
			curp1_4<-"MXON"
		"MIAR":
			curp1_4<-"MXAR"
		"MION":
			curp1_4<-"MXON"
		"MOCO":
			curp1_4<-"MXCO"
		"MOKO":
			curp1_4<-"MXKO"
		"MULA":
			curp1_4<-"MXLA"
		"MULO":
			curp1_4<-"MXLO"
		"NACA":
			curp1_4<-"NXCA"
		"NACO":
			curp1_4<-"NXCO"
		"PEDA":
			curp1_4<-"PXDA"
		"PEDO":
			curp1_4<-"PXDO"
		"PENE":
			curp1_4<-"PXNE"
		"PIPI":
			curp1_4<-"PXPI"
		"PITO":
			curp1_4<-"PXTO"
		"POPO":
			curp1_4<-"PXPO"
		"PUTA":
			curp1_4<-"PXTA"
		"PUTO":
			curp1_4<-"PXTO"
		"QULO":
			curp1_4<-"QXLO"
		"RATA":
			curp1_4<-"RXTA"
		"ROBA":
			curp1_4<-"RXBA"
		"ROBE":
			curp1_4<-"RXBE"
		"ROBO":
			curp1_4<-"RXBO"
		"RUIN":
			curp1_4<-"RXIN"
		"SENO":
			curp1_4<-"SXNO"
		"TETA":
			curp1_4<-"TXTA"
		"VACA":
			curp1_4<-"VXCA"
		"VAGA":
			curp1_4<-"VXGA"
		"VAGO":
			curp1_4<-"VXGO"
		"VAKA":
			curp1_4<-"VXKA"
		"VUEI":
			curp1_4<-"VXEI"
		"VUEY":
			curp1_4<-"VXEY"
		"WUEI":
			curp1_4<-"WXEI"
		"WUEY":
			curp1_4<-"WXEY"
	Fin Segun
	
	//5-10 nacimiento pedir  la fecha de nacimiento con formato [DD/MM/AAAA]
	//2 digitos para el día, 2 para el mes y 4 para el año. Se sugiere manipularla como cadena
	
	//pedir fecha de nacimiento
	Repetir
		Escribir "Escribe tu fecha de nacimiento (dd/mm/aaaa)"
		leer fecha_nacimiento
	Mientras Que longitud(fecha_nacimiento)<>10 o subcadena(fecha_nacimiento, 3, 3)<>"/" o subcadena(fecha_nacimiento, 6, 6)<>"/"
	
	definir curp5_13 como cadena
	
	curp5_13<-subcadena(fecha_nacimiento, 9, 10)
	curp5_13<-Concatenar(curp5_13, subcadena(fecha_nacimiento,4, 5))
	curp5_13<-Concatenar(curp5_13, subcadena(fecha_nacimiento,1, 2))
	
	//11, Sexo. Pedir el sexo del individuo [H/M] [H para hombre y M para mujer]
	Repetir
		escribir "Escribe tu sexo (H/M)."
		leer sexo
		sexo<-mayusculas(sexo)
	Mientras Que sexo<>mayusculas("m") y sexo<>mayusculas("h")
	
	curp5_13<-Concatenar(curp5_13, sexo)
	
	//12-13
	
	
	Repetir
		Escribir "Escribe tu entidad federativa de nacimiento (No usar acentos, ejemplos: Sonora, Baja California, Guadalajara, CDMX, Mexico, ...)."
		leer entidad_federativa
		entidad_federativa<-mayusculas(entidad_federativa)
	Mientras Que entidad_federativa<>mayusculas("aguascalientes") y entidad_federativa<>mayusculas("baja california") y entidad_federativa<>mayusculas("baja california sur") y (entidad_federativa<>mayusculas("CAMPECHE")) y (entidad_federativa<>mayusculas("COAHUILA")) y (entidad_federativa<>mayusculas("COLIMA")) y (entidad_federativa<>mayusculas("CHIAPAS")) y (entidad_federativa<>mayusculas("CHIHUAHUA")) y (entidad_federativa<>mayusculas("CDMX")) y (entidad_federativa<>mayusculas("CIUDAD DE MEXICO")) y (entidad_federativa<>mayusculas("DURANGO")) y (entidad_federativa<>mayusculas("GUANAJUATO")) y (entidad_federativa<>mayusculas("GUERRERO")) y (entidad_federativa<>mayusculas("HIDALGO")) y (entidad_federativa<>mayusculas("JALISCO")) y (entidad_federativa<>mayusculas("MEXICO")) y (entidad_federativa<>mayusculas("MICHOACAN")) y (entidad_federativa<>mayusculas("MORELOS")) y (entidad_federativa<>mayusculas("NAYARIT")) y (entidad_federativa<>mayusculas("NUEVO LEON")) y (entidad_federativa<>mayusculas("OAXACA")) y (entidad_federativa<>mayusculas("PUEBLA")) y (entidad_federativa<>mayusculas("QUERETARO")) y (entidad_federativa<>mayusculas("QUINTANA ROO")) y (entidad_federativa<>mayusculas("SAN LUIS POTOSI")) y (entidad_federativa<>mayusculas("SINALOA")) y (entidad_federativa<>mayusculas("SONORA")) y (entidad_federativa<>mayusculas("TABASCO")) y (entidad_federativa<>mayusculas("TAMAULIPAS")) y (entidad_federativa<>mayusculas("TLAXCALA")) y (entidad_federativa<>mayusculas("VERACRUZ")) y (entidad_federativa<>mayusculas("YUCATAN")) y (entidad_federativa<>mayusculas("ZACATECAS"))

	

	Segun entidad_federativa Hacer
		"AGUASCALIENTES":
			entidad_federativa<-"AS"
		"BAJA CALIFORNIA":
			entidad_federativa<-"BC"
		"BAJA CALIFORNIA SUR":
			entidad_federativa<-"BS"
		"CAMPECHE":
			entidad_federativa<-"CC"
		"COAHUILA":
			entidad_federativa<-"CL"
		"COLIMA":
			entidad_federativa<-"CM"
		"CHIAPAS":
			entidad_federativa<-"CS"
		"CHIHUAHUA":
			entidad_federativa<-"CH"
		"CDMX" o "Ciudad de Mexico":
			entidad_federativa<-"DF"
		"DURANGO":
			entidad_federativa<-"DG"
		"GUANAJUATO":
			entidad_federativa<-"GT"
		"GUERRERO":
			entidad_federativa<-"GR"
		"HIDALGO":
			entidad_federativa<-"HG"
		"JALISCO":
			entidad_federativa<-"JC"
		"MEXICO":
			entidad_federativa<-"MC"
		"MICHOACAN":
			entidad_federativa<-"MN"
		"MORELOS":
			entidad_federativa<-"MS"
		"NAYARIT":
			entidad_federativa<-"NT"
		"NUEVO LEON":
			entidad_federativa<-"NL"
		"OAXACA":
			entidad_federativa<-"OC"
		"PUEBLA":
			entidad_federativa<-"PL"
		"QUERETARO":
			entidad_federativa<-"QT"
		"QUINTANA ROO":
			entidad_federativa<-"QR"
		"SAN LUIS POTOSI":
			entidad_federativa<-"SP"
		"SINALOA":
			entidad_federativa<-"SL"
		"SONORA":
			entidad_federativa<-"SR"
		"TABASCO":
			entidad_federativa<-"TC"
		"TAMAULIPAS":
			entidad_federativa<-"TS"
		"TLAXCALA":
			entidad_federativa<-"TL"
		"VERACRUZ":
			entidad_federativa<-"VZ"
		"YUCATAN":
			entidad_federativa<-"YN"
		"ZACATECAS":
			entidad_federativa<-"ZS"
	Fin segun
	
	curp5_13<-Concatenar(curp5_13, entidad_federativa)
	curp_final<-Concatenar(curp1_4, curp5_13)

	//14-16
	
	definir curp14_16 como caracter
	
	//14 primera consonante interna del primer apellido
	
	primer_apellido_temporal<-primer_apellido
	curp14_16<-""
	
	Para i<-2 Hasta longitud(primer_apellido_temporal) Con Paso 1 Hacer
		Si subcadena(primer_apellido_temporal, i, i)<>MAYUSCULAS("a") Y subcadena(primer_apellido_temporal, i, i)<>MAYUSCULAS("e") Y subcadena(primer_apellido_temporal, i, i)<>MAYUSCULAS("i") Y subcadena(primer_apellido_temporal, i, i)<>MAYUSCULAS("o") Y subcadena(primer_apellido_temporal, i, i)<>MAYUSCULAS("u") Entonces
			curp14_16<-mayusculas(Concatenar(curp14_16, subcadena(primer_apellido_temporal, i, i)))
			primer_apellido_temporal<-"aa"
		Fin Si
	Fin Para
	
	//15 primera consonante interna del segundo apellido
	
	segundo_apellido_temporal<-segundo_apellido
	
	si segundo_apellido="" o segundo_apellido=" " Entonces
		curp14_16<-Concatenar(curp14_16, "X")
	FinSi
	
	Si segundo_apellido<>"" o segundo_apellido<>" " entonces
		Para i<-2 Hasta longitud(segundo_apellido_temporal) Con Paso 1 Hacer
			Si subcadena(segundo_apellido_temporal, i, i)<>MAYUSCULAS("a") Y subcadena(segundo_apellido_temporal, i, i)<>MAYUSCULAS("e") Y subcadena(segundo_apellido_temporal, i, i)<>MAYUSCULAS("i") Y subcadena(segundo_apellido_temporal, i, i)<>MAYUSCULAS("o") Y subcadena(segundo_apellido_temporal, i, i)<>MAYUSCULAS("u") Entonces
				Si subcadena(segundo_apellido_temporal, i, i)=mayusculas("ñ") entonces
					curp14_16<-mayusculas(Concatenar(curp14_16, "X"))
					segundo_apellido_temporal<-"aa"
				finsi
				si subcadena(segundo_apellido_temporal, i, i)<>mayusculas("ñ") entonces
					curp14_16<-mayusculas(Concatenar(curp14_16, subcadena(segundo_apellido_temporal, i, i)))
					segundo_apellido_temporal<-"aa"
				FinSi
			Fin Si
		Fin Para
		Si longitud(segundo_apellido_temporal)=longitud(segundo_apellido) entonces
			curp14_16 <- Concatenar(curp14_16, "X")
		finsi
	finsi
	

	
	//16 primera consonante interna del nombre
	
	primer_nombre_temporal <- nombre_a_usar
	
	Definir se_encontro_consonante Como Logico
	se_encontro_consonante <- falso
	
	Para i<-2 Hasta longitud(primer_nombre_temporal) Con Paso 1 Hacer
		Si se_encontro_consonante = falso Entonces
			Si subcadena(primer_nombre_temporal, i, i)<>"A" Y subcadena(primer_nombre_temporal, i, i)<>"E" Y subcadena(primer_nombre_temporal, i, i)<>"I" Y subcadena(primer_nombre_temporal, i, i)<>"O" Y subcadena(primer_nombre_temporal, i, i)<>"U" Entonces
				se_encontro_consonante <- verdadero
				Si subcadena(primer_nombre_temporal, i, i)="Ñ" entonces
					curp14_16 <- Concatenar(curp14_16, "X")
				SiNo
					curp14_16 <- Concatenar(curp14_16, subcadena(primer_nombre_temporal, i, i))
				FinSi
			Fin Si
		FinSi
	Fin Para
	
	Si se_encontro_consonante = falso Entonces
		curp14_16 <- Concatenar(curp14_16, "X")
	FinSi
	

	curp_final<-Concatenar(curp_final, curp14_16)
	escribir ""
	escribir "Tu curp es: " curp_final
	
	ESCRIBIR " "
	ESCRIBIR "Gracias por usar mi programa, creado por Luna Elena Garcia Tapia para programación 1, bonito día"
FinAlgoritmo
