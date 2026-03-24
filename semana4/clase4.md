# Descripción de la clase de hoy

Hoy la clase trató sobre el **análisis exploratorio de datos**, también llamado **AED** o **EDA**. Básicamente, es el primer vistazo serio que se le da a un conjunto de datos antes de hacer cálculos más avanzados o aplicar pruebas estadísticas.

Su finalidad es entender:

- cómo son los datos
- si están bien registrados
- si tienen errores
- si hay valores raros
- si siguen algún patrón
- si existe relación entre variables

En otras palabras, antes de sacar conclusiones, primero debemos **mirar, ordenar, resumir y visualizar** los datos. No se trata de empezar suponiendo cosas, sino de dejar que los datos nos muestren qué está pasando.

La diapositiva resalta justamente que el EDA busca comprender la **estructura, calidad y características principales** del conjunto de datos, sin partir de hipótesis estrictas al inicio.

---

## 1. ¿Qué es el análisis exploratorio de datos?

El análisis exploratorio de datos es como cuando un médico revisa primero al paciente antes de dar un diagnóstico.

No empieza recetando de frente. Primero:

- observa síntomas
- mide
- pregunta
- compara
- revisa si algo está fuera de lo normal

Con los datos pasa igual:

- primero observamos
- luego resumimos
- después graficamos
- y recién más adelante analizamos con mayor profundidad

### Ejemplo sencillo

Supón que tienes las notas de 30 estudiantes.

Antes de hacer pruebas o comparar grupos, conviene revisar:

- cuál es la nota mínima y máxima
- si la mayoría aprobó
- si hay una nota extremadamente baja o alta
- si las notas están muy dispersas
- si la distribución se ve equilibrada o sesgada

Eso ya es hacer **análisis exploratorio**.

---

## 2. Objetivos principales del AED

La clase menciona varios objetivos importantes del análisis exploratorio.

### a) Conocer la naturaleza de los datos

Primero hay que identificar qué tipo de variables tenemos:

- **cualitativas o categóricas**, como sexo, color de ojos, tipo de carrera
- **cuantitativas o numéricas**, como edad, peso, estatura, glucosa

También se revisa la **escala de medición**:

- nominal
- ordinal
- intervalo
- razón

### Ejemplo

Si en una base de datos aparece:

- sexo → cualitativa nominal
- nivel de satisfacción → cualitativa ordinal
- temperatura en °C → cuantitativa de intervalo
- peso en kg → cuantitativa de razón

Esto es importante porque no todas las variables se analizan igual.

### b) Revisar la calidad de los datos

Otro objetivo es comprobar si los datos están bien registrados. La clase menciona tres puntos clave:

- valores faltantes
- datos atípicos
- errores de registro

### Ejemplo

Imagina una tabla de edades:

`18, 19, 20, 21, 250`

Ese `250` probablemente no sea una edad real, sino un error.

O quizá una columna de peso tiene varios espacios vacíos.

O en vez de registrar “Femenino” y “Masculino”, alguien escribió:

- F
- M
- fem
- masc

todo mezclado.

El AED sirve justamente para detectar esos problemas antes de analizar.

### c) Resumir y describir los datos

La clase recuerda que aquí entran las medidas de resumen:

- media
- mediana
- moda
- varianza
- desviación estándar
- rango
- IQR o rango intercuartílico
- frecuencias y proporciones

### Ejemplo

Si tienes los pesos de un grupo:

`50, 52, 53, 54, 55`

puedes resumirlos diciendo:

- el promedio está cerca de `52.8`
- los datos no están muy dispersos
- no parecen existir valores raros

Pero si los datos fueran:

`50, 52, 53, 54, 90`

ahí ya cambia la interpretación, porque `90` parece un valor atípico.

---

## 3. Visualizar los datos

Uno de los puntos más importantes de la clase es que el AED no solo usa números, sino también gráficos. De hecho, la presentación insiste en que hay que **visualizar antes de analizar**.

La clase menciona:

- **gráficos univariados**: histogramas, diagramas de caja, gráficos de barras
- **gráficos bivariados**: diagramas de dispersión y barras agrupadas
- **gráficos multivariados**: mapas de calor, para relaciones más complejas

### a) Gráficos univariados

Se usan cuando queremos estudiar **una sola variable**.

