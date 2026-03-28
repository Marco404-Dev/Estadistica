# Práctica 1 

Se busca aprender desde la instalación del programa hasta la creación y manipulación de objetos, vectores, matrices y data frames.

---

## 1. Instalación de R y RStudio

### ¿Qué es R?
**R** es un lenguaje de programación orientado al análisis estadístico, la manipulación de datos y la elaboración de gráficos.

### ¿Qué es RStudio?
**RStudio** es un entorno de desarrollo que facilita el trabajo con R.  
Permite escribir código, ejecutar instrucciones, visualizar objetos y organizar proyectos.

### Pasos generales de instalación
1. Instalar **R** desde la página oficial de CRAN.
2. Instalar **RStudio** como entorno para trabajar con R.
3. Abrir RStudio y verificar que reconoce la instalación de R.

---

## 2. Nociones básicas de la interfaz de RStudio

RStudio suele estar dividido en varias áreas principales.

### Paneles principales
- **Script**: permite escribir y guardar código.
- **Console**: permite ejecutar instrucciones y ver resultados.
- **Environment**: muestra los objetos creados.
- **Files / Plots / Packages / Help**: permite explorar archivos, gráficos, paquetes y ayuda.

### Crear un proyecto
Es recomendable trabajar con un **proyecto** para mantener ordenados los archivos del curso.

#### Ventajas de crear un proyecto
- Mantener los scripts en una carpeta específica.
- Organizar archivos de datos y resultados.
- Evitar confusión con rutas de trabajo.

### Directorio de trabajo
El directorio de trabajo es la carpeta donde R buscará y guardará archivos.

#### Funciones útiles
```r
getwd()   # muestra el directorio actual
setwd("ruta/de/la/carpeta")   # cambia el directorio de trabajo
```

### Crear un script
Un script es un archivo donde se guarda el código escrito en R.

#### Recomendación
Guardar siempre el trabajo en un archivo con extensión `.R`.

---

## 3. Entender los objetos en R

En R, un **objeto** es un espacio donde se almacena información.

### Crear objetos
Se pueden crear objetos usando `<-` o `=`.

```r
v <- 2
e <- 3 + 3
```

### Mostrar objetos
```r
v
e
```

### Funciones básicas para conocer un objeto

#### `mode()`
Muestra el modo de almacenamiento del objeto.

```r
mode(e)
```

#### `class()`
Muestra la clase del objeto.

```r
class(e)
```

#### `length()`
Indica la cantidad de elementos del objeto.

```r
length(e)
```

---

## 4. Estructuras de datos en R

Las tres estructuras trabajadas en esta práctica son:

- **Vectores**
- **Matrices**
- **Data frames**

---

## 5. Vectores

### ¿Qué es un vector?
Un vector es una estructura que almacena varios elementos del **mismo tipo**.

### Crear vectores
Se usa la función `c()`.

```r
peso <- c(3200, 2001, 1950, 2650, 2890)         # vector numérico
sexo <- c("M", "F", "M", "F", "M")              # vector carácter
bpeso <- c(FALSE, TRUE, TRUE, FALSE, FALSE)     # vector lógico
```

### Tipos de vectores
- **Numérico**
- **Carácter**
- **Lógico**

### Operaciones con vectores

```r
peso_c <- peso + 10
peso_c - peso
```

#### Interpretación
- `peso_c <- peso + 10` suma 10 a cada elemento del vector `peso`.
- `peso_c - peso` calcula la diferencia entre ambos vectores.

### Funciones útiles con vectores

```r
sum(peso_c)          # suma los elementos
length(peso_c)       # cantidad de elementos
mean(peso_c)         # promedio
mode(sexo)           # modo del vector
class(sexo)          # clase del vector
```

### Guardar un resultado en un objeto
```r
resultado <- mean(peso_c)
```

---

## 6. Acceso a elementos de un vector

Se usan corchetes `[ ]`.

### Extraer un solo elemento
```r
peso_c[3]
```

### Extraer varios elementos
```r
peso_c[c(3,5)]
```

### Selección lógica
```r
bpeso_c <- peso_c < 2500
peso_c[bpeso_c]
sexo[bpeso_c]
```

#### Interpretación
- `bpeso_c <- peso_c < 2500` genera un vector lógico.
- `peso_c[bpeso_c]` extrae los pesos menores a 2500.
- `sexo[bpeso_c]` extrae el sexo correspondiente a esos casos.

---

## 7. Matrices

### ¿Qué es una matriz?
Una matriz es una estructura bidimensional formada por **filas y columnas**.  
Todos sus elementos deben ser del **mismo tipo**.

### Crear una matriz
```r
matriz_p <- matrix(c(peso, peso_c),
                   nrow = 5,
                   ncol = 2)
```

### Ver la matriz
```r
matriz_p
```

### Dimensiones de la matriz
```r
dim(matriz_p)
```

### Asignar nombres a columnas y filas
```r
colnames(matriz_p) <- c("peso", "peso_c")
rownames(matriz_p) <- c("rn1", "rn2", "rn3", "rn4", "rn5")
```

### Acceder a elementos de la matriz

#### Un elemento específico
```r
matriz_p[5,1]
```

#### Usando nombres
```r
matriz_p["rn5","peso"]
```

#### Una fila completa
```r
matriz_p[3,]
```

#### Una columna completa
```r
matriz_p[,2]
```

#### Interpretación general
```r
matriz_p[fila, columna]
```

---

## 8. Data frame

### ¿Qué es un data frame?
Un data frame es una tabla de datos organizada en filas y columnas.  
A diferencia de la matriz, **puede almacenar distintos tipos de datos por columna**.

### Características principales
- Cada columna puede tener un tipo diferente.
- Todas las columnas deben tener la misma cantidad de elementos.

### Crear un data frame
```r
ejemplo <- data.frame(
  peso_c,
  bpeso_c,
  sexo
)
```

### Ver el data frame
```r
ejemplo
View(ejemplo)
```

### Funciones útiles con data frames
```r
dim(ejemplo)      # dimensiones
length(ejemplo)   # número de columnas
names(ejemplo)    # nombres de columnas
```

### Acceder a elementos del data frame

#### Un elemento específico
```r
ejemplo[5,1]
```

#### Usando nombre de columna
```r
ejemplo[5,"peso_c"]
```

#### Varias filas y varias columnas
```r
ejemplo[c(3,5), c(1,3)]
```

#### Otra forma usando nombres
```r
ejemplo[c(3,5), c("peso_c","sexo")]
```

#### Una fila completa
```r
ejemplo[3,]
```

#### Una columna completa
```r
ejemplo[,"peso_c"]
```

#### Interpretación general
```r
ejemplo[filas, columnas]
```

---

## 9. Diferencia entre vector, matriz y data frame

### Vector
- Tiene una sola dimensión.
- Guarda elementos del mismo tipo.

### Matriz
- Tiene dos dimensiones: filas y columnas.
- Guarda elementos del mismo tipo.

### Data frame
- Tiene filas y columnas.
- Cada columna puede ser de distinto tipo.

---

## 13. Ideas clave que se deben aprender

- Instalar correctamente **R** y **RStudio**.
- Reconocer la interfaz básica de trabajo.
- Crear y entender **objetos**.
- Diferenciar entre **vector**, **matriz** y **data frame**.
- Acceder a elementos por posición, por nombre y por condición lógica.
- Resolver un ejercicio práctico aplicando lo aprendido.
