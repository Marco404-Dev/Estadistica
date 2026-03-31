# Medidas de resumen

## Descripción de la clase de hoy

Hoy la clase se centró en las **medidas de resumen en estadística**, es decir, en aquellos valores que permiten describir un conjunto de datos de manera sintética y representativa. La idea principal fue comprender que, cuando trabajamos con muchos datos, no conviene analizarlos uno por uno, sino resumirlos mediante medidas que faciliten su interpretación.

Durante la sesión se trabajaron dos grandes grupos:

- medidas para **variables cuantitativas**, como la **media, mediana, moda, cuantiles, varianza, desviación estándar, rango intercuartílico, coeficiente de variación y asimetría**
- medidas para **variables cualitativas**, como la **moda, la razón, la proporción y la tasa** :contentReference[oaicite:2]{index=2}

A partir de ello, la clase buscó responder preguntas como:

- ¿cuál es el valor más representativo del conjunto?
- ¿qué tan dispersos están los datos?
- ¿cómo se distribuyen dentro del grupo?
- ¿qué parte del total representa una categoría?
- ¿con qué frecuencia ocurre un evento en una población?

## 1. Medidas de tendencia central

En primer lugar, se explicó que las **medidas de tendencia central** sirven para identificar el valor que mejor representa el centro de un conjunto de datos. Las principales son:

- **media**
- **mediana**
- **moda** :contentReference[oaicite:3]{index=3}

### a) Media o promedio

La **media aritmética** es una medida que resume un conjunto de observaciones en un solo valor central. Se obtiene sumando todos los datos y dividiendo entre el número total de observaciones. En la clase se destacó que es una medida muy utilizada como referencia estándar, aunque también se señaló que puede verse afectada por los valores extremos. :contentReference[oaicite:4]{index=4} :contentReference[oaicite:5]{index=5}

#### Ejemplo

Supongamos las notas de 5 alumnos:

`10, 12, 14, 16, 18`

La media sería:

`(10 + 12 + 14 + 16 + 18) / 5 = 14`

Entonces, el valor representativo del grupo sería **14**.

Pero si cambiamos el último dato por `50`:

`10, 12, 14, 16, 50`

La nueva media sería:

`(10 + 12 + 14 + 16 + 50) / 5 = 20.4`

Este ejemplo muestra que la media cambia bastante por la presencia de un valor extremo. Por eso se dice que la media es **sensible a datos atípicos**. :contentReference[oaicite:6]{index=6}

### b) Mediana

La **mediana** es el valor que ocupa la posición central cuando los datos se ordenan de menor a mayor. Esto significa que deja al **50 % de las observaciones por debajo** y al **50 % por encima**. :contentReference[oaicite:7]{index=7}

Se explicó también que:

- si el número de datos es impar, la mediana es el valor central
- si el número de datos es par, la mediana es el promedio de los dos valores centrales :contentReference[oaicite:8]{index=8}

#### Ejemplo

Consideremos estos datos:

`2, 4, 6, 8, 10`

La mediana es **6**, porque es el valor central.

Ahora observemos:

`2, 4, 6, 8, 100`

La mediana sigue siendo **6**, a pesar de que apareció un valor muy grande. Esto demuestra que la mediana es una medida **más robusta frente a valores extremos**. :contentReference[oaicite:9]{index=9}

### c) Moda

La **moda** es el valor que más veces se repite en un conjunto de datos. Si ningún valor se repite, no hay moda; y si dos valores comparten la mayor frecuencia, entonces el conjunto puede ser bimodal. :contentReference[oaicite:10]{index=10}

#### Ejemplo

Si tenemos:

`3, 5, 5, 7, 8, 5, 10`

La moda es **5**, porque es el número que aparece con mayor frecuencia.

Otro ejemplo:

`2, 2, 4, 4, 6, 7`

Aquí hay dos modas:

- **2**
- **4**

## 2. Comparación entre media, mediana y moda

Luego se compararon estas tres medidas. La media y la mediana se utilizan para ubicar el centro de la distribución, mientras que la moda identifica el valor más frecuente.

La clase permitió notar que:

- la **media** cambia con facilidad cuando aparecen valores extremos
- la **mediana** se mantiene más estable
- la **moda** solo informa cuál es el valor más repetido

