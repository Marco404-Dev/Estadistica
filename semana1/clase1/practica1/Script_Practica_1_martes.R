## Curso Estadística y Probabilidades para Ingeniería
## Clase Práctica 1

## Instalar paquete (solo la primera vez)
install.packages("installr")

## Cargar paquete
library(installr)

v <- 2
v

e <- 3 + 3
e

mode(e)
length(e)

peso <- c(3200, 2001, 1950, 2650, 2890)         # vector numérico
sexo <- c("M", "F", "M", "F", "M")              # vector carácter
bpeso <- c(FALSE, TRUE, TRUE, FALSE, FALSE)     # vector lógico

peso_c <- peso + 10   # suma 10 a todos los elementos del vector peso

peso_c - peso         # diferencia de vectores

mode(sexo)
class(sexo)           # tipo de dato

sum(peso_c)           # suma todos los elementos
length(peso_c)        # cantidad de elementos

sum(peso_c) / length(peso_c)   # promedio
mean(peso_c)                   # función para el promedio

resultado <- mean(peso_c)      # guardamos el promedio en una variable

## Extraer elementos ##
## usamos corchetes [ ] para extraer elementos

peso_c[3]
peso_c[c(3,5)]

bpeso_c <- peso_c < 2500       # genera un vector lógico

peso_c[bpeso_c]                # extrae los elementos de peso_c donde bpeso_c es TRUE
sexo[bpeso_c]                  # extrae los elementos de sexo en esas mismas posiciones

##################

## Matrices ##

matriz_p <- matrix(c(peso, peso_c),   # contenido de la matriz
                   nrow = 5,          # número de filas
                   ncol = 2)          # número de columnas

matriz_p
dim(matriz_p)   # indica las dimensiones de la matriz

colnames(matriz_p) <- c("peso", "peso_c")                   
rownames(matriz_p) <- c("rn1", "rn2", "rn3", "rn4", "rn5")  

matriz_p[5,1]              # peso sin corregir del 5.° recién nacido
matriz_p["rn5","peso"]     # otra forma usando nombres
matriz_p[3,]               # información completa del 3.° recién nacido
matriz_p[,2]               # pesos corregidos de los 5 recién nacidos

## Data frame ##
# es como una tabla más flexible que una matriz
# una matriz almacena datos del mismo tipo
# un data frame puede almacenar columnas de diferentes tipos
# todas las columnas deben tener la misma cantidad de elementos

ejemplo <- data.frame(peso_c,     # vector numérico -- columna 1
                      bpeso_c,    # vector lógico   -- columna 2
                      sexo)       # vector carácter -- columna 3

ejemplo

View(ejemplo)     # función para visualizar la tabla

dim(ejemplo)
length(ejemplo)   # en un data frame indica el número de columnas
names(ejemplo)    # nombres de las columnas

ejemplo[5,1]                    # peso del 5.° recién nacido
ejemplo[5,"peso_c"]             # otra forma de llamarlo

ejemplo[c(3,5), c(1,3)]         # filas 3 y 5; columnas 1 y 3
ejemplo[c(3,5), c("peso_c","sexo")]   # otra forma usando nombres

ejemplo[3,]                     # selecciona la fila completa
ejemplo[,"peso_c"]              # selecciona la columna completa
