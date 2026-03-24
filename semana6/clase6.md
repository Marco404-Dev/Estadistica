# ¿De qué trató la clase?

La idea principal de esta sesión es que a veces una probabilidad cambia cuando ya conocemos cierta información previa.  
Eso es justamente la **probabilidad condicional**.

No es lo mismo preguntar:

> ¿Cuál es la probabilidad de que una persona fume siempre?

que preguntar:

> ¿Cuál es la probabilidad de que una persona fume siempre sabiendo que es varón?

En la segunda pregunta ya no estamos mirando a toda la población, sino solo a un grupo más pequeño: **los varones**. Y al cambiar el grupo de referencia, también cambia la probabilidad.

---

## 1. ¿Qué es probabilidad condicional?

La diapositiva define la probabilidad condicional así:

**P(A | B) = P(A ∩ B) / P(B), si P(B) ≠ 0**

Eso se lee:

- “probabilidad de A dado B”
- o también: “probabilidad de que ocurra A sabiendo que ocurrió B”

### ¿Qué significa en palabras simples?

Significa que ya no miras a todos, sino **solo a los que cumplen la condición B**.

### Ejemplo fácil

Imagina un salón con 20 estudiantes:

- 12 son mujeres
- 8 son hombres
- 6 mujeres usan lentes

Si te preguntan:

### a) Probabilidad de escoger una persona que use lentes

Sería:

**P(lentes) = 6/20**

Pero si te preguntan:

### b) Probabilidad de que use lentes dado que es mujer

Ahora ya no miras a los 20.  
Ahora solo miras a las **12 mujeres**.

Entonces:

**P(lentes | mujer) = 6/12**

Ese es el corazón de la probabilidad condicional:  
**cambia el “universo” que estás observando.**

---

## 2. ¿Cómo interpretar la fórmula?

La fórmula dice:

**P(A | B) = P(A ∩ B) / P(B)**

### ¿Qué representa cada parte?

- **A ∩ B**: que ocurra A y B al mismo tiempo
- **P(B)**: la probabilidad de la condición B
- **P(A | B)**: dentro de los que cumplen B, qué proporción también cumple A

### Ejemplo con palabras

Si:

- **A = “fuma siempre”**
- **B = “es varón”**

Entonces:

**P(A | B) = P(fuma siempre | varón)**

significa:

> “de todos los varones, qué parte fuma siempre”.

---

## 3. No confundir P(A | B) con P(B | A)

La clase remarca algo muy importante:  
**no confundas `P(A | B)` con `P(B | A)`**.

Aunque se parezcan, **no son lo mismo**.

### Ejemplo sencillo

Supón que en una universidad:

- muchos estudiantes de medicina usan mandil
- pero no todos los que usan mandil son de medicina

Entonces:

**P(usa mandil | estudia medicina)**

no es lo mismo que:

**P(estudia medicina | usa mandil)**

Porque en una estás mirando solo a los de medicina, y en la otra solo a quienes usan mandil.

La condición cambia, así que la probabilidad también puede cambiar.

---

## 4. Propiedades de la probabilidad condicional

La diapositiva dice que la probabilidad condicional cumple propiedades parecidas a la probabilidad común:

**P(A | B) + P(Ā | B) = 1**

y además:

**0 ≤ P(A | B) ≤ 1**

Eso quiere decir:

- si sabes la probabilidad de A dado B, puedes hallar la de “no A dado B”
- toda probabilidad condicional siempre estará entre 0 y 1

### Ejemplo

Si la probabilidad de aprobar un examen sabiendo que estudió es `0.8`, entonces:

**P(no aprueba | estudió) = 1 - 0.8 = 0.2**

---

## 5. Tabla que usa la clase

La sesión trabaja con esta tabla de sexo y hábito de fumar:

| Sexo      | No  | A veces | Siempre | Total |
|-----------|-----|---------|---------|-------|
| Masculino | 100 | 120     | 80      | 300   |
| Femenino  | 80  | 100     | 20      | 200   |
| Total     | 180 | 220     | 100     | 500   |

Esta tabla sirve primero para repasar probabilidades normales y luego para introducir probabilidades condicionales.

---

## 6. Repaso de probabilidad normal con la tabla

Antes de entrar a la condicional, la clase recuerda algunos cálculos simples.

### a) Probabilidad de que fume siempre

Hay 100 personas que fuman siempre de un total de 500:

**P(S) = 100/500 = 0.20**

### b) Probabilidad de que sea mujer

Hay 200 mujeres de un total de 500:

**P(F) = 200/500 = 0.40**

### c) Probabilidad de que no fume y sea masculino

Hay 100 hombres que no fuman:

**P(N ∩ M) = 100/500 = 0.20**

### d) Probabilidad de que fume a veces o sea mujer