### Ejemplo comparativo

Datos:

`1, 2, 3, 4, 5`

- Media = 3
- Mediana = 3
- Moda = no hay

Si cambiamos el `5` por `490`:

`1, 2, 3, 4, 490`

- Media = 100
- Mediana = 3
- Moda = no hay

Con este ejemplo se entiende claramente que la mediana puede representar mejor el centro cuando los datos presentan valores extremos.

## 3. Medidas de dispersión

Después, la clase abordó las **medidas de dispersión**, que permiten saber qué tan separados o agrupados están los datos respecto a un valor central. Se remarcó que conocer solo el promedio no es suficiente; también es necesario evaluar cuánto varían los datos. :contentReference[oaicite:11]{index=11}

### a) Varianza

La **varianza** mide el grado en que los valores se alejan de la media. En otras palabras, expresa cuánto difieren los datos entre sí con respecto al promedio. Cuanto mayor es la varianza, mayor es la dispersión. La clase también mostró la diferencia entre **varianza poblacional** y **varianza muestral**. :contentReference[oaicite:12]{index=12}

#### Ejemplo intuitivo

Grupo A:

`8, 9, 10, 11, 12`

Grupo B:

`2, 6, 10, 14, 18`

Ambos grupos pueden tener una media parecida, pero en el grupo B los datos están mucho más alejados entre sí. Por eso, el grupo B tendrá una varianza mayor.

### b) Desviación estándar

La **desviación estándar** es la raíz cuadrada positiva de la varianza. Su principal ventaja es que se expresa en las mismas unidades que los datos, por lo que suele ser más fácil de interpretar. También mide cuánto se dispersan los valores alrededor de la media. :contentReference[oaicite:13]{index=13}

#### Ejemplo

Si en un salón la estatura promedio es `1.60 m`:

- si casi todos miden entre `1.58` y `1.62`, la desviación estándar será pequeña
- si unos miden `1.40` y otros `1.85`, la desviación estándar será mayor

Por tanto:

- **desviación estándar pequeña** = datos parecidos entre sí
- **desviación estándar grande** = datos más dispersos

### c) Rango intercuartílico (RIC)

El **rango intercuartílico** representa la amplitud del **50 % central de los datos** y se calcula como:

`RIC = Q3 - Q1`

Se explicó que esta medida acompaña a la mediana y resulta especialmente útil cuando existen valores extremos. :contentReference[oaicite:14]{index=14}

#### Ejemplo

Datos ordenados:

`2, 4, 5, 6, 8, 10, 12, 14, 18`

- Q1 ≈ `4.5`
- Q3 ≈ `13`

Entonces:

`RIC = 13 - 4.5 = 8.5`

Esto significa que la mitad central de los datos se encuentra distribuida dentro de un intervalo de **8.5 unidades**.

## 4. Cuantiles y percentiles

La clase también explicó que los **cuantiles** son valores que dividen la distribución en partes iguales. Según el número de partes, reciben distintos nombres:

- **cuartiles**: dividen en 4 partes
- **deciles**: dividen en 10 partes
- **percentiles**: dividen en 100 partes :contentReference[oaicite:15]{index=15}

### Ejemplo

Si un alumno se encuentra en el **percentil 90** de un examen, significa que su puntaje fue mayor que el de aproximadamente el **90 %** de los estudiantes.

Esto no quiere decir que obtuvo una nota de 90, sino que ocupó una posición relativa muy alta dentro del grupo.

## 5. Coeficiente de variación

El **coeficiente de variación (CV)** es una medida de dispersión relativa que se obtiene al dividir la desviación estándar entre la media y multiplicar por 100. Se interpreta como porcentaje y permite comparar la dispersión entre dos grupos. La clase resaltó que su ventaja es que no tiene unidad de medida y que solo es interpretable cuando los datos son positivos. :contentReference[oaicite:16]{index=16}

### Ejemplo

Imaginemos dos grupos:

- Grupo A: media = 100, desviación estándar = 10
- Grupo B: media = 20, desviación estándar = 10

Aunque ambos tienen la misma desviación estándar, la variación relativa no es la misma:

