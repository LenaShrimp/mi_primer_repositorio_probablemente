from random import randint
from fractions import Fraction

F1, F2, F3, N1, D1, N2, D2 = 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0

#El denominador debe ser al menos 2 (para que el numerador pueda ser 1)
D1 = randint(2,9)
#El numerador debe ser al menos 1, pero siempre menor que el denominador
N1 = randint(1, D1 - 1)

D2 = randint(2,9)
N2 = randint(1, D2 - 1)

try:
    F1 = Fraction(N1, D1)
    F2 = Fraction(N2, D2)
except ZeroDivisionError:
    print("Error: Se generó un denominador 0.")
    exit()

print(f"Fracción 1: {F1}")
print(f"Fracción 2: {F2}")
print("-" * 20)

#Suma
print("Suma:")
F3 = F1 + F2
print(f"{F1} + {F2} = {F3}")
print(f"{F3} =",float(F3))

#Resta
print("Resta:")
F3 = F1 - F2
print(f"{F1} - {F2} = {F3}")
print(f"{F3} =",float(F3))
    
#Multiplicación
print("Multiplicación:")
F3 = F1 * F2
print(f"{F1} * {F2} = {F3}")
print(f"{F3} =",float(F3))

#División
print("División:")
F3 = F1 / F2
print(f"{F1} / {F2} = {F3}")
print(f"{F3} =",float(F3))

print("-" * 20)

'''
1. Fraccion1='numerador1/denominador1' Fraccion2='n2/d2' 
2. Que la fraccion en total sea menor a 1 n1:0 al 9 d1>=N

a) suma: n1/d1 + n2/d2 = F3
b) resta: n1/d1 - n2/d2 = F3
c) multiplicación: (n1/d1) * (n2/d2) = F3
d) división: (n1/d1) / (n2/d2) = F3

3.Que la fracción resultante sea simplificada
'''