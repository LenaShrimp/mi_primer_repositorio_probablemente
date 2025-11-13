Proceso GenerarCuadrilateroEnDesmos
    
    // ---
    // Paso 1: Definición de variables y arreglo
    // ---
    Definir puntos Como Entero
    Dimension puntos[4, 2] // 4 puntos (filas), 2 coordenadas (columnas X, Y)
    
    Definir cx, cy, dx, dy Como Real // Centroide y diferenciales
    Definir angulos Como Real
    Dimension angulos[4] // Array para almacenar los ángulos
    
    // (Definición de PI eliminada, usaremos la constante PI incorporada)
    
    Definir tempAngulo Como Real
    Definir tempX, tempY, i, j Como Entero // Variables auxiliares
	
    // ---
    // Paso 2: Generar puntos aleatorios en el rango [-10, 10]
    // ---
    Escribir "Generando 4 puntos aleatorios entre (-10, -10) y (10, 10)..."
    Para i <- 1 Hasta 4 Hacer
        puntos[i, 1] <- Azar(21) - 10 // Columna 1 = Coordenada X
        puntos[i, 2] <- Azar(21) - 10 // Columna 2 = Coordenada Y
    FinPara
	
    // ---
    // Paso 3: Determinar el orden adecuado (Ordenamiento Angular)
    // ---
	
    // 3a. Calcular el centroide (punto promedio)
    cx <- (puntos[1, 1] + puntos[2, 1] + puntos[3, 1] + puntos[4, 1]) / 4
    cy <- (puntos[1, 2] + puntos[2, 2] + puntos[3, 2] + puntos[4, 2]) / 4
	
    // 3b. Calcular el ángulo de cada punto relativo al centroide
    // (Implementación manual de ArcTan2 usando ATan y la constante PI)
    Para i <- 1 Hasta 4 Hacer
        dx <- puntos[i, 1] - cx // Distancia X al centroide
        dy <- puntos[i, 2] - cy // Distancia Y al centroide
        
        Si dx = 0 Entonces // Evitar división por cero
            Si dy > 0 Entonces
                angulos[i] <- PI / 2 // 90 grados
            Sino
                Si dy < 0 Entonces
                    angulos[i] <- -PI / 2 // -90 grados
                Sino
                    angulos[i] <- 0 // Punto está en el centroide
                FinSi
            FinSi
        Sino
            // Calcular el ángulo base con ATan(y/x)
            angulos[i] <- ATan(dy / dx)
            
            // Ajustar el ángulo basado en el cuadrante (cuando X es negativo)
            Si dx < 0 Entonces
                Si dy >= 0 Entonces // Cuadrante II
                    angulos[i] <- angulos[i] + PI
                Sino // Cuadrante III
                    angulos[i] <- angulos[i] - PI
                FinSi
            FinSi
        FinSi
    FinPara
	
    // 3c. Ordenar los puntos basándose en los ángulos (Método Burbuja)
    
    Para i <- 1 Hasta 3 Hacer
        Para j <- 1 Hasta 3 Hacer 
            Si angulos[j] > angulos[j+1] Entonces
                // Intercambiar el ángulo
                tempAngulo <- angulos[j]
                angulos[j] <- angulos[j+1]
                angulos[j+1] <- tempAngulo
                
                // Intercambiar la Coordenada X del punto
                tempX <- puntos[j, 1]
                puntos[j, 1] <- puntos[j+1, 1]
                puntos[j+1, 1] <- tempX
                
                // Intercambiar la Coordenada Y del punto
                tempY <- puntos[j, 2]
                puntos[j, 2] <- puntos[j+1, 2]
                puntos[j+1, 2] <- tempY
            FinSi
        FinPara
    FinPara
	
    // ---
    // Paso 4: Imprimir los puntos en formato entendible para Desmos
    // ---
    
    Escribir "------------------------------------------------------"
    Escribir "Código para copiar en Desmos:"
    Escribir ""
    
    Escribir "polygon(" Sin Saltar
    Para i <- 1 Hasta 4 Hacer
        Escribir "(" Sin Saltar
        Escribir puntos[i, 1] Sin Saltar // X
        Escribir "," Sin Saltar
        Escribir puntos[i, 2] Sin Saltar // Y
        Escribir ")" Sin Saltar
        
        Si i < 4 Entonces
            Escribir "," Sin Saltar 
        FinSi
    FinPara
    Escribir ")" 
    Escribir ""
	
    // ---
    // Paso 5: Instrucción al usuario (Copiar y pegar)
    // ---
    Escribir "------------------------------------------------------"
    // (Línea corregida, sin comillas simples)
    Escribir "Instrucción: Copia la línea polygon(...) de arriba y pégala "
    Escribir "directamente en una línea de entrada de Desmos para ver el cuadrilátero."
    Escribir ""
	
    // ---
    // Paso 6: Enlace de las figuras plasmadas en Desmos
    // ---
    Escribir "------------------------------------------------------"
    Escribir "Enlace al graficador Desmos:"
    Escribir "https://www.desmos.com/calculator"
    Escribir ""
	
    // ---
    // Paso 7: Comentarios sobre las acciones realizadas
    // ---
    Escribir "------------------------------------------------------"
    Escribir "Comentarios sobre las acciones realizadas:"
    Escribir ""
    Escribir "// 1. Arreglo Bidimensional: Se usó Dimension puntos[4, 2]."
    Escribir "// 2. Puntos Aleatorios: Se usó Azar(21) - 10."
    Escribir "// 3. Ordenamiento: Para evitar que el cuadrilátero se cruzara (forma de moño),"
    Escribir "//    implementé un ordenamiento angular."
    Escribir "//    a. Se calcula el centroide."
    Escribir "//    b. Se calcula el ángulo de cada punto al centroide."
    Escribir "//    c. IMPORTANTE: Como PseInt no tiene ArcTan2(y, x), usé ATan(y/x) y"
    Escribir "//       luego ajusté el ángulo sumando o restando la constante PI (incorporada)"
    Escribir "//       dependiendo del cuadrante."
    Escribir "//    d. Se ordenan los puntos basándose en ese ángulo."
    Escribir "// 4. Formato Desmos: Se usó Escribir... Sin Saltar para construir la cadena"
    Escribir "//    polygon((x1,y1),(x2,y2),(x3,y3),(x4,y4))."

FinProceso