#### Histograma

Sirve para ver cómo se distribuyen los datos numéricos.

##### Ejemplo

Si graficas las edades de 100 alumnos, el histograma te puede mostrar si:

- la mayoría está concentrada entre 17 y 20 años
- hay pocos alumnos mayores
- la forma se parece a un montículo
- o si está sesgada hacia un lado

#### Diagrama de caja y bigote

Ayuda a ver:

- mediana
- dispersión
- cuartiles
- posibles valores atípicos

En la diapositiva de la página 7 aparece un ejemplo con la distribución del **IMC en estudiantes**, usando una caja y bigotes. Ese tipo de gráfico permite ver rápidamente dónde se concentra la mayoría y si hay observaciones muy alejadas.

##### Ejemplo

Si en un grupo el IMC de casi todos está entre `22` y `26`, pero uno tiene `34`, el diagrama puede mostrar ese valor como raro o extremo.

#### Gráfico de barras

Sirve para variables categóricas.

##### Ejemplo

Si preguntas la carrera de 40 estudiantes:

- Ingeniería: 15
- Medicina: 12
- Enfermería: 8
- Psicología: 5

un gráfico de barras ayuda a comparar fácilmente las frecuencias.

### b) Gráficos bivariados

Se usan para estudiar la relación entre **dos variables**.

#### Diagrama de dispersión

La diapositiva de la página 7 muestra un ejemplo entre **glucosa y triglicéridos**. Allí los puntos forman una tendencia ascendente, lo que sugiere que cuando una variable aumenta, la otra también tiende a aumentar.

##### Ejemplo sencillo

Si comparas:

- horas de estudio
- nota final

y al hacer el gráfico observas que los estudiantes que estudian más suelen tener mejor nota, entonces hay una posible **relación positiva**.

Ojo: eso no demuestra causalidad automáticamente, pero sí da una pista importante.

---

## 4. Detectar patrones

La clase también enfatiza que el EDA sirve para descubrir patrones. Entre ellos menciona:

- posibles correlaciones
- grupos naturales o clústeres
- tendencias
- estacionalidad en series temporales

### a) Correlaciones

Una correlación es cuando dos variables cambian de manera relacionada.

#### Ejemplo

Si sube la glucosa y también suben los triglicéridos, puede haber una asociación.

Eso es justamente lo que se intenta observar con el gráfico de dispersión.

### b) Grupos naturales o clústeres

A veces los datos parecen dividirse en grupos.

#### Ejemplo

Si analizas altura y peso, podría pasar que un grupo corresponda a adolescentes y otro a adultos.

No hace falta que al inicio te digan que existen esos grupos; el EDA ayuda a descubrirlos.

### c) Tendencias temporales

Cuando los datos están ordenados en el tiempo, buscamos si suben, bajan o cambian.

En la presentación aparecen ejemplos de estudios sobre:

- la evolución de los niveles de colesterol sérico entre 2001 y 2018
- cambios en hemoglobina en trabajadores mineros expuestos a gran altura

Estos ejemplos muestran cómo el análisis exploratorio también sirve para observar cambios a lo largo del tiempo y diferencias entre grupos.

#### Ejemplo fácil

Si registras cada mes el número de pacientes atendidos en una posta médica, podrías observar:

- meses con mayor demanda
- meses con menor demanda
- una tendencia creciente
- o un comportamiento repetitivo

---

## 5. Preguntas que se plantea el AED

La clase enumera varias preguntas típicas que uno debe hacerse al explorar datos.

### a) ¿Cómo es la forma de la distribución?

Se pregunta si los datos:

- están sesgados
- tienen forma de montículo
- son bimodales

#### ¿Qué significa eso?

##### Distribución sesgada

Es cuando los datos no están equilibrados y “se jalan” más hacia un lado.

###### Ejemplo

En ingresos económicos, muchas personas ganan montos bajos o medios y pocas personas ganan mucho. Eso genera una cola hacia la derecha.

##### Forma de montículo

Es cuando los datos se concentran alrededor del centro y disminuyen hacia los extremos, parecido a una campana.

###### Ejemplo

Las estaturas de una población suelen acercarse a esta forma.

##### Bimodal

Es cuando aparecen dos picos.

###### Ejemplo

