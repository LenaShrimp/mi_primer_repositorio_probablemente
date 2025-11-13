from random import randint
saldo, nip, ingresos, m1, m2, m3, nipIntento, intentos=randint(3800, 4600),6978,0,"1","2","3",0000,int(0)
x=True

while nipIntento != nip:
    if intentos == 3:
        break
    print("Bienvenid@ al cajero CCVA") 
    print("Escaneando tarjeta...")
    print("Tarjeta valida.")
    nipIntento = input("Ingrese su nip para entrar a la cuenta (4 digitos).")
    nipIntento = int(nipIntento)
    intentos=intentos+1
    #3 intento fallidos
    if intentos == 3:
        print("Tarjeta bloqueada, llame al (662) 259.2155 para desbloquear.")
        nipIntento = str(nipIntento)
        while nipIntento != "":
            nipIntento = input("Presione enter para salir del cajero.") 
            if nipIntento == "":
                print("Adios, gracias por elegirnos.")
                break

if nipIntento == nip:
    opciones=input("¿Qué desea hacer hoy?")
    opciones=int(opciones)
    match opciones:
        case 1:
            print("Cambiar NIP")
        case 2:
            print("Retirar dinero")
        case 3:
            print("Depositar dinero")
        case 4:
            print("Ver movimientos")
        case 5:
            print("Consultar saldo")
        case 6:
            print("Saliendo...")
            x=False

'''
Ejercicio 4: Simular cajero automático
    X. Instrucciones
        1. Saldo azar [3800,4600]
        2. NIP: 6978
        3. Ingresos: 3 intentos posibles
        4. Un menu de opciones
            A. Cambiar NIP
                a. Pedir NIP
                    1.Cambiarlo
                    2.Pedir confirmación
            B. Retirar
            C. Depositar
            D. Movimiento
                1. Ultimos 3 movimientos 
            E. Consultar saldo
            F. Salir (De la cuenta)
    Y. Restricciones:
        1. NIP incorrecto: 3 intentos
        2. Retro: >0 y menor saldo y multiplos de $50 pesos
        3. Deposio: $25000, exceso cobrar 10% comisión > 0
        4. Solo ultimos 3 movimientos
'''