Aquí se usa la unión:

**P(A ∪ F) = P(A) + P(F) - P(A ∩ F)**

Sustituyendo:

**P(A ∪ F) = 220/500 + 200/500 - 100/500 = 0.64**

Ese ejemplo sirve para recordar que cuando sumamos dos eventos que se cruzan, debemos restar la intersección para no contarla dos veces.

---

## 7. Ahora sí: probabilidad condicional con la tabla

Aquí empieza la parte más importante.

### Ejemplo 1: Probabilidad de que fume siempre sabiendo que es masculino

La pregunta es:

**P(S | M)**

La fórmula es:

**P(S | M) = P(S ∩ M) / P(M)**

En la tabla:

- **S ∩ M = 80**
- **M = 300**

Entonces:

**P(S | M) = (80/500) / (300/500) = 80/300 = 0.2667**

### Interpretación

La probabilidad de que una persona fume siempre, sabiendo que es varón, es `0.2667`, o sea aproximadamente **26.67%**.

¿Por qué ya no sale `100/500`?

Porque ya no estamos mirando a todos los 500.  
Ahora solo miramos a los **300 hombres**.

Dentro de esos 300, hay 80 que fuman siempre.  
Por eso el denominador cambia.

Ese detalle es el más importante de toda la clase.

---

### Ejemplo 2: Probabilidad de que fume a veces sabiendo que es femenina

La pregunta es:

**P(A | F)**

Usamos:

**P(A | F) = P(A ∩ F) / P(F)**

En la tabla:

- **A ∩ F = 100**
- **F = 200**

Entonces:

**P(A | F) = 100/200 = 0.5**

### Interpretación

De todas las mujeres, la mitad fuma a veces.  
O dicho de otra forma: si sabes que la persona es mujer, la probabilidad de que fume a veces es `0.5` o **50%**.

---

### Ejemplo 3: Probabilidad de que no fume sabiendo que es masculino

La pregunta es:

**P(N | M)**

Usamos:

**P(N | M) = P(N ∩ M) / P(M)**

En la tabla:

- **N ∩ M = 100**
- **M = 300**

Entonces:

**P(N | M) = 100/300 = 0.3333**

### Interpretación

Entre los hombres, aproximadamente un **33.33%** no fuma.

---

## 8. Idea clave para no confundirte

Cuando veas algo como:

**P(A | B)**

piensa así:

> “De los que cumplen B, ¿qué parte también cumple A?”

Ese truco mental ayuda mucho.

### Ejemplo mental rápido

**P(aprueba | estudió)**

se lee:

> “de los que estudiaron, qué parte aprobó”

No dice “de todos los estudiantes”.  
Dice “de los que estudiaron”.

---

## 9. Multiplicación de probabilidades

La clase luego despeja la fórmula de la condicional.

Si:

**P(A | B) = P(A ∩ B) / P(B)**

entonces:

**P(A ∩ B) = P(A | B) · P(B)**

A esto la sesión le llama **multiplicación de probabilidades**.

### ¿Qué significa?

Sirve para hallar la probabilidad de que ocurran ambos eventos a la vez.

### Ejemplo con la tabla

Se pide la probabilidad de que el sujeto sea:

- femenino
- y fume a veces

O sea:

**P(F ∩ A)**

La diapositiva muestra dos maneras:

### Directamente desde la tabla

**P(F ∩ A) = 100/500**

### Usando la fórmula

**P(F ∩ A) = P(F | A) · P(A)**

Como:

- **P(F | A) = 100/220**
- **P(A) = 220/500**

Entonces:

**P(F ∩ A) = (100/220) · (220/500) = 100/500**

Sale lo mismo, como debe ser.

---

## 10. ¿Cuándo se usa la multiplicación?

Cuando te preguntan algo como:

- “probabilidad de que ocurra A y B”
- “probabilidad conjunta”
- “probabilidad de intersección”

Muchas veces puedes usar:

**P(A ∩ B) = P(A | B) · P(B)**

o también:

**P(A ∩ B) = P(B | A) · P(A)**

---

## 11. Eventos independientes

Luego la sesión explica un tema muy importante: **la independencia**.

Dos eventos son independientes cuando la ocurrencia de uno **no cambia** la probabilidad del otro.

La diapositiva lo expresa así:

**P(A | B) = P(A)**

Si saber que ocurrió B no altera la probabilidad de A, entonces A y B son independientes.

### Fórmula equivalente

Si A y B son independientes, entonces:

**P(A ∩ B) = P(A) · P(B)**

Pero ojo:  
esa igualdad vale **solo si son independientes**.

### ¿Qué significa en palabras?

Que conocer B no aporta información nueva sobre A.

### Ejemplo simple

Si lanzas una moneda y un dado:

