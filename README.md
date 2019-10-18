# Ciudadania-Agencia

Estudio ciudadanía según datos de la agencia de la educacion. 

Reporte en HTML con una análisis exploratorio de la base de datos con información de los resultados obtenidos en el estudio de formación ciudadana del años 2017 (Datos levantados por la Agencia de la Calidad de la educación).

El **objetivo** de este reporte es profundizar en un aspecto central del proyecto Fondecyt: identificar la transmisión intergeneracional de la desigualdad política, orientada a evaluar la coincidencia de las actitudes, conocimiento, creencias y comportamiento para el ejercicio de la ciudadanía entre padres/madres y sus hijos(as). Para esto, el presente reporte considera el análisis de tres instrumentos: 

+ Resultados prueba de conocimiento cívico `bbdd_puntajes`
+ Cuestionarios a estudiantes sobre creencias, conocimiento, actitudes y prácticas (CCAP), para el ejercicio de la ciudadanía:`bbdd_estudiantes`
+ Cuestionarios a estudiantes sobre creencias, conocimiento, actitudes y prácticas (CCAP), para el ejercicio de la ciudadanía:`bbdd_padres`

Las temáticas relevantes para los fines de investigación de este proyecto son los siguientes: 

1. **Interés Político**
2. **Percepción sobre la democracia**
3. **Participación política**
4. **Participación en organizaciones**
5. **Atributos de un buen ciudadano**
6. **Confianza en las instituciones**  
7. **Percepciones sobre paz y violencia**

Estos temas se observan a la luz de las siguientes variables: 

1. **Género de los/as estudiantes**
2. **Cantidad de libros en el hogar**
3. **Puntaje en la prueba de conocimiento**

Los análisis disponibles en estos códigos son los siguientes:

- Merge de las bases de datos
- Análisis y documentación de la no respuesta
- Descripción de las principales variables del estudio
- Mapa de las variables espejo (preguntado para padres e hijos)
- Análisis correlacional de las variables espejo (Panel de correlaciones y gráficos tipo scatter plot) de las principales variables entre padres e hijos
- Modelos de regresión lineal, asumiendo las variables como continuas
- Modelos de regresión logístico ordinales
- Interacciones relevantes

Asimismo se puede hacer una revisión dinámica de las variables del estudio, sus descripción y el tipo individuos que responde (alumnos, padres o ambos) en el Documento de consulta:  https://panelciudadania.shinyapps.io/Documento_consulta/

Todas las decisiones de análisis están documentadas en el respectivo documento markdown de reporte.

[Presentación 18 Octubre](https://juancarloscastillo.github.io/ciudadania-agencia/Presentacion_Estudio_Agencia.html)


José Daniel Conejeros

