# Descripción de la clase de hoy

Hoy la clase se centró en las **medidas de resumen en estadística**, es decir, en aquellos valores que nos ayudan a describir un conjunto de datos de manera rápida. Se trabajaron dos grandes grupos:

- medidas para variables numéricas, como la **media, mediana, moda, dispersión, percentiles y asimetría**
- medidas para variables categóricas, como la **razón, la proporción y la tasa**

La idea principal de la sesión fue entender que cuando tenemos muchos datos, no conviene analizarlos uno por uno, sino resumirlos con medidas que nos permitan responder preguntas como estas:

- ¿Cuál es el valor más representativo?
- ¿Qué tanto varían los datos?
- ¿Cómo se distribuyen?
- ¿Qué parte del total representa una categoría?
- ¿Con qué frecuencia ocurre un evento?

## 1. Medidas de tendencia central

Primero se explicó que las **medidas de tendencia central** sirven para identificar el valor que mejor representa el “centro” de un conjunto de datos. Las principales fueron:

- **media**
- **mediana**
- **moda**

### a) Media o promedio

La **media aritmética** es el promedio que normalmente usamos. Se obtiene sumando todos los datos y dividiendo entre el número total de observaciones. Se indicó que es muy usada cuando la variable está en escala de razón o intervalo y cuando la distribución es simétrica. También se destacó que es útil en inferencia estadística, pero que se ve afectada por valores extremos.

#### Ejemplo

Supongamos las notas de 5 alumnos:

`10, 12, 14, 16, 18`

La media sería:

`(10 + 12 + 14 + 16 + 18) / 5 = 14`

Entonces, el valor representativo del grupo sería **14**.

Pero si cambiamos el último dato por `50`:

`10, 12, 14, 16, 50`

la media sería:

`(10 + 12 + 14 + 16 + 50) / 5 = 20.4`

Aquí se nota que la media sube bastante por culpa de un valor extremo. Por eso se dice que la media es sensible a valores muy altos o muy bajos.

### b) Mediana

La **mediana** es el valor que queda en el centro cuando los datos se ordenan de menor a mayor. Divide al conjunto en dos partes iguales:

- 50% por debajo
- 50% por encima

También se señaló que corresponde al **percentil 50**.

Se explicó que la mediana es muy útil cuando la distribución es asimétrica o cuando existen valores extremos, porque no se altera fácilmente por ellos.

#### Ejemplo

Tomemos estos datos:

`2, 4, 6, 8, 10`

La mediana es **6**, porque está justo al centro.

Ahora mira estos otros:

`2, 4, 6, 8, 100`

La mediana sigue siendo **6**, aunque apareció un valor muy grande.  
Eso demuestra que la mediana es más resistente que la media frente a valores extremos.

### c) Moda

La **moda** es el valor que más se repite en un conjunto de datos. Si ningún valor se repite, entonces no hay moda. Si hay dos valores que se repiten con la misma frecuencia y más que los demás, entonces puede haber dos modas.

#### Ejemplo

Si tenemos:

`3, 5, 5, 7, 8, 5, 10`

la moda es **5**, porque es el número que aparece más veces.

Otro ejemplo:

`2, 2, 4, 4, 6, 7`

Aquí hay dos modas:

- **2**
- **4**

La clase también remarcó que la moda, aunque es sencilla, no siempre resulta muy útil para describir datos continuos.

## 2. Comparación entre media, mediana y moda

Después se compararon estas tres medidas. Se explicó que la media y la mediana ubican el centro de la distribución, pero la moda no necesariamente. También se recalcó que:

- la media sí cambia mucho con valores extremos
- la mediana no se ve afectada tanto
- la moda tiene un uso más limitado

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

Con esto se entiende claramente por qué la mediana puede ser mejor en datos muy desiguales.

## 3. Medidas de dispersión

