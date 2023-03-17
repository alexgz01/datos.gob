# Imagen base
FROM ontotext/graphdb:10.1.5

# Abrimos directorio de almacenamiento
RUN mkdir /root/graphdb-import
WORKDIR /root/graphdb-import

# Descarga de archivos
RUN wget -O detalle_empleo.ttl https://www.zaragoza.es/sede/servicio/oferta-empleo/690.ttl && \
    wget -O listado_empleo.ttl https://www.zaragoza.es/sede/servicio/oferta-empleo/list.ttl

# Exponer el puerto 7200
EXPOSE 7200

# Comando por defecto para iniciar GraphDB
CMD ["/opt/graphdb/bin/graphdb", "-Dgraphdb.home=/opt/graphdb/home"]