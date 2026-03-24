# ¿De qué trató la clase?

La clase trató de responder preguntas como estas:

- si una prueba sale positiva, ¿qué probabilidad hay de que la persona sí tenga la enfermedad?
- si una prueba sale negativa, ¿qué probabilidad hay de que la persona realmente no tenga la enfermedad?

Eso parece simple, pero no es lo mismo preguntar:

- `P(prueba positiva | enfermo)`
- `P(enfermo | prueba positiva)`

La primera es una probabilidad “hacia adelante”; la segunda es una probabilidad “hacia atrás”. Y justamente para pasar de una a otra usamos **Bayes**. Esa es la idea central de toda la sesión.

---

## 1. La idea inicial: en salud nos interesa invertir la probabilidad

La introducción de la clase plantea ejemplos como:

- probabilidad de tener cáncer de mama dado que la mamografía salió positiva
- probabilidad de no tener diabetes dado que la prueba salió negativa

Eso significa que en medicina no basta con saber si una prueba detecta bien la enfermedad. También queremos saber qué significa el resultado para el paciente.

### Ejemplo sencillo

Imagina una prueba que suele salir positiva en personas enfermas.  
Eso suena bien. Pero aún falta responder:

> Si mi resultado salió positivo, ¿de verdad estoy enfermo?

Esa segunda pregunta ya es una pregunta de **Bayes**.

---

## 2. Ley de la probabilidad total

La clase primero repasa la **probabilidad total**. La idea es que si un evento puede ocurrir por varios caminos distintos, entonces la probabilidad total se obtiene sumando todos esos caminos.

En la diapositiva se presenta con ramas de un árbol: `A1, A2, ..., An`, y todas las ramas que llevan a `B`.

### Fórmula general

`P(B) = P(A1)P(B|A1) + P(A2)P(B|A2) + ... + P(An)P(B|An)`

### ¿Qué significa?

Significa:

La probabilidad total de que ocurra `B` es la suma de todas las maneras posibles en que puede aparecer `B`.

### Ejemplo de la clase

En pediatría:

- 60% de los pacientes son niñas
- 40% son niños
- de las niñas, 20% tienen menos de 24 meses
- de los niños, 35% tienen menos de 24 meses

Se quiere hallar la probabilidad de que un infante escogido al azar tenga menos de 24 meses.

La clase lo resuelve así:

`P(<24) = P(niña)P(<24 | niña) + P(niño)P(<24 | niño)`

`P(<24) = 0.6(0.2) + 0.4(0.35) = 0.26`

### Interpretación

La probabilidad total de escoger un infante menor de 24 meses es `0.26`, o sea **26%**.

---

## 3. Teorema de Bayes

Después de recordar la probabilidad condicional, la clase presenta la **regla de Bayes**.

Parte de esta idea:

`P(A | B) = P(A ∩ B) / P(B)`

y como también:

`P(A ∩ B) = P(B | A)P(A)`

entonces se obtiene la fórmula de Bayes:

`P(A | B) = [P(B | A)P(A)] / P(B)`

### ¿Qué significa en palabras?

Se lee así:

**Probabilidad de A dado B**  
=
**probabilidad de B dado A × probabilidad previa de A**  
dividido entre  
**probabilidad total de B**

### Traducción intuitiva

Bayes sirve para **actualizar una creencia** cuando aparece nueva información.

Primero tienes una probabilidad inicial, llamada **probabilidad previa** o **prevalencia**.  
Luego aparece un dato nuevo, por ejemplo una prueba positiva.  
Entonces Bayes te permite recalcular la probabilidad verdadera.

---

## 4. Ejemplo de Bayes con tuberculosis

La clase da este ejemplo:

- probabilidad de tener tuberculosis: `0.20`
- si tiene TBC, probabilidad de presentar ciertos síntomas: `0.35`
- si no tiene TBC, probabilidad de presentar esos síntomas: `0.10`
- se observa a una persona con síntomas y se pregunta: ¿cuál es la probabilidad de que tenga TBC?

Sea:

- `T`: tiene TBC
- `S`: presenta síntomas

Entonces:

`P(T | S) = [P(S | T)P(T)] / [P(T)P(S | T) + P(T')P(S | T')]`

Sustituyendo los datos de la diapositiva:

`P(T | S) = [0.20(0.35)] / [0.20(0.35) + 0.80(0.10)] = 0.47`

### Interpretación

Si una persona presenta esos síntomas, la probabilidad de que tenga TBC es `0.47`, es decir, **47%**.

### ¿Qué enseña este ejemplo?

Enseña algo muy importante:

Aunque la persona tenga síntomas, eso no garantiza que tenga la enfermedad, porque esos síntomas también pueden aparecer en personas sanas o con otros problemas. Por eso Bayes combina:

- qué tan frecuente es la enfermedad
- qué tan común es el síntoma en enfermos
- qué tan común es el síntoma en no enfermos

---

## 5. Pruebas de diagnóstico

