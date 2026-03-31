##Curso Estadística y Probabilidades para Ing
##Clase Práctica 3

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

# Sin embargo la variable modo de ejecución es cualitativa.
# Donde 1=personal, 2=memoria inmediata, 3=memoria trabajo.
# Por lo tanto, la transformamos esta variable a tipo factor.


##funcion attach
attach(base)      # hace q reconozca directamente las columnas de base como si fueran variables sueltas.
                  # Por eso, en vez de escribir base$tiempo, puedes escribir solo tiempo.

##Transformar a factor
base$m_ejecucion<-factor(m_ejecucion,          
                       levels=c(1,2,3),
                       labels=c("personal", "memoria inmediata", "memoria trabajo"))

##Medidas de resumen de cada variable de la tabla
summary(base)

##Medidas de resumen tiempo total
mean(tiempo, na.rm = FALSE)       ## na.rm = FALSE -->>  no ignora los NA
median(tiempo, na.rm = FALSE)
quantile(tiempo, probs=0.5)
quantile(tiempo, c(0.25, 0.5, 0.75))
quantile(tiempo, c(0.20, 0.30, 0.60))
##Moda
tabla <- table(tiempo)   # table -->> guarda frecuencias
tabla
sort(tabla, decreasing=TRUE)   # ordena de mayor a menor (en este caso las frecuencias)

min(tiempo)
max(tiempo)
range(tiempo)
sd(tiempo)    # calcula la desviación estándar
IQR(tiempo)   # calcula el rango intercuartílico: Q3 - Q1

##Estadistico de mas de una variable
lapply(base[, 2:4], sd)                  # la desviacion estandar de las columnas 2 hasta 4

## el lapply es para ahorrarnos en escribir codigo
sd(base$tiempo)
sd(base$n_aciertos)
sd(base$span)

########################      PASTECS      ###########################

install.packages("pastecs")   # instala el paquete.
library (pastecs)             # lo carga para poder usar sus funciones
stat.desc(base)               # es como un summary() pero mas informacion brida

#######################       moments     ############################
install.packages("moments")
library(moments)
round(skewness(tiempo),digits=1)     # skewness(tiempo) calcula la asimetría de la variable tiempo
                                     # round(..., digits=1) solo redondea el resultado a 1 decimal

hist(tiempo,
     main="Tiempo total de mujeres evaluadas",
     xlab="tiempo total",
     ylab="Frecuencia",
     ylim=c(0,12))

##Gráfico caja y bigote
boxplot(x=tiempo)


## De acuerdo con las últimas estimaciones y proyecciones de población, el Perú
##al 30 de junio de año 2020 alcanza los 32 millones 625 mil 948 habitantes.
##Del total de la población peruana, 16 millones 190 mil 895 corresponde
##a población masculina. Hasta el 12 de abril del 2021 se tiene reportado 
##1 millón 659 mil 707 casos positivos de COVID 19

##Determinar la proporción de mujeres: 
##Mujeres= 32 625 948 – 16 190 895= 16 435 053 
##Proporción de mujeres= 16 435 053/32 625 948= 0.5037     50.37%
(32625948-16190895)/32625948 * 100

##Determinar el índice de masculinidad: 
##Varones/Mujeres = 16 190 895/16 435 053= 0.985
##0.985*100= 99 varones por cada 100 mujeres
(16190895/16435053) * 100

##Determinar la tasa de COVID 19 en el Perú: 1 659 707/32 625 948= 0.0508
##0.0508* 1000= 51 casos positivos de COVID 19 por cada 1000 habitantes
##por año riesgo
(1659707/32625948)*1000