Luego la clase pasó a las **medidas de dispersión**, que sirven para saber qué tan separados o qué tan agrupados están los datos respecto a su valor central. Se destacó que no basta con saber el promedio; también necesitamos saber si los datos están muy dispersos o muy concentrados.

### a) Varianza

La **varianza** mide cuánto varían los datos respecto a la media. En términos simples, muestra si los datos están muy alejados o no del promedio. La diapositiva señaló que, en el caso muestral, se usa `n - 1` en lugar de `n`, lo que se conoce como **corrección de Bessel**.

#### Ejemplo intuitivo

Grupo A:

`8, 9, 10, 11, 12`

Grupo B:

`2, 6, 10, 14, 18`

Ambos grupos pueden tener una media parecida, pero el grupo B está más separado entre sí. Entonces, el grupo B tendrá mayor varianza.

### b) Desviación estándar

Se explicó que la **desviación estándar** es la raíz cuadrada positiva de la varianza y que tiene una ventaja importante: se expresa en las mismas unidades que los datos, por eso suele ser más fácil de interpretar. También indica la dispersión de los datos alrededor de la media.

#### Ejemplo

Si en un salón la estatura promedio es `1.60 m`:

- si casi todos miden entre `1.58` y `1.62`, la desviación estándar será pequeña
- si unos miden `1.40` y otros `1.85`, la desviación estándar será mayor

En otras palabras:

- **desviación estándar pequeña** = datos parecidos entre sí
- **desviación estándar grande** = datos más dispersos

### c) Rango intercuartílico (RIC)

El **rango intercuartílico** se definió como la diferencia entre el tercer cuartil y el primer cuartil, y representa el recorrido del 50% central de los datos. Es muy útil para ver qué tan extendida está la parte central de la distribución.

#### Ejemplo

Datos ordenados:

`2, 4, 5, 6, 8, 10, 12, 14, 18`

- Q1 podría estar cerca de `4.5`
- Q3 podría estar cerca de `13`

Entonces:

`RIC = Q3 - Q1 = 13 - 4.5 = 8.5`

Eso quiere decir que la mitad central de los datos está distribuida en un ancho de **8.5 unidades**.

## 4. Cuantiles y percentiles

La clase también explicó que los **cuantiles** son valores que dividen los datos en grupos iguales. Dependiendo en cuántas partes se divida el conjunto, cambian de nombre:

- **4 partes**: cuartiles
- **10 partes**: deciles
- **100 partes**: percentiles

La mediana, por ejemplo, es el **percentil 50**, porque deja al 50% de los datos por debajo y al otro 50% por encima.

### Ejemplo

Si un alumno está en el **percentil 90** en un examen, significa que su puntaje fue mayor que el de aproximadamente el **90%** de los demás estudiantes.

Eso no quiere decir que sacó 90 de nota, sino que su posición relativa fue muy alta.

## 5. Coeficiente de variación

Después se estudió el **coeficiente de variación (CV)**, que relaciona la desviación estándar con la media y normalmente se expresa en porcentaje. Sirve para comparar la dispersión de dos grupos distintos, siempre que sus medias sean positivas.

### Ejemplo

Imagina dos grupos:

- Grupo A: media = 100, desviación estándar = 10
- Grupo B: media = 20, desviación estándar = 10

A simple vista, ambos tienen la misma desviación estándar, pero no significan lo mismo.

- En el grupo A, variar 10 respecto a 100 no es tanto.
- En el grupo B, variar 10 respecto a 20 sí es bastante.

Por eso el coeficiente de variación ayuda a comparar mejor.

## 6. Asimetría

La **asimetría** se presentó como una medida que indica si los datos están distribuidos de forma simétrica alrededor de la media o si están más cargados hacia un lado. Es decir, ayuda a ver si la distribución está “equilibrada” o “inclinada”.

### Ejemplo sencillo

Piensa en los sueldos de una empresa:

- la mayoría gana entre 1200 y 1800
- pero unos pocos gerentes ganan muchísimo más

