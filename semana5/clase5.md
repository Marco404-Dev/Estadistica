# ¿De qué trató la clase?

La clase de hoy trató sobre la **probabilidad**, que en palabras simples es una manera de medir qué tan posible es que ocurra un resultado. La sesión empieza con ideas básicas como **experimento**, **experimento aleatorio**, **espacio muestral** y **evento**, y luego pasa a calcular probabilidades y a usar reglas como la **suma de probabilidades**.

Piensa así: la probabilidad responde preguntas como:

- ¿Qué tan probable es sacar cara al lanzar una moneda?
- ¿Qué tan probable es que un paciente tenga cierta característica?
- ¿Qué tan probable es que ocurra un resultado entre varios posibles?

## 1. ¿Qué es un experimento?

La diapositiva dice que un experimento es la observación de un fenómeno en condiciones determinadas. Es decir, hacemos una acción o revisamos una situación para ver qué resultado ocurre.

### Ejemplos

- lanzar una moneda
- lanzar un dado
- observar si un recién nacido es hombre o mujer
- registrar si un paciente mejora o no con un tratamiento

## 2. Fenómeno determinista y fenómeno aleatorio

Aquí la clase diferencia dos ideas.

### a) Fenómeno determinista

Es aquel en el que el resultado está completamente definido si conocemos las condiciones.

#### Ejemplo

Si sueltas una piedra, cae.  
No hay duda importante sobre si va a flotar en el aire o desaparecer.

### b) Fenómeno aleatorio

Es aquel en el que sí conocemos los posibles resultados, pero no sabemos cuál saldrá en ese momento.

#### Ejemplo

Al lanzar una moneda, sabemos que puede salir:

- cara
- sello

Pero no sabemos cuál saldrá exactamente en ese lanzamiento.

## 3. ¿Qué es un experimento aleatorio?

La clase define el experimento aleatorio como aquel donde se conocen todos los resultados posibles, pero no se sabe cuál va a ocurrir.

### Ejemplo 1

Lanzar una moneda una vez.

Resultados posibles:

- cara
- sello

### Ejemplo 2

Nacimiento de un niño.

Resultados posibles:

- varón
- mujer

Sabemos cuáles son las opciones, pero no cuál ocurrirá.

## 4. ¿Qué es un evento?

Un evento o suceso es uno o varios resultados posibles de un experimento aleatorio. La sesión luego lo explica más formalmente como un subconjunto del espacio muestral.

### Ejemplo sencillo

**Experimento:** lanzar un dado.

**Espacio de resultados posibles:**  
`{1, 2, 3, 4, 5, 6}`

Ahora algunos eventos podrían ser:

- sacar un número par → `{2, 4, 6}`
- sacar un número mayor que 4 → `{5, 6}`
- sacar 3 → `{3}`

Cada uno de esos grupos es un evento.

## 5. ¿Qué es la probabilidad?

La clase explica que la probabilidad es una medida de la posibilidad de que ocurra un evento. También menciona que puede expresarse como:

- fracción
- decimal
- porcentaje

y que siempre toma valores entre `0` y `1`.

### Cómo interpretar eso

- `0` significa imposible
- `1` significa seguro
- un valor entre `0` y `1` indica posibilidad parcial

### Ejemplos

- Probabilidad `0` de sacar `8` en un dado de 6 caras
- Probabilidad `1` de sacar un número menor que `7` en un dado de 6 caras
- Probabilidad `1/2` de sacar cara en una moneda equilibrada

## 6. Dos formas de definir probabilidad

La clase menciona dos maneras básicas de entender la probabilidad.

### a) Definición clásica

Se usa cuando todos los resultados posibles son igualmente probables.

La fórmula es:

`Probabilidad = número de casos favorables / número total de casos posibles`

#### Ejemplo

Lanzar un dado y querer sacar un número par.

**Resultados posibles:**  
`{1, 2, 3, 4, 5, 6}`

**Casos favorables:**  
`{2, 4, 6}` → 3 casos

