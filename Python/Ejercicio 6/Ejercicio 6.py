import random
print("Bienvenid@ a mi programa, este calcula el promedio de calificaciones de un alumno usando un diccionario en Python.")

while True:
    nombre=input("¿Cual es tu nombre?")
    if nombre!="":
        break
    else:
        print("El nombre no puede estar vacio, introduce un nombre de alumno.")
materias={}
calificaciones=0
print(f"A continuación introduce las materias para {nombre}.")
while True:
    materia=input("Introduce nombre de la materia (Enter para terminar)")
    if materia=="":
        break
    while True:
        califInput=input(f"Calificacion para {materia} (Enter para generar al azar):")
        if califInput=="":
            califNumero=random.randint(30,100)
            print(f"Calificacion aleatoria generada de {califNumero} para {materia}")
            break
        else:
            try:
                califNumero=float(califInput)
                break
            except ValueError:
                print("Debes introducir un numero entero o presionar enter")
    materias[materia]=califNumero
    calificaciones= calificaciones + califNumero
if len(materias)>0:
    cantidad=len(materias)
    promedio=calificaciones/cantidad
    print(f"{nombre} obtuvo un promedio de {promedio:.2f} en el semestre 2025-2 con la(s) siguiente(s) materia( s):")
    for mat,cal in materias.items():
        print(f" - {mat}:{cal}")
else:
    print(f"{nombre} no registro ninguna materia")

print("Gracias por usar mi programa, adios!")
