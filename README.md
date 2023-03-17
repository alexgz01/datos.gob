# Descripción trabajo

Esta imagen sirve para tratar con los siguientes datos sobre las plazas de empleos en Zaragoza:

- Detalles de las plazas de empleo (detalle_empleo.ttl).
- 
- Listado de los empleos (listado_empleo.ttl).
- 
Para ello hay un repositorio rdf llamado 'data' en GraphDB, el cual ya contiene dichos datos, para poder acceder a ellos hay que seguir unos pasos.

-----------------------------------------------------------------------

## Instrucciones de uso
-----------------------------------------------------------------------

1. Clonamos el repositorio github:

$ git clone <link_repositorio>


2. Nos situamos en el directorio donde los clonamos:

$ cd /datos.gob


3. Creamos una imagen con nuestro Dockerfile:

$ docker build -t <username>/<nombre_imagen> .


4. Creamos el contenedor con la imagen:

$ docker run -p 7200:7200 --name <nombre_contenedor> <username>/<nombre_imagen>


5. Abrimos en el navegador el siguiente link:

localhost:7200


6. Abrimos un repositorio de rdf:

Nos vamos a la opción 'import' en la interfaz de la izquierda y pulsamos en crear nuevo repositorio.
En las opciones seleccionamos 'GraphDB repositories'.
Lo creas con las especificaciones que usted quiera y selecciona el fichero rdf que hemos descargado.

-----------------------------------------------------------------------
## Uso imagen DockerHub
-----------------------------------------------------------------------

1. Descargamos la imagen:

$ docker pull alejandrogomezalonso/empleos-zaragoza


2. Creamos contenedor con la imagen:

$ docker run -p 7200:7200 --name <nombre_contendor> alejandrogomezalonso/empleos-zaragoza


3. Abrimos el puerto en el navegador:

localhost:7200


4. Consulta SPARQL:

Encontramos que ya hay un repositorio rdf creado con los datos ya introducidos, solo tenemos que seleccionarlos para hacer la consulta sobre el .ttl que queramos.

Como ejemplo, podemos hacer la siguiente:

