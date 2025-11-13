nombre, edad, peso="nombre:", 0, 0.0

nombre = input("¿Como te llamas? ")
nombre = str(nombre)

txt= f"¿{nombre} cuantos años tienes? "
edad = input(txt)
edad = int(edad)

txt= f"¿{nombre} cuanto pesas? "
peso = input(txt)
peso = float(peso)

txt = f"{nombre} {type(nombre)} tiene {edad} {type(edad)} años y pesa {peso:.2f}{type(peso)}kg."

print(txt)

'''
1. Asignar (multiples) valores a variables (usuario)
2. solicitar datos usuario 
    a. print/input
    b. input
3. Hacer conversiones a datos númericos 
4. Imprimir datos del usuario (con subtipo de dato)
    - Ej:"Juan (str) tiene 32(int) años y pesa 67 (float) kg"
'''