- **A = “sale cara”**
- **B = “sale 4 en el dado”**

El resultado del dado no afecta el de la moneda.  
Por eso son independientes.

---

## 12. Ejemplo de independencia con la tabla

La clase pregunta si:

- ser varón **M**
- y fumar siempre **S**

son independientes.

Para comprobarlo, compara:

**P(M ∩ S)**

con

**P(M) · P(S)**

### Calculamos

**P(M ∩ S) = 80/500 = 0.16**

**P(M) = 300/500 = 0.6**

**P(S) = 100/500 = 0.2**

Entonces:

**P(M) · P(S) = 0.6 · 0.2 = 0.12**

Como:

**0.16 ≠ 0.12**

entonces **no son independientes**.

### Interpretación

Ser varón sí parece afectar la probabilidad de fumar siempre.  
Por eso no se comportan como eventos independientes.

---

## 13. Ejercicio de revisión 1

La diapositiva plantea:

- 158 personas asistieron a una boda
- 100 se enfermaron
- 110 comieron langostinos
- de esas 110, 70 se enfermaron

Se pide la probabilidad de no enfermar para los asistentes que no comieron langostinos.

Vamos paso por paso.

### Paso 1: ¿Cuántos no comieron langostinos?

**158 - 110 = 48**

### Paso 2: ¿Cuántos de los que comieron langostinos no se enfermaron?

Si 110 comieron y 70 se enfermaron:

**110 - 70 = 40**

### Paso 3: ¿Cuántos no se enfermaron en total?

**158 - 100 = 58**

### Paso 4: ¿Cuántos no se enfermaron y no comieron langostinos?

Si en total no se enfermaron 58, y 40 de ellos sí comieron langostinos, entonces:

**58 - 40 = 18**

### Paso 5: Probabilidad pedida

Queremos:

**P(no enfermar | no comió langostinos)**

Entonces:

**18/48 = 0.375**

Ese es el mismo resultado que aparece en la diapositiva: **0.375**.

---

## 14. Ejercicio de revisión 2

La clase da:

- **P(A) = 0.7**
- **P(B) = 0.6**
- **P(Ā ∪ B̄) = 0.58**

y pregunta si A y B son independientes.

### Paso 1: usar De Morgan

Sabemos que:

**(A ∩ B)̄ = Ā ∪ B̄**

Entonces:

**P(Ā ∪ B̄) = 1 - P(A ∩ B)**

Como:

**P(Ā ∪ B̄) = 0.58**

entonces:

**0.58 = 1 - P(A ∩ B)**

**P(A ∩ B) = 1 - 0.58 = 0.42**

### Paso 2: comprobar independencia

Si fueran independientes:

**P(A ∩ B) = P(A) · P(B)**

Calculamos:

**0.7 · 0.6 = 0.42**

Y coincide con el valor hallado.

Entonces **sí**, A y B son independientes.  
Eso mismo concluye la diapositiva.

---

## 15. Ejercicio de revisión 3

La diapositiva final dice:

- 40% de los trabajadores fuman
- 70% son mujeres
- 75% son mujeres o fuman

Hallar la probabilidad de que fume dado que es mujer.

Sea:

- **F = fuma**
- **M = mujer**

Queremos:

**P(F | M)**

### Paso 1: hallar la intersección

Usamos:

**P(M ∪ F) = P(M) + P(F) - P(M ∩ F)**

Sustituimos:

**0.75 = 0.70 + 0.40 - P(M ∩ F)**

**P(M ∩ F) = 1.10 - 0.75 = 0.35**

### Paso 2: aplicar condicional

**P(F | M) = P(F ∩ M) / P(M) = 0.35 / 0.70 = 0.5**

### Respuesta

**0.5 o 50%**

Es el mismo resultado que muestra la diapositiva.

---

## 16. Resumen de toda la clase

Esta sesión quiso que entiendas estas tres ideas:

### 1) Probabilidad condicional

Es la probabilidad de un evento sabiendo que ya ocurrió otro:

**P(A | B) = P(A ∩ B) / P(B)**

La clave es que el denominador cambia porque ahora miras solo a los que cumplen la condición B.

### 2) Multiplicación de probabilidades

Sirve para hallar la intersección:

**P(A ∩ B) = P(A | B) · P(B)**

### 3) Independencia

Dos eventos son independientes si uno no altera al otro:

**P(A | B) = P(A)**

o equivalentemente:

**P(A ∩ B) = P(A) · P(B)**

---

## Idea final para recordarlo fácil

Piensa así:

- **probabilidad normal**: miras a todos
- **probabilidad condicional**: miras solo a un subgrupo
- **multiplicación**: reconstruyes la probabilidad de que pasen ambas cosas
- **independencia**: saber una cosa no cambia la otra
