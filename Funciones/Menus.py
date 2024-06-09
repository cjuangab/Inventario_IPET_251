from visualizacion import visualizar_elementos
from Agregar import agregado
from os import system               #Importamos del modulo os la funcion system("cls") para poder borrar la consola
from time import sleep              #Importamos del modulo time la funcion sleep() que nos permite realizar un retraso en el sistema


def menu_principal():
    op_menu=99
    print("-----------------------------------")
    print('          Menú Principal          ')
    print("-----------------------------------")
    print('1. Visualizar Elementos de Su laboratorio.')
    print('2. Agregar Elementos a su laboratorio.')
    print('3. Modificar Elementos de su laboratorio.')
    print('0. Salir')
    op_menu=int(input("Por Favor, Ingrese el número de la opción deseada: "))
    match op_menu:
        case 1:
            visualizar_elementos()
        case 2:
            agregado()
        case 3:
            print("Modificar")
        case 0:
            exit
        case _:
            print("Opcion Incorrecta")
            sleep(1)
            system("cls")
            menu_principal()



    
    
    

