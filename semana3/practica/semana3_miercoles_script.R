##Curso Estadística y Probabilidades para Ingeniería
##Clase Práctica 3 - Práctica 2

##Ubicar directorio de trabajo (descargar archivos)

##Importar datos base_clase3.csv
base <- read.table(file.choose("base_clase3.csv"), header=T, sep=",")

##Información de base de datos


##Nombre de variables
names(base)

##Primero datos de la base de datos
head(base)

##Últimos datos de la base de datos
tail(base)

##Estructura de la base de datos
str(base)

##funcion attach
attach(base)

##Transformar a factor
base$m_ejecucion<-factor(m_ejecucion,
                         levels=c(1,2,3),
                         labels=c("personal", "memoria inmediata", "memoria trabajo"))

summary(base)
##1. Eso agrupa tiempo según m_ejecucion y calcula una medida para cada grupo
#  aggregate() -->> sirve para agrupar datos y calcular una función en cada grupo.

aggregate(tiempo,by=list(m_ejecucion),mean)  # promedio del tiempo por tipo de ejecución
aggregate(tiempo,by=list(m_ejecucion),median)  # mediana del tiempo por tipo de ejecución.

                                      # by=list(m_ejecucion) indica “separar por grupos de m_ejecucion”.

##2.- Luego de revisar los estadísticos descriptivos y los gráficos, indicar la
##medida de tendencia central y dispersión que emplearías para describir 
##el tiempo total según el modo de ejecucion.
install.packages("psych")
library(psych)


describe(tiempo)  # como summary() pero mas informacion
                 # n = 33 datos, media = 244.58, mediana = 230, sd = 75.73, mín = 128, máx = 395, rango = 267.
                 # También dio trimmed = 242.07 (media recortada, quitando extremos), mad = 88.96 (dispersión robusta), skew = 0.32 (ligera asimetría a la derecha), kurtosis = -0.93 (menos apuntada que la normal) y se = 13.18 (error estándar).
                 # vars = 1 solo indica que describió una variable.

describeBy(tiempo,m_ejecucion)  # lo mismo pero por grupos segun m_ejecucion

boxplot(tiempo~m_ejecucion)     # Hace un diagrama de caja de tiempo separado por cada grupo de m_ejecucion



##3.- Luego de revisar los estadísticos descriptivos y los gráficos, indicar la
##medida de tendencia central y dispersión que emplearías para describir 
##el numero de aciertos según el modo de ejecucion.


describe(n_aciertos)
describeBy(n_aciertos,m_ejecucion)
boxplot(n_aciertos~m_ejecucion)


##4.- Luego de revisar los estadísticos descriptivos y los gráficos, indicar la
##medida de tendencia central y dispersión que emplearías para describir 
##el span según el modo de ejecucion.
describe(span)
describeBy(span,m_ejecucion)
boxplot(span~m_ejecucion)





##Medidas de resumen tiempo total
mean(tiempo, na.rm = FALSE)
median(tiempo, na.rm = FALSE)
quantile(tiempo, probs=0.5)
quantile(tiempo, c(0.25, 0.5, 0.75))
quantile(tiempo, c(0.20, 0.30, 0.60))
##Moda
tabla <- table(tiempo)
tabla
sort(tabla, decreasing=TRUE)

min(tiempo)
max(tiempo)
range(tiempo)
sd(tiempo)
IQR(tiempo)

##Estadistico de mas de una variable
lapply(base[, 2:4], sd)

##pastecs
install.packages("pastecs")
library (pastecs)
 
##moments
install.packages("moments")
library(moments)
round(skewness(tiempo),digits=1) ### coeficiente de variacion

hist(tiempo,
     main="Tiempo total de mujeres evaluadas",
     xlab="tiempo total",
     ylab="Frecuencia",
     ylim=c(0,12))

##Gráfico caja y bigote
boxplot(x=tiempo)