Luego la clase pasa a su aplicación médica. Explica que una **prueba diagnóstica simple** clasifica a los pacientes en dos grupos:

- positivo
- negativo

También menciona la **prueba de referencia** o **gold standard**, que es la mejor prueba disponible para saber realmente si el paciente tiene o no la enfermedad. Se usa como patrón para comparar una nueva prueba.

La diapositiva aclara que a veces se busca una prueba nueva por:

- costo
- tiempo
- incomodidad
- dificultad de aplicación

aunque ya exista una prueba muy confiable.

---

## 6. La tabla básica de una prueba diagnóstica

La clase trabaja con la tabla clásica de cuatro casillas. Ahí aparecen las letras:

- `a`: positivos tanto en la prueba nueva como en la de referencia
- `b`: falsos positivos
- `c`: falsos negativos
- `d`: negativos tanto en la prueba nueva como en la de referencia

Esta tabla sirve para calcular la calidad de la prueba.

---

## 7. Sensibilidad y especificidad

La clase define estas dos medidas como las principales para evaluar la validez de una nueva prueba.

### a) Sensibilidad

Es la probabilidad de que la prueba salga positiva si la persona realmente está enferma.

`Sensibilidad = P(T+ | Enfermo) = a / (a + c)`

### ¿Qué mide?

Mide qué tan buena es la prueba para **detectar enfermos**.

### Ejemplo intuitivo

Si una prueba tiene sensibilidad alta, significa que deja escapar pocos enfermos.

---

### b) Especificidad

Es la probabilidad de que la prueba salga negativa si la persona realmente está sana.

`Especificidad = P(T- | Sano) = d / (b + d)`

### ¿Qué mide?

Mide qué tan buena es la prueba para **descartar sanos**.

### Ejemplo intuitivo

Si una prueba tiene especificidad alta, da pocos falsos positivos.

---

### c) Falsos positivos y falsos negativos

La clase también muestra:

`Falsos positivos = b / (b + d)`

`Falsos negativos = c / (a + c)`

Es decir:

- **falso positivo**: la prueba dice “sí”, pero en realidad no hay enfermedad
- **falso negativo**: la prueba dice “no”, pero en realidad sí hay enfermedad

---

## 8. Ejemplo con gammagrafía del hígado

La sesión presenta una tabla para evaluar la gammagrafía del hígado frente a un diagnóstico correcto confirmado por necropsia, biopsia o inspección quirúrgica.

Con esa tabla calcula:

- sensibilidad = `231/258 = 89.5%`
- especificidad = `54/86 = 62.8%`
- falsos positivos = `32/86 = 37.2%`
- falsos negativos = `27/258 = 10.5%`

### Interpretación sencilla

Eso significa que la prueba:

- detecta bastante bien a los enfermos, porque la sensibilidad es alta
- pero no es tan buena para confirmar a los sanos, porque la especificidad es moderada
- y genera una cantidad importante de falsos positivos

En términos simples: sirve mejor para encontrar anormales que para asegurar normalidad.

---

## 9. Diferencia clave: sensibilidad/especificidad vs valores predictivos

Aquí está una de las partes más importantes de toda la clase.

### Sensibilidad y especificidad

Miran desde el **estado real del paciente**:

- `P(T+ | Enfermo)`
- `P(T- | Sano)`

O sea, empiezan desde “sé si está enfermo o sano”.

### Valores predictivos

Miran desde el **resultado de la prueba**:

- `P(Enfermo | T+)`
- `P(Sano | T-)`

O sea, empiezan desde “sé que la prueba salió positiva o negativa”.

---

## 10. Valor predictivo positivo y negativo

La clase dice que en la práctica normalmente no conocemos si el paciente está enfermo o sano. Lo que sí conocemos es el resultado del test. Por eso interesan mucho estas dos medidas.

### a) Valor Predictivo Positivo (VPP)

Es la probabilidad de que el paciente sí tenga la enfermedad, dado que la prueba salió positiva.

`VPP = P(Enfermo | T+)`

### b) Valor Predictivo Negativo (VPN)

Es la probabilidad de que el paciente no tenga la enfermedad, dado que la prueba salió negativa.

`VPN = P(Sano | T-)`

### Cómo recordarlo fácil

- **Sensibilidad**: de los enfermos, ¿cuántos salen positivos?
- **Especificidad**: de los sanos, ¿cuántos salen negativos?
- **VPP**: de los positivos, ¿cuántos realmente están enfermos?
- **VPN**: de los negativos, ¿cuántos realmente están sanos?

---

## 11. Ejemplo de mamografía

La clase presenta un ejemplo con **372 mujeres con bulto en el pecho derivadas a cirugía**, y muestra estos resultados:

- sensibilidad = `22/25 = 0.88`
- especificidad = `331/347 = 0.95`
- VPP = `22 / (22 + 16) = 0.58`
- VPN = `331 / (331 + 3) = 0.99`

### Interpretación

#### Sensibilidad 0.88

De las mujeres que sí tenían cáncer, el **88%** salió positivo en mamografía.

