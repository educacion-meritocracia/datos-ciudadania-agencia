# Datos Primer estudio de Formación Ciudadana (2017) de la Agencia de Calidad de la Educación

El **objetivo** de este repositorio es generar la documentación adecuada para los datos obtenidos en el primer estudio de formación ciudadana realizado en noviembre de 2017. Para esto, se sigue la propuesta de protocolo de publicación de datos realizada por el Laboratorio de Investigación Social Abierta [LISA-COES](https://lisa-coes.com/).

La propuesta general de publicación de datos está basada en el Protocolo IPO y está disponible en [este enlace](https://lisa-coes.com/ipo-data/)

La estructura del repositorio es la siguiente:

```

├───README.md = Este documento
|
├───datos-ciudadania-agencia.Rproj = Proyecto de R para flujo de trabajo
│
├───input
│       data = Datos originales levantados por la Agencia de calidad de la educación
│             - alumnosFc_mrun.csv = Datos de identificación de estudiantes y puntaje prueba conocimiento
|             - cuestAlumnos.csv = Base de datos de estudiantes
|             - cuestDirector.csv = Base de datos directores
|             - cuestPadres.csv = Base de datos apoderados
|             - cuestProfes.csv = Base de datos profesores
|             - simce8b2017_rbd_publica_final.dta = Datos del SIMCE 2017 aplicado a octavo básico
|
|       estudio-piloto = documentos del estudio piloto realizado por la agencia de calidad de la educación
|             cuestionarios-piloto = Cuestionarios del estudio piloto
|             licitaciones-piloto = Contrato y objetivos de licitaciones para el estudio piloto
|
│       instrumentos = instrumentos de medición del primer estudio de Formación Ciudadana 2017
|             - propuesta-conceptual-ciudadania-pdf = Propuesta de conceptos y definiciones para elaborar items
|             - cuestionario-estudiantes.pdf = Cuestionario aplicado a estudiantes
|
|       Glosa_FC.xsls = Libro de códigos original de la Agencia
|
└───procesamiento
|       01-prep_estudiantes.Rmd = Documento .Rmd de preparación base de datos estudiantes
|       01-prep_estudiantes.html = Documento .html (renderizado de .Rmd) de preparación base de datos estudiantes
|       02-prep_apoderados.Rmd = Documento .Rmd de preparación base de datos apoderados
|       02-prep_apoderados.html = Documento .html (renderizado de .Rmd) de preparación base de datos apoderados
|
└───output
|       base_apoderados.RData = Base de datos final de apoderados
|       base_est_apod.RData = Base de datos final que incluye merge de estudiantes y apoderados
|       base_estudiantes.RData = Base de datos final de estudiantes
|       libro_codigos.xlsx = Libro de códigos que incluye datos imputados desde otras bases de datos del MINEDUC
|
└───reporte-descriptivo <- Reporte descriptivo y análisis de principales resultados del estudio de Formación Ciudadana

```

Para más información sobre los distintos componentes que incluye la propuesta de publicación de datos de LISA visitar [este enlace](https://lisa-coes.com/02componentes/)

* Github Pages de este repositorio: https://educacion-meritocracia.github.io/datos-ciudadania-agencia/

- Documentación de preparación base de datos estudiantes: https://educacion-meritocracia.github.io/datos-ciudadania-agencia/procesamiento/01-prep_estudiantes.html
- Documentación de preparación base de datos apoderados: https://educacion-meritocracia.github.io/datos-ciudadania-agencia/procesamiento/01-prep_estudiantes.html

* Reporte descriptivo del estudio: https://educacion-meritocracia.github.io/datos-ciudadania-agencia/reporte-descriptivo/Reporte.html