Entonces:

`P(par) = 3/6 = 1/2 = 0.5`

### b) Definición por frecuencia relativa

Aquí la probabilidad se interpreta observando cuántas veces ocurre un evento al repetir muchas veces el experimento. La sesión lo presenta con la idea de que, mientras más repeticiones hay, la frecuencia relativa se acerca a la probabilidad real.

#### Ejemplo con moneda

Si lanzas una moneda 10 veces, quizá salgan:

- 7 caras
- 3 sellos

Entonces la frecuencia relativa de caras sería:

`7/10 = 0.7`

Pero eso no significa que la probabilidad verdadera sea `0.7`.  
Solo significa que en esa pequeña muestra salió así.

Si la moneda se lanza muchísimas veces, la frecuencia relativa suele acercarse a `0.5`. Eso es justamente lo que muestran las gráficas de la sesión con varias tandas de lanzamientos: al principio los resultados fluctúan bastante, pero conforme aumentan los lanzamientos, se acercan a `0.5`.

## 7. ¿Por qué en pocos lanzamientos salen valores raros como 0.3 o 0.7?

La profesora muestra un ejemplo donde Adriana lanza monedas y obtiene frecuencias distintas: `0.3`, `0.5`, `0.6`, `0.7`. Luego se pregunta por qué unas salen tan diferentes de `0.5`.

La idea es esta:

Cuando haces pocos lanzamientos, el azar puede hacer que una tanda salga muy cargada hacia caras o hacia sellos.

### Ejemplo

Si lanzas una moneda solo 4 veces, podría salir:

- cara
- cara
- cara
- sello

Ahí la frecuencia de caras es:

`3/4 = 0.75`

Pero eso no quiere decir que la moneda sea injusta.  
Solo quiere decir que con pocos intentos hay mucha variación.

En cambio, si lanzas 200 veces, ya es más difícil que la frecuencia quede tan lejos de `0.5`. Por eso la sesión muestra que conforme aumentan los lanzamientos, la curva se estabiliza cerca de `0.5`.

## 8. Experimento aleatorio, otra vez, pero más formal

Más adelante la clase da una definición más formal: un experimento aleatorio es un proceso que, al repetirse en las mismas condiciones, no necesariamente produce el mismo resultado.

### Ejemplos que aparecen en la sesión

- lanzar una moneda dos veces
- observar el estado de salud de tres hijos futuros: normal o hemofílico
- pesar a un recién nacido en una maternidad

## 9. ¿Qué es el espacio muestral?

El espacio muestral es el conjunto de todos los resultados posibles de un experimento aleatorio. La sesión lo representa con la letra griega `Ω`.

### Ejemplo 1: lanzar una moneda dos veces

Resultados posibles:

- `CC`
- `CS`
- `SC`
- `SS`

Entonces:

`Ω = {CC, CS, SC, SS}`

Hay 4 resultados posibles.

#### ¿Por qué 4?

Porque en el primer lanzamiento hay 2 opciones y en el segundo también hay 2:

`2 × 2 = 4`

### Ejemplo 2: tres hijos, normal o hemofílico

Cada hijo puede ser:

- `N = normal`
- `H = hemofílico`

Entonces, para tres hijos, el espacio muestral es:

`Ω = {(NNN), (NNH), (NHN), (HNN), (NHH), (HNH), (HHN), (HHH)}`

En total hay 8 resultados.

#### ¿Por qué 8?

Porque cada hijo tiene 2 posibilidades y son 3 hijos:

`2 × 2 × 2 = 2³ = 8`

## 10. Evento como subconjunto del espacio muestral

La clase luego toma ese ejemplo de los tres hijos y define varios eventos.

### Evento A: exactamente un hijo hemofílico

Eso significa que solo uno de los tres tiene `H`.

Resultados que cumplen:

- `NNH`
- `NHN`
- `HNN`

Entonces:

`A = {(NNH), (NHN), (HNN)}`

y tiene 3 elementos.