#### Especificidad 0.95

De las mujeres que no tenían cáncer, el **95%** salió negativo.

#### VPP 0.58

Si una mujer sale positiva, la probabilidad de que realmente tenga cáncer es **58%**.

#### VPN 0.99

Si una mujer sale negativa, la probabilidad de que realmente no tenga cáncer es **99%**.

### Idea importante

Una prueba puede tener muy buena sensibilidad y especificidad, pero su **VPP** no necesariamente será tan alto. Y eso depende mucho de la **prevalencia**.

---

## 12. El efecto de la prevalencia

La clase dedica varias diapositivas a este punto: la **prevalencia** de la enfermedad afecta fuertemente el valor predictivo.

### ¿Qué es prevalencia?

Es la proporción de personas que tienen la enfermedad en la población.

### Lo que muestra la sesión

Con la misma sensibilidad y especificidad, al cambiar la prevalencia cambian bastante el VPP y el VPN.

En los escenarios presentados:

- cuando la prevalencia es alta, el **VPP sube** y el **VPN baja**
- cuando la prevalencia es baja, el **VPP baja** y el **VPN sube**

La gráfica final resume esa idea: a medida que aumenta la prevalencia, el valor predictivo de una prueba positiva tiende a aumentar, mientras que el de una prueba negativa tiende a disminuir.

### Intuición fácil

Si una enfermedad es muy rara, incluso una prueba bastante buena puede producir muchos positivos que no sean realmente enfermos, simplemente porque casi toda la población está sana.

En cambio, si la enfermedad es frecuente, un positivo tiene más posibilidades de ser verdadero.

---

## 13. Fórmulas de VPP y VPN usando Bayes

La clase muestra estas expresiones:

`VPP = [(sens)(prev)] / [(sens)(prev) + (1 - prev)(1 - espec)]`

`VPN = [(espec)(1 - prev)] / [(1 - sens)(prev) + (espec)(1 - prev)]`

### ¿Qué significan?

Que el valor predictivo no depende solo de que la prueba sea buena, sino también de qué tan común es la enfermedad.

---

## 14. Ejemplo de mamografía con prevalencia muy baja

La clase toma una prevalencia estimada de cáncer de mama en Noruega de `131.9` casos por `100 000` habitantes, es decir aproximadamente `0.001319`, y usando sensibilidad `0.88` y especificidad `0.95` calcula:

- `VPP ≈ 2.27%`
- `VPN ≈ 99.98%`

### ¿Qué significa esto?

Que en una población general con prevalencia muy baja:

- un resultado positivo no garantiza casi nada por sí solo; el **VPP es muy bajo**
- un resultado negativo es muy tranquilizador; el **VPN es altísimo**

### Intuición

Esto sorprende mucho, pero es normal:

Si la enfermedad es rarísima, habrá muy pocos verdaderos enfermos. Entonces, aunque la prueba sea buena, entre todos los positivos puede haber muchos falsos positivos. Por eso el VPP cae.

---

## 15. Ejemplo 2: diabetes

La última diapositiva plantea:

- falsos positivos = `4%`
- falsos negativos = `5%`
- prevalencia de diabetes = `7%`

De ahí se deduce:

- `P(T+ | D+) = 0.95`
- `P(T- | D-) = 0.96`
- `P(D+) = 0.07`
- `P(D-) = 0.93`

Y la clase obtiene:

- `P(D+ | T+) = 0.641`
- `P(D- | T-) = 0.996`

### Interpretación

Si la prueba sale positiva, la probabilidad de que la persona sí sea diabética es **64.1%**.  
Si la prueba sale negativa, la probabilidad de que realmente no sea diabética es **99.6%**.

---

## 16. Lo más importante que debes entender

### Idea 1

**Sensibilidad y especificidad** describen la calidad técnica de la prueba.

### Idea 2

**VPP y VPN** describen lo que significa el resultado para el paciente.

### Idea 3

Para pasar de una cosa a la otra usamos **Bayes**.

### Idea 4

La **prevalencia** cambia muchísimo la interpretación del resultado.

---

## Resumen final de toda la clase

Esta sesión enseñó que el **Teorema de Bayes** permite responder preguntas del tipo:

- probabilidad de enfermedad dado un test positivo
- probabilidad de no enfermedad dado un test negativo

Primero se repasó la **probabilidad total**, donde se suman todos los caminos que llevan a un evento. Luego se presentó la **fórmula de Bayes**, que invierte la condicional. Después se aplicó a **pruebas diagnósticas**, distinguiendo:

- sensibilidad: `P(T+ | Enfermo)`
- especificidad: `P(T- | Sano)`
- VPP: `P(Enfermo | T+)`
- VPN: `P(Sano | T-)`

Finalmente, la clase mostró algo crucial: el valor predictivo depende mucho de la **prevalencia**.

Una prueba puede ser muy buena, pero si la enfermedad es muy rara, un resultado positivo puede tener poca fuerza para confirmar enfermedad, mientras que un negativo puede ser muy confiable.
