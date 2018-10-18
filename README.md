# programa_academico_crud
API de programa acedmico, Integración con CI
programa_academico_crud master/develop
 ## Requirements
Go version >= 1.8.
 ## Preparation:
    Para usar el API, usar el comando:
        - go get github.com/udistrital/programa_academico_crud
 ## Run
 Definir los valores de las siguientes variables de entorno:
  - `PROGRAMA_ACADEMICO_HTTP_PORT`: Puerto asignado para la ejecución del API
 - `PROGRAMA_ACADEMICO_CRUD__PGUSER`: Usuario de la base de datos
 - `PROGRAMA_ACADEMICO_CRUD__PGPASS`: Clave del usuario para la conexión a la base de datos  
 - `PROGRAMA_ACADEMICO_CRUD__PGURLS`: Host de conexión
 - `PROGRAMA_ACADEMICO_CRUD__PGDB`: Nombre de la base de datos
 - `PROGRAMA_ACADEMICO_CRUD__SCHEMA`: Esquema a utilizar en la base de datos
 ## Example:
PROGRAMA_ACADEMICO_HTTP_PORT=8095 PROGRAMA_ACADEMICO_CRUD__PGUSER=postgres PROGRAMA_ACADEMICO_CRUD__PGPASS=password PROGRAMA_ACADEMICO_CRUD__PGURLS=localhost PROGRAMA_ACADEMICO_CRUD__PGDB=local PROGRAMA_ACADEMICO_CRUD__SCHEMA=core_new bee run
 ## Model DB
![image](https://github.com/udistrital/programa_academico_crud/blob/develop/modelo_programa_academico_crud.png).
