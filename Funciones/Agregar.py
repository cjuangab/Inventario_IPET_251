from os import system
from time import sleep
import Menus
from Conector import *

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
    id = int(input("ID de elemento: "))
    a = input("Tipo de elemento: ")
    b = input("Marca: ")
    c = input("Numero de serie: ")
    
    try:
        conec = conexion()
        cursor = conec.cursor()
        sql = "insert into informaticos values(null,%s,%s,null,%s);"
        valores = (a,b,c)
        cursor.execute(sql,valores)
        conec.commit()
        print(cursor.rowcount,"Registro ingresado")
        conec.close()
    except mysql.connector.Error as e:
        print(f"Error {e}")
    
    agregado() 

def ag_herr():                              #Funcion en construccion, vinculacion con BDD
    id = int(input("ID de Herramienta: "))
    a = input("Tipo de Herramienta: ")
    b = input("Marca: ")
    c = input("Número de serie: ")
    g = "0"
    try:
        conec = conexion()
        cursor = conec.cursor()
        sql = "INSERT INTO herramental(idHerramental, tipo, marca, modelo, num_serie,uso,estado,Laboratorio_idlaboratorio) VALUES (%s, %s, %s, %s,%s,%s,%s,%s)"
        valores = (id, a, b,g, c,g,g,1)
        cursor.execute(sql, valores)
        conec.commit()
        conec.close()
        print(cursor.rowcount, "Registro ingresado")
    except mysql.connector.Error as e:
        print(f"Error {e}")


    sleep(5)
    agregado() 

def ag_eq():                              #Funcion en construccion, vinculacion con BDD
    id = int(input("ID de Equipo: "))
    a = input("Tipo de elemento: ")
    b = input("Marca: ")
    c = input("Numero de serie: ")
    g = "0"
    
    try:
        conec = conexion()
        cursor = conec.cursor()
        sql = "insert into equipamiento values(%s,%s,%s,%s,%s,%s,%s,%s,%s);"
        valores = (id,a,g,b,c,g,'2099-12-31',1)
        cursor.execute(sql,valores)
        conec.commit()
        print(cursor.rowcount,"Registro ingresado")
        conec.close()
    except mysql.connector.Error as e:
        print(f"Error {e}")
    agregado() 

def ag_ins():                              #Funcion en construccion, vinculacion con BDD
    a = input("Tipo de elemento: ")
    b = input("Marca: ")
    c = int(input("Cantidad de insumos: "))
    
    try:
        conec = conexion()
        cursor = conec.cursor()
        sql = "insert to insumos values(null,%s,%s,null,%s);"
        valores = (a,b,c)
        cursor.execute(sql,valores)
        conec.commit()
        print(cursor.rowcount,"Registro ingresado")
    except mysql.connector.Error as e:
        print(f"Error {e}")
    agregado() 

#agregado()

        