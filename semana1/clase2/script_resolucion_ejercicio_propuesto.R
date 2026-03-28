## 1. Generar un vector para cada variable

tiempo <- c(4, 6, 5, 9, 8, 7, 13, 11, 9)
dosis  <- c(3, 3, 3, 10, 10, 10, 15, 15, 15)
sexo   <- c("F", "M", "F", "M", "F", "M", "F", "M", "F")


## 2. Generar una matriz para los vectores numéricos

matriz<- matrix(c(tiempo, dosis),
                    nrow = 9,
                    ncol = 2)

colnames(matriz) <- c("Tiempo", "Dosis")
rownames(matriz) <- c("p1","p2","p3","p4","p5","p6","p7","p8","p9")

matriz


## 3. Identificar en la matriz al participante número 5:
##    qué tiempo de sueño presentó y dosis del fármaco

matriz[5, ]


## 4. Identificar en la matriz al participante número 1:
##    qué tiempo de sueño presentó

matriz[1, "Tiempo"]

matriz[1, 1]


## 5. Identificar en la matriz al participante número 9:
##    qué dosis del fármaco empleó

matriz[9, "Dosis"]

matriz[9, 2]

## 6. Generar un data frame con los tres vectores.
##    Indicar número y nombre de columnas

datos <- data.frame(tiempo, dosis, sexo)

datos

length(datos) # numero de columnas 
names(datos)  # nombre de columnas


## 7. Identificar en el data frame el género del participante 7

datos[7, "sexo"]

datos[7, 3]


## 8. Identificar en el data frame el tiempo del participante 2
##    y la dosis del participante 8

datos[2, "tiempo"]
datos[8, "dosis"]

datos[c(2,8),c(1,2)]  # tiempo y dosis de los participantes 2 y 8 