- en el grupo A, variar 10 respecto a 100 representa poca dispersión
- en el grupo B, variar 10 respecto a 20 representa mucha más dispersión

Por ello, el coeficiente de variación permite hacer comparaciones más justas.

## 6. Asimetría

La **asimetría** es una medida que indica si una distribución es simétrica o si está sesgada hacia un lado. La clase presentó el **coeficiente de asimetría de Pearson**, que relaciona la media, la mediana y la desviación estándar. Además, se explicó que:

- si la media y la mediana coinciden, la distribución es simétrica
- si la distribución está cargada hacia valores altos, hay sesgo a la derecha
- si está cargada hacia valores bajos, hay sesgo a la izquierda :contentReference[oaicite:17]{index=17}

### Ejemplo sencillo

Pensemos en los sueldos de una empresa:

- la mayoría de trabajadores gana entre 1200 y 1800
- unos pocos directivos ganan cantidades mucho mayores

En este caso, la distribución queda sesgada hacia la derecha, porque unos pocos valores altos desplazan la media.

## 7. Medidas para variables cualitativas

En la parte final de la clase se estudiaron medidas para **variables cualitativas**, es decir, aquellas que describen categorías o atributos. Para este tipo de variables se puede utilizar la **moda** y también las llamadas **medidas de frecuencia**:

- **razón**
- **proporción**
- **tasa** :contentReference[oaicite:18]{index=18}

### a) Razón

La **razón** es el cociente entre dos números. Expresa cuántas unidades del numerador hay en relación con las del denominador. :contentReference[oaicite:19]{index=19}

#### Ejemplo

En un aula hay:

- 12 mujeres
- 8 varones

La razón mujeres/varones es:

`12 / 8 = 1.5`

Esto significa que hay **1.5 mujeres por cada varón**.

### b) Proporción

La **proporción** es el cociente entre la frecuencia de una categoría y el total. Expresa una parte del conjunto y su valor está entre 0 y 1, aunque puede expresarse también como porcentaje. :contentReference[oaicite:20]{index=20}

#### Ejemplo

Si en un grupo de 20 estudiantes, 15 aprobaron:

`15 / 20 = 0.75`

Entonces, la proporción de aprobados es **0.75**, es decir, **75 %**.

### c) Tasa

La **tasa** mide la frecuencia con la que ocurre un evento en una población durante un período de tiempo determinado. A diferencia de la razón y la proporción, aquí el tiempo forma parte esencial de la interpretación. :contentReference[oaicite:21]{index=21}

#### Ejemplo

Si en una ciudad 50 personas desarrollan una enfermedad en un año, dentro de una población de 100 000 habitantes, puede calcularse una tasa de incidencia por cada cierto número de habitantes.

La clase mostró un ejemplo epidemiológico en el que se obtuvo una tasa de **32 casos por 100 000 mujeres por año**. :contentReference[oaicite:22]{index=22}

## 8. Cómo diferenciar razón, proporción y tasa

Para cerrar, la clase dejó una idea muy importante para no confundir estas tres medidas:

- **razón**: compara dos cantidades
- **proporción**: el numerador está incluido en el denominador
- **tasa**: además considera el tiempo :contentReference[oaicite:23]{index=23}

### Ejemplo rápido

Supongamos una escuela con 500 alumnos:

- 300 son mujeres
- 20 se enfermaron de gripe este mes

Entonces:

- **razón mujeres/varones** = `300 / 200`
- **proporción de mujeres** = `300 / 500`
- **tasa de gripe** = `20 casos por 500 alumnos en un mes`

## En resumen

La clase de hoy enseñó que resumir datos no significa únicamente calcular un promedio. También implica analizar:

- el centro de la distribución: **media, mediana y moda**
- la variabilidad de los datos: **varianza, desviación estándar y rango intercuartílico**
- la posición de los valores: **cuartiles, deciles y percentiles**
- la forma de la distribución: **asimetría**
- y, en variables cualitativas, la frecuencia de las categorías mediante **razón, proporción y tasa**

En conclusión, la sesión buscó que comprendamos cómo describir la información de manera más clara, ordenada y útil, transformando un conjunto de datos en interpretaciones más comprensibles.
