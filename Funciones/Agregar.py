from os import system
from time import sleep
import Menus

def agregado():
    system("cls")
    print("-----------------------------------")
    print('          ALTA DE RECURSOS         ')
    print("-----------------------------------")
    print("                                   ")
    print("         Que desea agregar         ")
    print("-----------------------------------")
    print("                                   ")
    print('1. Recursos Informaticos')
    print('2. Herramental')
    print('3. Equipamiento')
    print('4. Insumos')
    print('0. Menu Principal')
    print("                                   ")
    op_ag = int(input(": "))
    match op_ag:
        case 1:
            ag_info()
            
        case 2:
            ag_herr()

        case 3:
            ag_eq()

        case 4:
            ag_ins()

        case 0:
            system("cls")
            Menus.menu_principal()
        case _:
            print("Opcion Incorrecta")
            agregado()


def ag_info():                              #Funcion en construccion, vinculacion con BDD
    a = input("Nombre de elemento: ")
    b = input("otro valor...")
    print(f"Confirma que desea agregar {a}  {b}")
    input("presione ENTER para continuar")
    print("-----------------------------------")
    print("Funcion aun en construccion")
    print("-----------------------------------") 
    sleep(1)
    agregado() 

def ag_herr():                              #Funcion en construccion, vinculacion con BDD
    a = input("Nombre de elemento: ")
    b = input("otro valor...")
    print(f"Confirma que desea agregar {a}  {b}")
    input("presione ENTER para continuar")
    print("-----------------------------------")
    print("Funcion aun en construccion")
    print("-----------------------------------")
    sleep(1)
    agregado() 

def ag_eq():                              #Funcion en construccion, vinculacion con BDD
    a = input("Nombre de elemento: ")
    b = input("otro valor...")
    print(f"Confirma que desea agregar {a}  {b}")
    input("presione ENTER para continuar")
    print("-----------------------------------")
    print("Funcion aun en construccion")
    print("-----------------------------------")
    sleep(1)
    agregado() 

def ag_ins():                              #Funcion en construccion, vinculacion con BDD
    a = input("Nombre de elemento: ")
    b = input("otro valor...")
    print(f"Confirma que desea agregar {a}  {b}")
    input("presione ENTER para continuar")
    print("-----------------------------------")
    print("Funcion aun en construccion")
    print("-----------------------------------")
    sleep(1)
    agregado() 

#agregado()

        