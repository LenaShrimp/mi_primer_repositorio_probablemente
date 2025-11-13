//1)simples (saludar)
//2)argumentos/parametros (mandar datos son argumentos y cuando los recibe la computadora son parametros) (saludar nombre)
//3)

SubAlgoritmo retorno <- salu3 ( nombre )
	definir retorno como cadena
	escribir "Hola " nombre " buen día."
	retorno<-"juanpiece"
Fin SubAlgoritmo

SubAlgoritmo   salu2 ( nombre )
	escribir "Hola " nombre " buen día."
	nombre <- "Adrian"
	escribir "Hola " nombre " buen día."
Fin SubAlgoritmo

//buenas practicas: las funciones se denotvan como verbos en infinitivo 
//se escriben en minusculas
SubAlgoritmo   salu1
	//escribir instrucciones
	escribir "Hola, buen día :)"
Fin SubAlgoritmo

//este es mi programa principal

Algoritmo funciones_definidas_por_el_usuario
	definir nombre, devuelta como cadena
	escribir "Como te llamas?"
	leer nombre //pedirle al usuario el nombre
	
	//lamar a las funciones
	salu1
	//salu2 al usuario
	salu2(nombre)
	escribir nombre
	//salu3
	devuelta<-salu3(nombre)
	escribir salu3(nombre)
	
	
FinAlgoritmo
//funciones definidas por el usuario
//1) dar orden simple 
//2) dar orden + nformación
//3) dar orden + información (opcional) + returno
	
//funciones predefinidas