En ese caso, la distribución ya no se ve equilibrada, porque unos pocos valores altos “jalan” la forma hacia un lado. Eso es un ejemplo típico de asimetría.

## 7. Curtosis

También se explicó la **curtosis**, que es una medida de forma y nos dice si una distribución es más puntiaguda o más achatada. Se mencionaron tres tipos:

- **Leptocúrtica**: muy concentrada en el centro, más apuntada
- **Mesocúrtica**: similar a la distribución normal
- **Platicúrtica**: más achatada, con menor concentración en el centro

### Ejemplo intuitivo

Imagina tres montículos de arena:

- uno muy alto y angosto
- otro con forma intermedia
- y otro más bajo y ancho

Los tres representan diferentes niveles de concentración de datos alrededor del centro. Eso ayuda a visualizar la curtosis.

## 8. Medidas para variables cualitativas

En la parte final de la clase se trabajaron medidas para **variables cualitativas**, es decir, variables que expresan categorías o atributos, como:

- sexo
- tipo de vivienda
- presencia de enfermedad
- tipo de seguro

Para estas variables, además de la moda, se usan medidas de frecuencia como:

- **razón**
- **proporción**
- **tasa**

### a) Razón

La **razón** es el cociente entre dos cantidades. Puede comparar dos categorías o una frecuencia respecto a otro número. Expresa cuántas unidades del numerador hay por cada unidad del denominador.

#### Ejemplo

En un aula hay:

- 12 mujeres
- 8 varones

La razón mujeres/varones es:

`12 / 8 = 1.5`

Eso significa que hay **1.5 mujeres por cada varón**.

### b) Proporción

La **proporción** es el cociente entre la frecuencia de una categoría y el total. Expresa una parte del total. Su valor está entre 0 y 1, aunque muchas veces también se expresa en porcentaje.

#### Ejemplo

Si en un grupo de 20 estudiantes, 15 aprobaron:

`Proporción de aprobados = 15 / 20 = 0.75`

Eso equivale a **75%**.

La clase mostró un ejemplo parecido con camas hospitalarias públicas respecto al total de camas de una comunidad.

### c) Tasa

La **tasa** mide la frecuencia con la que ocurre un evento en una población durante un periodo de tiempo. Aquí ya entra el factor tiempo, y por eso es diferente de la proporción y la razón. La diapositiva lo presentó en contexto epidemiológico.

#### Ejemplo

Si en una ciudad 50 personas desarrollan una enfermedad en un año, dentro de una población de 100 000 habitantes, se puede calcular una **tasa de incidencia** por cierto número de habitantes.

La clase mostró un caso concreto de cáncer de mama, donde se obtuvo una tasa de **32 casos por 100 000 mujeres por año**.

## 9. Cómo diferenciar razón, proporción y tasa

Al final, la clase dejó una idea clave para no confundirlas:

- **Razón**: compara dos cantidades
- **Proporción**: el numerador está incluido en el denominador
- **Tasa**: además de lo anterior, considera el tiempo

### Ejemplo rápido

Supongamos una escuela con 500 alumnos:

- 300 son mujeres
- 20 se enfermaron de gripe este mes

Entonces:

- **Razón mujeres/varones** = `300 / 200`
- **Proporción de mujeres** = `300 / 500`
- **Tasa de gripe** = `20 casos por 500 alumnos en un mes`

Así ya se ve claramente la diferencia.

## En resumen

La clase de hoy enseñó que resumir datos no es solo sacar un promedio. También implica analizar:

- el centro de los datos: **media, mediana, moda**
- su variabilidad: **varianza, desviación estándar, RIC**
- su posición dentro de la distribución: **percentiles y cuantiles**
- su forma: **asimetría y curtosis**
- y, para variables cualitativas, cómo expresar frecuencias mediante **razón, proporción y tasa**

En pocas palabras, la sesión buscó que aprendamos a describir mejor la información, para no quedarnos solo con datos sueltos, sino convertirlos en conclusiones más claras y útiles.
