Algoritmo Inventario_IPET
	Funcion menu_principal
		
		Escribir '-----------------------------------------'	
		Escribir '     IPET N� Guarnicion Aerea Cordoba    '
		Escribir '-----------------------------------------'	
		Escribir ''
		Escribir '      LOGIN      '
		
		
		Mientras  usuario == Falso
			Escribir 'USUARIO'
			Leer u
			Escribir 'CONTRASE�A'
			Leer c
			si (u o c) no existe
				usuario = Falso
			SiNo
				usuario = Verdadero
			FinSi
		FinMientras
		
		Repetir
			Escribir '----------------------------------'
			Escribir '          Men� Principal          '
			Escribir '----------------------------------'
			Escribir '1. Visualizar Elementos de Su laboratorio.'
			Escribir '2. Agregar Elementos a su laboratorio.'
			Escribir '3. Modificar Elementos de su laboratorio.'
			Escribir '0. Salir'
			Escribir 'Por Favor, Ingrese el n�mero de la opci�n deseada.'
			Leer op_menu
			
			Seg�n op_menu Hacer
				Caso 1:
					Escribir 'Que desea visualizar: '
					

						Escribir '1. Recursos Informaticos'
						Escribir '2. Herramental'
						Escribir '3. Equipamiento'
						Escribir '4. Insumos'
						Leer tipo
			
				Seg�n tipo Hacer
					Caso 1:
						Mostrar Info Informaticos
					Caso 2:
						Mostrar Info Herramental
					Caso 3:
						Mostrar Info Equipamiento
					Caso 4:
						Mostrar Info Insumos	
				FinSeg�n
	

				Caso 2:
					Escribir 'Que tipo de recurso desea dar de alta: '
					
					Escribir '1. Recursos Informaticos'
					Escribir '2. Herramental'
					Escribir '3. Equipamiento'
					Escribir '4. Insumos'
					Leer op_alta
					Segun op_alta Hacer
						Caso 1:
							Funcion agregado de elementos a Informaticos
						Caso 2:
							Funcion  agregado de elementos a Herramental	
						Caso 3:
							Funcion agregado de elementos a Equipamiento
						Caso 4:
							Funcion agregado de elementos a Insumos
					FinSegun

				Caso 3:
					Escribir 'Que tipo de recurso desea modificar'
					Escribir '1. Recursos Informaticos'
					Escribir '2. Herramental'
					Escribir '3. Equipamiento'
					Escribir '4. Insumos'
					Leer op_mod
					Segun op_mod Hacer
						Caso 1:
							Escribir 'Ingrese ID'
							Leer id
							Buscar id
							Escribir 'Que desea realizar'
							Escribir '1. Modificar Cantidad'
							Escribir '2. Modificar Estado'
							Escribir '3. Dar de baja'
							Leer a
							Segun a Hacer
								Caso 1:
									Modificar Cantidad
								Caso 2:
									Modificar Estado
								Caso 3:
									Eliminar Elemento
							FinSegun
						Caso 2:
							Escribir 'Ingrese ID'
							Leer id
							Buscar id
							Escribir 'Que desea realizar'
							Escribir '1. Modificar Cantidad'
							Escribir '2. Modificar Estado'
							Escribir '3. Dar de baja'
							Leer a
							Segun a Hacer
								Caso 1:
									Modificar Cantidad
								Caso 2:
									Modificar Estado
								Caso 3:
									Eliminar Elemento
							FinSegun
						Caso 3:
							Escribir 'Ingrese ID'
							Leer id
							Buscar id
							Escribir 'Que desea realizar'
							Escribir '1. Modificar Cantidad'
							Escribir '2. Modificar Estado'
							Escribir '3. Dar de baja'
							Leer a
							Segun a Hacer
								Caso 1:
									Modificar Cantidad
								Caso 2:
									Modificar Estado
								Caso 3:
									Eliminar Elemento
							FinSegun
						Caso 4:
							Escribir 'Ingrese ID'
							Leer id
							Buscar id
							Escribir 'Que desea realizar'
							Escribir '1. Modificar Cantidad'
							Escribir '2. Modificar Estado'
							Escribir '3. Dar de baja'
							Leer a
							Segun a Hacer
								Caso 1:
									Modificar Cantidad
								Caso 2:
									Modificar Estado
								Caso 3:
									Eliminar Elemento
							FinSegun
		Fin Repetir
FinAlgoritmo
