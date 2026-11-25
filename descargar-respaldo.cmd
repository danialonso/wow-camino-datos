@echo off
setlocal EnableDelayedExpansion
chcp 65001 >nul
cd /d "%~dp0"
rem WOW Camino de Santiago - descarga todas las fuentes de respaldo con su nombre exacto.
rem Doble clic. Descarga en esta misma carpeta con curl (incluido en Windows 10 y 11).
rem Despues sube a GitHub los archivos que hayan salido bien (Add file > Upload files).
where curl >nul 2>nul || (echo No se encuentra curl en este equipo. & pause & exit /b 1)
set OK=0
set KO=0
set "FALLIDOS="
echo Descargando 22 archivos. Los de Otras rutas son grandes y pueden tardar.
echo.
set "U1=https://abertos.sergas.gal/dataset/5ae2df63-36fc-4273-a700-e4c91bbf44c9/resource/bd6d09ad-295b-4e14-b819-3cb991c9dfef/download/mapa-servizos-sanitarios-galicia-es.csv"
set "U2=https://caminoahora.com/datos/albergues.json"
set "U3=https://www.ign.es/wms-inspire/camino-santiago?SERVICE=WFS&VERSION=1.0.0&REQUEST=GetFeature&TYPENAME=camino_frances&PROPERTYNAME=geom,id_camino,nombre_camino,nombre_etapa&SRSNAME=EPSG:4326&OUTPUTFORMAT=application/json"
set "U4=https://www.ign.es/wms-inspire/camino-santiago?SERVICE=WFS&VERSION=1.0.0&REQUEST=GetFeature&TYPENAME=caminos_galicia&PROPERTYNAME=geom,id_camino,nombre_camino,nombre_etapa&SRSNAME=EPSG:4326&OUTPUTFORMAT=application/json&CQL_FILTER=id_camino%%20IN%%20('ES02a'%%2C'ES40b')"
set "U5=https://www.ign.es/wms-inspire/camino-santiago?SERVICE=WFS&VERSION=1.0.0&REQUEST=GetFeature&TYPENAME=caminos_galicia&PROPERTYNAME=geom,id_camino,nombre_camino,nombre_etapa&SRSNAME=EPSG:4326&OUTPUTFORMAT=application/json&CQL_FILTER=id_camino%%20IN%%20('ES06a')"
set "U6=https://www.ign.es/wms-inspire/camino-santiago?SERVICE=WFS&VERSION=1.0.0&REQUEST=GetFeature&TYPENAME=caminos_galicia&PROPERTYNAME=geom,id_camino,nombre_camino,nombre_etapa&SRSNAME=EPSG:4326&OUTPUTFORMAT=application/json&CQL_FILTER=id_camino%%20IN%%20('ES07a')"
set "U7=https://www.ign.es/wms-inspire/camino-santiago?SERVICE=WFS&VERSION=1.0.0&REQUEST=GetFeature&TYPENAME=caminos_norte&PROPERTYNAME=geom,id_camino,nombre_camino,nombre_etapa&SRSNAME=EPSG:4326&OUTPUTFORMAT=application/json&CQL_FILTER=id_camino%%20IN%%20('ES03a')"
set "U8=https://www.ign.es/wms-inspire/camino-santiago?SERVICE=WFS&VERSION=1.0.0&REQUEST=GetFeature&TYPENAME=caminos_norte&PROPERTYNAME=geom,id_camino,nombre_camino,nombre_etapa&SRSNAME=EPSG:4326&OUTPUTFORMAT=application/json&CQL_FILTER=id_camino%%20IN%%20('ES05a')"
set "U9=https://www.ign.es/wms-inspire/camino-santiago?SERVICE=WFS&VERSION=1.0.0&REQUEST=GetFeature&TYPENAME=caminos_galicia&PROPERTYNAME=geom,id_camino,nombre_camino,nombre_etapa&SRSNAME=EPSG:4326&OUTPUTFORMAT=application/json&CQL_FILTER=id_camino%%20IN%%20('ES18a')"
set "U10=https://www.ign.es/wms-inspire/camino-santiago?SERVICE=WFS&VERSION=1.0.0&REQUEST=GetFeature&TYPENAME=caminos_galicia&PROPERTYNAME=geom,id_camino,nombre_camino,nombre_etapa&SRSNAME=EPSG:4326&OUTPUTFORMAT=application/json&CQL_FILTER=id_camino%%20IN%%20('ES17a')"
set "U11=https://www.ign.es/wms-inspire/camino-santiago?SERVICE=WFS&VERSION=1.0.0&REQUEST=GetFeature&TYPENAME=caminos_andaluces&PROPERTYNAME=geom,id_camino,nombre_camino,nombre_etapa&SRSNAME=EPSG:4326&OUTPUTFORMAT=application/json&CQL_FILTER=id_camino%%20IN%%20('ES04a')"
set "U12=https://www.ign.es/wms-inspire/camino-santiago?SERVICE=WFS&VERSION=1.0.0&REQUEST=GetFeature&TYPENAME=caminos_centro&PROPERTYNAME=geom,id_camino,nombre_camino,nombre_etapa&SRSNAME=EPSG:4326&OUTPUTFORMAT=application/json&CQL_FILTER=id_camino%%20IN%%20('ES04b')"
set "U13=https://www.ign.es/wms-inspire/camino-santiago?SERVICE=WFS&VERSION=1.0.0&REQUEST=GetFeature&TYPENAME=caminos_galicia&PROPERTYNAME=geom,id_camino,nombre_camino,nombre_etapa&SRSNAME=EPSG:4326&OUTPUTFORMAT=application/json&CQL_FILTER=id_camino%%20IN%%20('ES40a')"
set "U14=https://www.ign.es/wms-inspire/camino-santiago?SERVICE=WFS&VERSION=1.0.0&REQUEST=GetFeature&TYPENAME=caminos_galicia&PROPERTYNAME=geom,id_camino,nombre_camino,nombre_etapa&SRSNAME=EPSG:4326&OUTPUTFORMAT=application/json&CQL_FILTER=id_camino%%20NOT%%20IN%%20('ES02a'%%2C'ES40b'%%2C'ES06a'%%2C'ES07a'%%2C'ES18a'%%2C'ES17a'%%2C'ES40a')"
set "U15=https://www.ign.es/wms-inspire/camino-santiago?SERVICE=WFS&VERSION=1.0.0&REQUEST=GetFeature&TYPENAME=caminos_norte&PROPERTYNAME=geom,id_camino,nombre_camino,nombre_etapa&SRSNAME=EPSG:4326&OUTPUTFORMAT=application/json&CQL_FILTER=id_camino%%20NOT%%20IN%%20('ES03a'%%2C'ES05a')"
set "U16=https://www.ign.es/wms-inspire/camino-santiago?SERVICE=WFS&VERSION=1.0.0&REQUEST=GetFeature&TYPENAME=caminos_andaluces&PROPERTYNAME=geom,id_camino,nombre_camino,nombre_etapa&SRSNAME=EPSG:4326&OUTPUTFORMAT=application/json&CQL_FILTER=id_camino%%20NOT%%20IN%%20('ES04a')"
set "U17=https://www.ign.es/wms-inspire/camino-santiago?SERVICE=WFS&VERSION=1.0.0&REQUEST=GetFeature&TYPENAME=caminos_centro&PROPERTYNAME=geom,id_camino,nombre_camino,nombre_etapa&SRSNAME=EPSG:4326&OUTPUTFORMAT=application/json&CQL_FILTER=id_camino%%20NOT%%20IN%%20('ES04b')"
set "U18=https://www.ign.es/wms-inspire/camino-santiago?SERVICE=WFS&VERSION=1.0.0&REQUEST=GetFeature&TYPENAME=caminos_portugueses&PROPERTYNAME=geom,id_camino,nombre_camino,nombre_etapa&SRSNAME=EPSG:4326&OUTPUTFORMAT=application/json"
set "U19=https://www.ign.es/wms-inspire/camino-santiago?SERVICE=WFS&VERSION=1.0.0&REQUEST=GetFeature&TYPENAME=caminos_este&PROPERTYNAME=geom,id_camino,nombre_camino,nombre_etapa&SRSNAME=EPSG:4326&OUTPUTFORMAT=application/json"
set "U20=https://www.ign.es/wms-inspire/camino-santiago?SERVICE=WFS&VERSION=1.0.0&REQUEST=GetFeature&TYPENAME=caminos_nordeste&PROPERTYNAME=geom,id_camino,nombre_camino,nombre_etapa&SRSNAME=EPSG:4326&OUTPUTFORMAT=application/json"
set "U21=https://www.ign.es/wms-inspire/camino-santiago?SERVICE=WFS&VERSION=1.0.0&REQUEST=GetFeature&TYPENAME=caminos_sureste&PROPERTYNAME=geom,id_camino,nombre_camino,nombre_etapa&SRSNAME=EPSG:4326&OUTPUTFORMAT=application/json"
set "U22=https://www.ign.es/wms-inspire/camino-santiago?SERVICE=WFS&VERSION=1.0.0&REQUEST=GetFeature&TYPENAME=caminos_insulares&PROPERTYNAME=geom,id_camino,nombre_camino,nombre_etapa&SRSNAME=EPSG:4326&OUTPUTFORMAT=application/json"
call :get 1 "sergas.csv" csv
call :get 2 "albergues.json" json
call :get 3 "ign-frances.geojson" geojson
call :get 4 "ign-portugues.geojson" geojson
call :get 5 "ign-ingles.geojson" geojson
call :get 6 "ign-fisterra.geojson" geojson
call :get 7 "ign-norte.geojson" geojson
call :get 8 "ign-primitivo.geojson" geojson
call :get 9 "ign-costa.geojson" geojson
call :get 10 "ign-invierno.geojson" geojson
call :get 11 "ign-plata-1.geojson" geojson
call :get 12 "ign-plata-2.geojson" geojson
call :get 13 "ign-arousa.geojson" geojson
call :get 14 "ign-otras-1.geojson" geojson
call :get 15 "ign-otras-2.geojson" geojson
call :get 16 "ign-otras-3.geojson" geojson
call :get 17 "ign-otras-4.geojson" geojson
call :get 18 "ign-otras-5.geojson" geojson
call :get 19 "ign-otras-6.geojson" geojson
call :get 20 "ign-otras-7.geojson" geojson
call :get 21 "ign-otras-8.geojson" geojson
call :get 22 "ign-otras-9.geojson" geojson
echo.
echo Correctos: !OK!   Con error: !KO!
if !KO! GTR 0 echo Con error (no los subas; los anteriores siguen sirviendo):!FALLIDOS!
echo Ahora sube a GitHub los archivos correctos (Add file ^> Upload files).
echo.
pause
exit /b 0

:get
set "N=%~2"
set "K=%~3"
<nul set /p "=%N% ... "
del "%N%.tmp" 2>nul
curl -sS -L --fail --retry 2 --connect-timeout 30 --max-time 600 -A "WOW-Camino-respaldo" -o "%N%.tmp" "!U%1!"
if errorlevel 1 goto bad
for %%A in ("%N%.tmp") do if %%~zA LSS 200 goto bad
set "FIRST="
set /p FIRST=<"%N%.tmp"
set "F20=!FIRST:~0,20!"
rem Una pagina web o un error XML empiezan por "<": no es el archivo.
if not "!F20:<=!"=="!F20!" goto bad
if "%K%"=="csv" if "!FIRST:Identificador=!"=="!FIRST!" goto bad
if "%K%"=="geojson" if "!FIRST:Feature=!"=="!FIRST!" goto bad
move /y "%N%.tmp" "%N%" >nul
for %%A in ("%N%") do set /a KB=%%~zA/1024
echo OK  !KB! KB
set /a OK+=1
exit /b 0

:bad
del "%N%.tmp" 2>nul
echo ERROR
set /a KO+=1
set "FALLIDOS=!FALLIDOS! %N%"
exit /b 0
