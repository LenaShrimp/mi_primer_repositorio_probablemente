from math import pi
dimension, volumen, area, perimetro, r, h="dimension", 0.0, 0.0, 0.0, 0.0, 0.0

while dimension != "2D" and dimension != "3D":
    dimension = input("¿2D o 3D? ")
    dimension = str(dimension.upper())
    
if dimension == "2D":
    r = input("Dame el radio de tu figura.")
    r = float(r)
    area = pi*(r**2)
    perimetro = 2 * pi * r
    print("El circulo de radio", r, "unidades tiene un perimetro de", perimetro, " unidades y un area de", area, "unidades cuadradas.")

if dimension == "3D":
    r = input("Dame el radio de tu cilindro.")
    h = input("Dame la altura de tu cilindro.")
    r,h = float(r), float(h)
    volumen = pi * (r**2) * h
    area = 2 * pi * r * (r+h)
    print("El cilindro de radio", r, "unidades tiene un volumen de", volumen, "unidades cubicas y un area de", area, "unidades cubicas.")