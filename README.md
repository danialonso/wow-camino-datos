# WOW Camino de Santiago · datos de respaldo

Copia de respaldo de las fuentes oficiales que usa el script de Tampermonkey **WOW Camino de Santiago** (MapRaid de Waze España).
Solo se usa si la fuente oficial no responde. El editor descarga el archivo con su navegador desde *Datos > Descarga manual > Respaldo* y lo importa en el script.

**Los archivos deben conservar exactamente estos nombres**: los enlaces del script apuntan a ellos.
Un enlace da error mientras su archivo no se haya subido.

## Cómo actualizar un archivo

1. Descarga el archivo desde el enlace «Fuente original» de la tabla. Si se abre en una pestaña, guárdalo con Ctrl+S (Cmd+S en Mac).
2. Renómbralo con el nombre de la tabla.
3. Súbelo a este repositorio en GitHub con *Add file > Upload files*, reemplazando el anterior.
4. Actualiza su fecha en la tabla.

## Archivos

| Archivo | Contenido | Fuente original | Fecha de la copia |
|---|---|---|---|
| sergas.csv | Farmacias, centros de salud y hospitales de Galicia | [SERGAS, datos abiertos](https://abertos.sergas.gal/dataset/5ae2df63-36fc-4273-a700-e4c91bbf44c9/resource/bd6d09ad-295b-4e14-b819-3cb991c9dfef/download/mapa-servizos-sanitarios-galicia-es.csv) | 24-nov-2026 |
| albergues.json | Albergues del Camino | [Camino Ahora](https://caminoahora.com/datos/albergues.json) | (sin subir) |
| ign-frances.geojson | Trazado IGN · Camino Francés | [IGN / FEAACS](https://www.ign.es/wms-inspire/camino-santiago?SERVICE=WFS&VERSION=1.0.0&REQUEST=GetFeature&TYPENAME=camino_frances&PROPERTYNAME=geom,id_camino,nombre_camino,nombre_etapa&SRSNAME=EPSG:4326&OUTPUTFORMAT=application/json) | (sin subir) |
| ign-portugues.geojson | Trazado IGN · Camino Portugués | [IGN / FEAACS](https://www.ign.es/wms-inspire/camino-santiago?SERVICE=WFS&VERSION=1.0.0&REQUEST=GetFeature&TYPENAME=caminos_galicia&PROPERTYNAME=geom,id_camino,nombre_camino,nombre_etapa&SRSNAME=EPSG:4326&OUTPUTFORMAT=application/json&CQL_FILTER=id_camino%20IN%20('ES02a'%2C'ES40b')) | (sin subir) |
| ign-ingles.geojson | Trazado IGN · Camino Inglés | [IGN / FEAACS](https://www.ign.es/wms-inspire/camino-santiago?SERVICE=WFS&VERSION=1.0.0&REQUEST=GetFeature&TYPENAME=caminos_galicia&PROPERTYNAME=geom,id_camino,nombre_camino,nombre_etapa&SRSNAME=EPSG:4326&OUTPUTFORMAT=application/json&CQL_FILTER=id_camino%20IN%20('ES06a')) | (sin subir) |
| ign-fisterra.geojson | Trazado IGN · Fisterra-Muxía | [IGN / FEAACS](https://www.ign.es/wms-inspire/camino-santiago?SERVICE=WFS&VERSION=1.0.0&REQUEST=GetFeature&TYPENAME=caminos_galicia&PROPERTYNAME=geom,id_camino,nombre_camino,nombre_etapa&SRSNAME=EPSG:4326&OUTPUTFORMAT=application/json&CQL_FILTER=id_camino%20IN%20('ES07a')) | (sin subir) |
| ign-norte.geojson | Trazado IGN · Camino del Norte | [IGN / FEAACS](https://www.ign.es/wms-inspire/camino-santiago?SERVICE=WFS&VERSION=1.0.0&REQUEST=GetFeature&TYPENAME=caminos_norte&PROPERTYNAME=geom,id_camino,nombre_camino,nombre_etapa&SRSNAME=EPSG:4326&OUTPUTFORMAT=application/json&CQL_FILTER=id_camino%20IN%20('ES03a')) | (sin subir) |
| ign-primitivo.geojson | Trazado IGN · Camino Primitivo | [IGN / FEAACS](https://www.ign.es/wms-inspire/camino-santiago?SERVICE=WFS&VERSION=1.0.0&REQUEST=GetFeature&TYPENAME=caminos_norte&PROPERTYNAME=geom,id_camino,nombre_camino,nombre_etapa&SRSNAME=EPSG:4326&OUTPUTFORMAT=application/json&CQL_FILTER=id_camino%20IN%20('ES05a')) | (sin subir) |
| ign-costa.geojson | Trazado IGN · Portugués de la Costa | [IGN / FEAACS](https://www.ign.es/wms-inspire/camino-santiago?SERVICE=WFS&VERSION=1.0.0&REQUEST=GetFeature&TYPENAME=caminos_galicia&PROPERTYNAME=geom,id_camino,nombre_camino,nombre_etapa&SRSNAME=EPSG:4326&OUTPUTFORMAT=application/json&CQL_FILTER=id_camino%20IN%20('ES18a')) | (sin subir) |
| ign-invierno.geojson | Trazado IGN · Camino de Invierno | [IGN / FEAACS](https://www.ign.es/wms-inspire/camino-santiago?SERVICE=WFS&VERSION=1.0.0&REQUEST=GetFeature&TYPENAME=caminos_galicia&PROPERTYNAME=geom,id_camino,nombre_camino,nombre_etapa&SRSNAME=EPSG:4326&OUTPUTFORMAT=application/json&CQL_FILTER=id_camino%20IN%20('ES17a')) | (sin subir) |
| ign-plata-1.geojson | Trazado IGN · Vía de la Plata (parte 1) | [IGN / FEAACS](https://www.ign.es/wms-inspire/camino-santiago?SERVICE=WFS&VERSION=1.0.0&REQUEST=GetFeature&TYPENAME=caminos_andaluces&PROPERTYNAME=geom,id_camino,nombre_camino,nombre_etapa&SRSNAME=EPSG:4326&OUTPUTFORMAT=application/json&CQL_FILTER=id_camino%20IN%20('ES04a')) | (sin subir) |
| ign-plata-2.geojson | Trazado IGN · Vía de la Plata (parte 2) | [IGN / FEAACS](https://www.ign.es/wms-inspire/camino-santiago?SERVICE=WFS&VERSION=1.0.0&REQUEST=GetFeature&TYPENAME=caminos_centro&PROPERTYNAME=geom,id_camino,nombre_camino,nombre_etapa&SRSNAME=EPSG:4326&OUTPUTFORMAT=application/json&CQL_FILTER=id_camino%20IN%20('ES04b')) | (sin subir) |
| ign-arousa.geojson | Trazado IGN · Ruta del Mar de Arousa | [IGN / FEAACS](https://www.ign.es/wms-inspire/camino-santiago?SERVICE=WFS&VERSION=1.0.0&REQUEST=GetFeature&TYPENAME=caminos_galicia&PROPERTYNAME=geom,id_camino,nombre_camino,nombre_etapa&SRSNAME=EPSG:4326&OUTPUTFORMAT=application/json&CQL_FILTER=id_camino%20IN%20('ES40a')) | (sin subir) |
| ign-otras-1.geojson | Trazado IGN · Otras rutas (parte 1) | [IGN / FEAACS](https://www.ign.es/wms-inspire/camino-santiago?SERVICE=WFS&VERSION=1.0.0&REQUEST=GetFeature&TYPENAME=caminos_galicia&PROPERTYNAME=geom,id_camino,nombre_camino,nombre_etapa&SRSNAME=EPSG:4326&OUTPUTFORMAT=application/json&CQL_FILTER=id_camino%20NOT%20IN%20('ES02a'%2C'ES40b'%2C'ES06a'%2C'ES07a'%2C'ES18a'%2C'ES17a'%2C'ES40a')) | (sin subir) |
| ign-otras-2.geojson | Trazado IGN · Otras rutas (parte 2) | [IGN / FEAACS](https://www.ign.es/wms-inspire/camino-santiago?SERVICE=WFS&VERSION=1.0.0&REQUEST=GetFeature&TYPENAME=caminos_norte&PROPERTYNAME=geom,id_camino,nombre_camino,nombre_etapa&SRSNAME=EPSG:4326&OUTPUTFORMAT=application/json&CQL_FILTER=id_camino%20NOT%20IN%20('ES03a'%2C'ES05a')) | (sin subir) |
| ign-otras-3.geojson | Trazado IGN · Otras rutas (parte 3) | [IGN / FEAACS](https://www.ign.es/wms-inspire/camino-santiago?SERVICE=WFS&VERSION=1.0.0&REQUEST=GetFeature&TYPENAME=caminos_andaluces&PROPERTYNAME=geom,id_camino,nombre_camino,nombre_etapa&SRSNAME=EPSG:4326&OUTPUTFORMAT=application/json&CQL_FILTER=id_camino%20NOT%20IN%20('ES04a')) | (sin subir) |
| ign-otras-4.geojson | Trazado IGN · Otras rutas (parte 4) | [IGN / FEAACS](https://www.ign.es/wms-inspire/camino-santiago?SERVICE=WFS&VERSION=1.0.0&REQUEST=GetFeature&TYPENAME=caminos_centro&PROPERTYNAME=geom,id_camino,nombre_camino,nombre_etapa&SRSNAME=EPSG:4326&OUTPUTFORMAT=application/json&CQL_FILTER=id_camino%20NOT%20IN%20('ES04b')) | (sin subir) |
| ign-otras-5.geojson | Trazado IGN · Otras rutas (parte 5) | [IGN / FEAACS](https://www.ign.es/wms-inspire/camino-santiago?SERVICE=WFS&VERSION=1.0.0&REQUEST=GetFeature&TYPENAME=caminos_portugueses&PROPERTYNAME=geom,id_camino,nombre_camino,nombre_etapa&SRSNAME=EPSG:4326&OUTPUTFORMAT=application/json) | (sin subir) |
| ign-otras-6.geojson | Trazado IGN · Otras rutas (parte 6) | [IGN / FEAACS](https://www.ign.es/wms-inspire/camino-santiago?SERVICE=WFS&VERSION=1.0.0&REQUEST=GetFeature&TYPENAME=caminos_este&PROPERTYNAME=geom,id_camino,nombre_camino,nombre_etapa&SRSNAME=EPSG:4326&OUTPUTFORMAT=application/json) | (sin subir) |
| ign-otras-7.geojson | Trazado IGN · Otras rutas (parte 7) | [IGN / FEAACS](https://www.ign.es/wms-inspire/camino-santiago?SERVICE=WFS&VERSION=1.0.0&REQUEST=GetFeature&TYPENAME=caminos_nordeste&PROPERTYNAME=geom,id_camino,nombre_camino,nombre_etapa&SRSNAME=EPSG:4326&OUTPUTFORMAT=application/json) | (sin subir) |
| ign-otras-8.geojson | Trazado IGN · Otras rutas (parte 8) | [IGN / FEAACS](https://www.ign.es/wms-inspire/camino-santiago?SERVICE=WFS&VERSION=1.0.0&REQUEST=GetFeature&TYPENAME=caminos_sureste&PROPERTYNAME=geom,id_camino,nombre_camino,nombre_etapa&SRSNAME=EPSG:4326&OUTPUTFORMAT=application/json) | (sin subir) |
| ign-otras-9.geojson | Trazado IGN · Otras rutas (parte 9) | [IGN / FEAACS](https://www.ign.es/wms-inspire/camino-santiago?SERVICE=WFS&VERSION=1.0.0&REQUEST=GetFeature&TYPENAME=caminos_insulares&PROPERTYNAME=geom,id_camino,nombre_camino,nombre_etapa&SRSNAME=EPSG:4326&OUTPUTFORMAT=application/json) | (sin subir) |

## Fuentes y licencias

- **sergas.csv**: Servizo Galego de Saúde (SERGAS), *Mapa dos servizos sanitarios de Galicia*, abertos.sergas.gal. Licencia CC BY-SA 4.0. Copia sin modificar.
- **albergues.json**: Camino Ahora (caminoahora.com), con datos del registro de la Xunta de Galicia. Licencia CC BY-SA 4.0. Copia sin modificar.
- **ign-*.geojson**: Instituto Geográfico Nacional (IGN) / FEAACS, servicio *Caminos de Santiago* (www.ign.es/wms-inspire/camino-santiago). Comprueba la licencia del IGN en su web antes de publicarlos; es habitual que sea CC BY 4.0. Copia sin modificar.

Estos datos son solo de referencia para los editores: no se copian a Waze. Cada archivo conserva la licencia de su fuente. Las copias con licencia CC BY-SA se redistribuyen con esa misma licencia.
