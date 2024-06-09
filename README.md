# Inventario_IPET_251

Integrante n° 1: Cabrera Juan Gabriel, DNI: 39.448.561, cabrerajuangab@gmail.com, https://github.com/cjuangab/Intro_Programacion.git

Integrante n°2: Santarena Maria Florencia, DNI: 38.909.688, florsantarena@gmail.com, https://github.com/mfsantarena/actividadesispc.git

El siguiente programa tiene como objetivo inventariar los recursos educativos con los que cuentan los docentes del IPET 251.

En primera instancia el usuario (docente de cada laboratorio) podra acceder a un menu (probablemente por consola) Donde podra:

* Visualizar los elementos disponibles
* Agregar un recurso nuevo
* Modificar un recurso existente

A su vez estas opciones le permitiran al usuario Elegir entre:

* Informaticos
* Equipamiento
* Herramental
* Insumos

Al visualizar solamente podra obtener informacion de todos los elementos o de algun elemento en particular, como su estado, su asignacion, su cantidad, etc.

Al agregar le permitira al usuario agregar un elemento nuevo a la base de datos

Y al modificar le permitira modificar alguno de los elementos existentes e incluso eliminarlos (para esto ultimo la intencion es crear usuarios con mayores credenciales que podrian ser un director o jefe de taller, para que solos ellos puedan dar de baja un elemento de la base de datos, para evitar las perdidas de los registros de los mismos)



## **MODULOS QUE LO INTEGRAN**

* Inventario_IPET: Modulo principal o index nucleo del programa
* Bienvenida: Modulo que integra las funciones de bienvenida y despedida del programa
* Menus: Modulo que integra la funcionalidad del menu principal
* Visualizacion: Modulo que integra las funciones correspondiente a visualisar elementos de la Base de datos
* Agregar: Modulo que integra las funciones correspondietes al agregado de elementos a la Base de datos


### Inventario_IPET.py

En este modulo no se definen funciones, solamente se implementan las funciones de los demas.

Se importan los modulos de Menus.py Bienvenida.py y modulos propios de Python como lo son os.py y time.py

Importamos la funcion sleep(tiempo_en_segundos) para hacer un standby en la ejecucion lo suficiente como para leer mensajes importantes

Y a la funcion system("cls") la utilizamos para limpiar la consola y dar una imagen mas limpia.

Estas dos funciones integradas las utilizamos a lo largo de todos los modulos



### Bienvenida.py

Este modulo integra tres modulos que son sustancialmente similares entre ellas

* bienvenida()
* bienvenida_prof(prof)
* cierre(prof)

##### bienvenida()

Esta funcion integra una serie de print() para dar un mensaje de bienvenida, con el nombre de la institucion

##### bienvenida_prof(prof)

Esta funcion integra una serie de print() para dar un mensaje de bienvenida, solicita por parametro el ingreso de un string para dar un mensaje de bienvenida personalizado al profesor

##### cierre(prof)

Esta funcion integra una serie de print() para dar un mensaje de despedida, solicita por parametro el ingreso de un string para dar un mensaje de despedida personalizado al profesor



### Menus.py



Defina una sola funcion

menu_principal():

Esta funcion no retorna ni requiere ningun parametro para ejecutarse, simplemente integra informacion de opciones que el usuario puede tomar las cuales son:

1. Visualizar Elementos de Su laboratorio.
2. Agregar Elementos a su laboratorio.
3. Modificar Elementos de su laboratorio.
4. Salir

Seguido a esto se le pide al usuario que elija una opcion por consola y un condicional match-case toma diferentes acciones en base a la opcion elegida

1. Se llama a la funcion importada visualizar_elementos()
2. Se llama a la funcion importada agregado()
3. Se muestra por consola un mensaje (por ahora)
4. Cierra el programa
5. En caso de que se seleccione alguna opcion no correcta (numerica) el programa repetira el menu (esta en desarrollo en el caso que el usuario coloque una letra o cualquier otra cosa)



### visualizacion.py


En este modulo estan definidas las funciones 

* visualizar_elementos()
* visualizar_info(tipo)
* listado_completo(tipo)
* delay()

Dentro del modulo importamos el modulo Menus.py y de los modulos random.py a randint() y de os.py a system("cls")


##### visualizar_elementos()

Funcion que no requiere parametros en el argumento, esta funcion cumple la tarea de un sub menu dedicada a mostrar elementos almacenados en la base de datos.

Su operacion es similar a la funcion menu_principal del modulo Menus.py

Se le muestran opciones al usuario y un match-case toma desiciones en base a esta opcion:

1. Recursos Informaticos
2. Herramental
3. Equipamiento
4. Insumos
5. Menu Principal (esta opcion es la 0)

Para los cuatro primeros casos llama a la funcion visualizar_info() ingresando por argumento un string con el tipo de recurso a visualizar, para la quinta opcion muestra mensaje de "opcion incorrecta" y retorna a inicio de la funcion



##### visualizar_info(tipo)

Esta funcion requiere un string como argumento, nos presenta un sub menu con tres opciones las cuales son:

1. Listado completo
2. Elemento unico
3. Volver atras

En listado completo llama a la funcion listado_completo() y le pasa por argumento el tipo que le pasamos por agumento a la funcion visualizar_info(), terminada esta llama a la funcion delay() que espera al usuario hasta que aprieta la tecla ENTER

En la segunda opcion de Elemento unico la funcion le pide al usuario el id del elemento a mostar (esta funcion aun esta en discusion y desarrollo, es una funcion de consulta de base de datos)

Por ultimo le permite al usuario volver al menu anterior a travez de la funcion visualizar_elementos()


##### listado_completo(tipo)

Esta funcion es una funcion de consulta de base de datos, actualmente solo muestra un listado aleatorio de elementos a modo de ejemplo


##### delay():

Esta funcion integra simplemente un input que no va a ninguna variable, para esperar a que el usuario presione ENTER para continuar, su uso es principalmente reducir largo de la funcion originar a al hora de programar, estetica y orden del codigo



### Agregar.py


Este modulo es un modulo ligado a la Base de datos el cual debe tener como principal funcion el agregado o alta de recursos en esta (instancias de las entidades)

Define 5 funciones 

* agregado()
* ag_info()
* ag_herr()
* ag_eq()
* ag_ins()


##### agregado()


Funcion que no requiere parametros en el argumento, esta funcion cumple la tarea de un sub menu dedicada a agregar elementos a la base de datos.

Su operacion es similar a la funcion menu_principal del modulo Menus.py

Se le muestran opciones al usuario y un match-case toma desiciones en base a esta opcion:

1. Recursos Informaticos
2. Herramental
3. Equipamiento
4. Insumos
5. Menu Principal (esta opcion es la 0)


Para cada caso la funcion llama a las funciones ag_info() ag_herr() ag_eq() ag_ins() las cuales son las encargadas de agregar los elementos correspondientes a la Base de datos

Para el ultimo caso retona al menu principal a partir de la funcion Menus.menu_principal

Para cualquier otro caso numerico la funcion repite la funcion agregado() junto con un mensaje de opcion invalida (aun en desarrollo en caso que el usuario ingrese letra o algun otro)


##### ag_info() ag_herr() ag_eq() ag_ins()

Estas funciones estan en desarrollo, trabajarian de manera similiar, solamente que cada una especificamente para cada tipo de elemento a agregar, dado que unos tiene atributos diferentes a los demas, son funciones vinculativas a la Base de datos, pero por el momento solamente son funciones de ejemplo que solicitan valores random al usuario y muestran un mensaje por consola
