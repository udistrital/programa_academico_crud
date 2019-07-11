# programa_academico_crud
API de programas académicos

Integración con

 - `CI`
 - `AWS Lambda - S3`
 - `Drone 1.x`
 - `programa_academico_crud master/develop`

## Requerimientos
Go version >= 1.8.

## Preparación
Para usar el API, usar el comando:

 - `go get github.com/planesticud/programa_academico_crud`

## Ejecución
Definir los valores de las siguientes variables de entorno:

 - `PROGRAMA_ACADEMICO_HTTP_PORT`: Puerto asignado para la ejecución del API
 - `PROGRAMA_ACADEMICO_CRUD__PGUSER`: Usuario de la base de datos
 - `PROGRAMA_ACADEMICO_CRUD__PGPASS`: Clave del usuario para la conexión a la base de datos  
 - `PROGRAMA_ACADEMICO_CRUD__PGURLS`: Host de conexión
 - `PROGRAMA_ACADEMICO_CRUD__PGDB`: Nombre de la base de datos
 - `PROGRAMA_ACADEMICO_CRUD__SCHEMA`: Esquema a utilizar en la base de datos

## Ejemplo
PROGRAMA_ACADEMICO_HTTP_PORT=8101 PROGRAMA_ACADEMICO_CRUD__PGUSER=user PROGRAMA_ACADEMICO_CRUD__PGPASS=password PROGRAMA_ACADEMICO_CRUD__PGURLS=localhost PROGRAMA_ACADEMICO_CRUD__PGDB=bd PROGRAMA_ACADEMICO_CRUD__SCHEMA=schema_new bee run

## Modelo BD
![image](https://github.com/planesticud/programa_academico_crud/blob/develop/modelo_programa_academico_crud.png).