### Evento B: al menos dos hemofílicos

“Al menos dos” significa dos o tres.

Resultados:

- `NHH`
- `HNH`
- `HHN`
- `HHH`

Entonces:

`B = {(NHH), (HNH), (HHN), (HHH)}`

Tiene 4 elementos.

### Evento C: al menos cuatro hijos hemofílicos

Eso es imposible porque solo hay tres hijos.

Entonces:

`C = ∅`

Es decir, el conjunto vacío.  
La clase lo llama **suceso imposible**.

### Evento D: a lo más uno hemofílico

“A lo más uno” significa cero o uno.

Resultados:

- `NNN`
- `NNH`
- `NHN`
- `HNN`

Entonces tiene 4 resultados.

### Evento E: a lo más tres hemofílicos

Como máximo pueden ser tres, así que este evento contiene todo el espacio muestral.

Entonces:

`E = Ω`

La clase lo llama **suceso seguro**.

## 11. ¿Cómo se calcula la probabilidad de un evento?

Cuando todos los resultados son igualmente probables, usamos:

`P(A) = n(A) / n(Ω)`

donde:

- `n(A)` = número de resultados favorables
- `n(Ω)` = número total de resultados posibles

### Ejemplo con el evento A

`A = exactamente un hijo hemofílico`

Ya vimos que:

- `n(A) = 3`
- `n(Ω) = 8`

Entonces:

`P(A) = 3/8 = 0.375`

### Ejemplo con el evento B

`B = al menos dos hemofílicos`

- `n(B) = 4`
- `n(Ω) = 8`

Entonces:

`P(B) = 4/8 = 0.5`

### Ejemplo con el evento C

`C = al menos cuatro hemofílicos`

- `n(C) = 0`

Entonces:

`P(C) = 0/8 = 0`

Es imposible.

## 12. Suceso seguro, imposible y simple

La clase también distingue estos tipos.

### a) Suceso imposible

Nunca puede ocurrir.

#### Ejemplo

sacar `7` en un dado de 6 caras.

**Probabilidad:**  
`0`

### b) Suceso seguro

Siempre ocurre.

#### Ejemplo

al lanzar un dado, sacar un número entre `1` y `6`.

**Probabilidad:**  
`1`

### c) Suceso simple o elemental

Tiene un solo resultado posible.

En la sesión aparece:

`F = {(NNN)}`

o sea, exactamente los tres hijos son normales.  
Como tiene un solo resultado, es un suceso simple.

Y su probabilidad sería:

`P(F) = 1/8`

## 13. Eventos compuestos

La clase define los eventos compuestos como los que se forman al combinar dos o más eventos simples. Menciona tres operaciones importantes.

### a) Unión: `A ∪ B`

Significa:

ocurre `A` o ocurre `B` o ambos.

La palabra clave aquí es **“o”**.

#### Ejemplo

Si en un dado:

- `A = sacar número par = {2,4,6}`
- `B = sacar número mayor que 4 = {5,6}`

Entonces:

`A ∪ B = {2,4,5,6}`

Porque queremos todo lo que esté en `A` o en `B`.

### b) Intersección: `A ∩ B`

Significa:

ocurre `A` y `B` al mismo tiempo.

La palabra clave aquí es **“y”**.

Con el mismo ejemplo:

- `A = {2,4,6}`
- `B = {5,6}`

Entonces:

`A ∩ B = {6}`

Porque `6` es el único que pertenece a ambos.

### c) A dado B

La diapositiva lo escribe como `A/B`, y significa que ocurre `A` dado que ocurrió `B`. Es la idea de probabilidad condicional, aunque aquí solo la mencionan como operación entre eventos.

## 14. Axiomas de la probabilidad

La sesión presenta tres axiomas básicos.

### Axioma 1: no negatividad

La probabilidad nunca puede ser negativa.

O sea:

`P(E) ≥ 0`

#### Ejemplo

No existe una probabilidad de `-0.3`.

### Axioma 2: suceso seguro

La probabilidad del espacio muestral es `1`.

