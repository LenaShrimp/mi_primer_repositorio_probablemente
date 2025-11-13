terminado=True
print("-"*43)
print("Bienvenid@ a mi algoritmo, este manipula los nombre de los alumnos dentro de las listas en Python.")
#crear lista con 3 elementos (str)
lista = ["Luna", "Isaiah", "Julio"]
enter="."
#agregar elementos
##Solicitar elementos al usuario (enter para terminar)
print("-"*6,"Listado original de 3 alumnos","-"*6)
print(lista)
while terminado == True:
    lista.append(input("¿Desea agregar el nombre de un alumno al listado? (Presione enter para terminar de añadir)."))
    if lista[-1] == "":
        print("-"*17,"Listado","-"*17)
        lista.remove("")
        terminado=False
#imprimir la cantidad (len)
print("Hay",len(lista), "alumnos anotados dentro de la lista.")
#imprimir los elementos ordenados (ordenar la lista) alfabeticamente (sort)
lista.sort()
print("Lista en orden alfabetico (A-->Z):", lista)

#recorrer la lista y eliminar todos los nombres que no empiecen con vocal print(lista)
listaFiltrada = []
vocales="AEIOUaeiou"
terminado=True
for nombre in lista:
    if len(nombre) > 0:
        primerCar = nombre[0]

        if primerCar in vocales:
            listaFiltrada.append(nombre)
lista=listaFiltrada
print("-"*43)
print("Removiendo nombres de alumnos que no inicien sin vocal...")
print("-"*43)
print("Alumnos restantes en orden alfabetico (A-->Z):",lista)
#imprimir la cantidad de nombres restantes
print("Queda(n)",len(lista),"alumno(s) restante(s).")
##imprimir los elementos en orden descendente (z->a) (reverse)
lista.sort(reverse=True)
print("Alumnos restantes en orden descendente (Z-->A):", lista)
print("-"*43)
print("¡Gracias por usar mi programa!","-"*5,"por Luna Elena Garcia Tapia","-"*5,"para Programación 1", "-"*5,"UNISON","-"*5)