Si mezclas en un mismo grupo las edades de escolares y las de profesores, podrías obtener dos concentraciones distintas.

### b) ¿Existen relaciones entre variables?

Esto se analiza con gráficos bivariados.

#### Ejemplo

- glucosa vs triglicéridos
- peso vs talla
- horas de estudio vs nota

La idea es ver si una variable cambia junto con otra.

### c) ¿Hay valores atípicos?

La diapositiva indica que los valores atípicos pueden señalar:

- problemas en la calidad del dato
- o hallazgos interesantes

#### Ejemplo

Si todos los pacientes pesan entre `50` y `90` kg y uno aparece con `400` kg, quizá sea un error.

Pero si en un estudio médico un valor extremo es real, entonces puede ser un caso importante que merece atención.

### d) ¿Existen patrones temporales?

Es decir, si los datos cambian con el tiempo de manera ordenada.

#### Ejemplo

Las ventas de helados suelen subir en verano y bajar en invierno.

Eso sería un patrón temporal o estacional.

---

## 6. Tipos de análisis exploratorio según el tipo de dato

La clase diferencia tres enfoques.

### a) Análisis exploratorio de datos categóricos

Se centra en:

- distribución de frecuencias
- representación gráfica

#### Ejemplo

Si registras el tipo de sangre de 100 personas:

- O+: 35
- A+: 30
- B+: 20
- AB+: 15

puedes resumir con frecuencias y graficar con barras o sectores.

### b) Análisis exploratorio de datos cuantitativos

Se centra en:

- estadística de resumen
- representación gráfica

#### Ejemplo

Con edades o pesos puedes calcular:

- media
- mediana
- desviación estándar

y además hacer:

- histogramas
- diagramas de caja

### c) Análisis exploratorio multivariado

Aquí se observan varias variables al mismo tiempo.

#### Ejemplo

En un estudio de salud podrías analizar conjuntamente:

- edad
- presión arterial
- glucosa
- colesterol
- IMC

Así ya no ves cada variable aislada, sino sus relaciones.

---

## 7. Métodos descriptivos que se usan en el EDA

En la última parte, la clase organiza los métodos descriptivos en dos grandes bloques:

- métodos numéricos
- métodos gráficos

Dentro de ellos aparecen:

### Métodos numéricos

- distribución de frecuencia
- tabulación de datos
- medidas de tendencia central
- medidas de dispersión
- medidas de forma
- medidas de posición

### Métodos gráficos

- barras
- sectores
- caja y bigote
- histograma

### Idea clave

Un buen análisis exploratorio no depende solo de fórmulas ni solo de gráficos.  
Lo correcto es **combinar ambos**.

---

## 8. Buenas prácticas en EDA

La clase cierra con dos recomendaciones importantes:

- **Visualiza antes de analizar. No asumas normalidad.**
- **Registra los hallazgos iterativamente.**

Esto significa:

### a) No asumir normalidad

No debes pensar automáticamente que los datos tienen forma de campana.  
Primero hay que mirar:

- el histograma
- la caja y bigotes
- u otros gráficos

#### Ejemplo

Si ves notas de examen, no puedes decir “seguro son normales” sin revisarlas. Tal vez estén muy concentradas en notas bajas o tengan dos grupos distintos.

### b) Registrar hallazgos iterativamente

Quiere decir que el análisis exploratorio no se hace una sola vez y ya.

Vas encontrando cosas, corriges errores, vuelves a mirar, vuelves a resumir y sigues explorando.

#### Ejemplo

Primero detectas valores faltantes, luego corriges algunos registros, después haces un histograma y recién notas que hay un sesgo.

Es un proceso de ida y vuelta.

---

## En resumen

Esta clase enseñó que el análisis exploratorio de datos es el paso inicial para entender un conjunto de datos antes de aplicar análisis más complejos.

Sirve para:

- reconocer qué tipo de variables tenemos
- evaluar si los datos tienen buena calidad
- resumir la información
- visualizar distribuciones
- detectar relaciones
- encontrar valores atípicos
- identificar patrones temporales o agrupaciones

La idea central es muy simple:

> Antes de concluir, primero hay que mirar bien los datos.

Si no hacemos eso, podríamos:

- analizar datos mal registrados
- interpretar mal una distribución
- o pasar por alto patrones importantes