O sea:

`P(Ω) = 1`

#### Ejemplo

Si consideras todos los resultados posibles de un dado, la probabilidad de que ocurra uno de ellos es `1`.

### Axioma 3: aditividad

Si los eventos son mutuamente excluyentes, la probabilidad de la unión es la suma de probabilidades.

#### ¿Qué significa mutuamente excluyentes?

Que no pueden ocurrir juntos.

#### Ejemplo

En un dado:

- sacar `1`
- sacar `2`

No pueden pasar a la vez en un solo lanzamiento.

Entonces:

`P(1 o 2) = P(1) + P(2) = 1/6 + 1/6 = 2/6`

## 15. Algunas propiedades importantes

La clase muestra varias propiedades.

### a) Complemento

`P(Ā) = 1 - P(A)`

Esto significa: si sabes la probabilidad de que ocurra `A`, puedes hallar la de que **no ocurra** `A`.

#### Ejemplo

Si la probabilidad de aprobar un examen es `0.8`, entonces la de no aprobar es:

`1 - 0.8 = 0.2`

### b) Probabilidad del suceso imposible

`P(∅) = 0`

### c) Probabilidad del suceso seguro

`P(Ω) = 1`

### d) Toda probabilidad está entre 0 y 1

`0 ≤ P(E) ≤ 1`

### e) Si A está contenido en B

Si `A ⊂ B`, entonces:

`P(A) ≤ P(B)`

#### Ejemplo

Si:

- `A = sacar 6`
- `B = sacar número par`

Entonces `A` está dentro de `B`, porque `6` es par.  
Por eso la probabilidad de `A` no puede ser mayor que la de `B`.

## 16. Ejemplo con tabla: sexo y hábito de fumar

La sesión muestra una tabla con 500 personas, cruzando sexo con categorías de fumar: no, a veces, siempre. Luego usa esa tabla para plantear probabilidades.

Por ejemplo:

- `P(A veces) = 220/500`
- `P(No o Siempre) = 180/500 + 100/500 = 280/500`

Eso funciona porque “No” y “Siempre” son categorías separadas; una persona no puede estar al mismo tiempo en ambas. Por eso ahí sí se suman directo.

## 17. Suma de probabilidades

La última diapositiva da una fórmula muy importante:

`P(A ∪ B) = P(A) + P(B) - P(A ∩ B)`

### ¿Por qué se resta la intersección?

Porque cuando sumas `P(A) + P(B)`, la parte común se cuenta dos veces.  
Entonces debes restarla una vez para corregir.

### Ejemplo de la diapositiva

- 45% de los pacientes son obesos
- 30% son fumadores
- 25% son obesos y fumadores

Se pide la probabilidad de que tenga al menos una de las dos características.

Entonces:

`P(O ∪ F) = 0.45 + 0.30 - 0.25 = 0.50`

**Respuesta:** `0.50`, o sea 50%.

### ¿Qué significa “al menos una”?

Esta frase aparece mucho y suele confundir.

“Al menos una” significa:

- una
- o dos
- o más, si fuera posible

En este ejemplo, “al menos una característica” significa que el paciente:

- es obeso,
- o fumador,
- o ambas cosas.

Por eso se usa la unión.

## Resumen final de toda la clase

Esta clase enseñó que la probabilidad sirve para medir la posibilidad de que ocurra un evento. Para trabajarla bien, primero hay que entender:

- experimento
- experimento aleatorio
- espacio muestral
- evento o suceso

Después se aprende a calcular probabilidades usando la idea de:

`casos favorables / casos posibles`

cuando todos los resultados son igualmente probables. También se vio la interpretación por frecuencia relativa, donde al repetir muchas veces un experimento, la frecuencia se aproxima a la probabilidad real.

Finalmente, la clase explicó reglas fundamentales como:

- complemento
- suceso imposible y seguro
- unión e intersección
- suma de probabilidades

Todo eso forma la base para los siguientes temas de probabilidad y estadística.
