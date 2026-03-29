############################################################
# ANÁLISIS DESCRIPTIVO EN R - BASE base_S2
############################################################

# ==========================================================
# 1. INSTALAR Y CARGAR PAQUETES
# ==========================================================

install.packages("readxl")   # Solo la primera vez
library(readxl)              # Cargar paquete

# ==========================================================
# 2. IMPORTAR Y VISUALIZAR LA BASE DE DATOS
# ==========================================================

base_S2 <- read_excel("base_S2.xlsx")   # Importar Excel

View(base_S2)   # Ver tabla de datos
str(base_S2)    # Ver estructura de la base

# ==========================================================
# 3. REVISIÓN DE LA VARIABLE error_occurred
# ==========================================================

base_S2$error_occurred ## acceder la columna "error_ocurred" de la tabla 'base_s2'

# Tabla de frecuencias inicial
tabla1 <- table(base_S2$error_occurred)  # table -> crea una tabla de frecuencias
tabla1

# La variable error_occurred es cualitativa,
# pero R puede detectarla como numérica.
# Por eso la convertimos a factor.

base_S2$error_occurred <- factor(   # factor() la convierte en una variable cualitativa.
  base_S2$error_occurred,
  levels = c(1, 0),           # indica qué valores originales existen
  labels = c("si", "no")      # les pone nombres.
)         # --> Así, donde había 1 ahora se verá "si" y donde había 0 se verá "no"


str(base_S2) # indica el tipo d dato de cada columna


# ==========================================================
# 4. TABLA DE FRECUENCIAS SIMPLE
# ==========================================================

tabla1 <- table(base_S2$error_occurred)
tabla1

# Proporciones
prop.table(tabla1)

# Porcentajes
prop.table(tabla1) * 100

# Porcentajes redondeados
round(prop.table(tabla1) * 100, 2)

# Tabla combinada: frecuencia y porcentaje

   
cbind(                  # cbind() une objetos por columnas, así que cada columna debe tener la misma cantidad FILAS            
  Frecuencia = tabla1,
  Porcentaje = round(prop.table(tabla1) * 100, 2)
)
           # los nombres de fila conserva de los nombres del primer objeto osea table1
        

# ==========================================================
# 5. ACTIVIDAD 3:
#    TABLA CRUZADA ENTRE error_occurred Y server
# ==========================================================

# crea una tabla de contingencia: en las filas quedan los valores de error_occurred (si, no) y en las columnas los tipos de server.

tabla2 <- table(base_S2$error_occurred, base_S2$server)
tabla2

# Cada celda muestra cuántos casos hay en esa combinación.
# Ejemplo: cuántos "si" hubo en el servidor A, cuántos "no" en el servidor B, etc.



# Frecuencias relativas globales
prop.table(tabla2)
prop.table(tabla2) * 100
round(prop.table(tabla2) * 100, 1)

# Porcentajes por fila
tabla3 <- round(prop.table(tabla2, margin = 1) * 100, 1)
tabla3

# Porcentajes por columna
tabla4 <- round(prop.table(tabla2, margin = 2) * 100, 1)
tabla4

# Totales marginales

# addmargins() agrega los totales de esos conteos
addmargins(tabla2)
addmargins(tabla4, margin = 1)  # agrega una fila para la suma
         
            # sin margin se agrega el total en una fila y columna adicional          
 
# ==========================================================
# 6. ACTIVIDAD 4:
#    CLASIFICAR cpu_usage_percent EN CATEGORÍAS
# ==========================================================

base_S2$cpu_cat <- cut(   # cut() es la función que toma una variable numérica y la divide en intervalos. Las corta
  base_S2$cpu_usage_percent,               # columna de la tabla
  breaks = c(0, 20, 40, 60, 80, 100),      # los divide en intervalos bajo los nombres de las etiquetas(labels)
  labels = c("Muy bajo", "Bajo", "Medio", "Alto", "Muy alto"),
  right = TRUE ,                            # significa que los intervalos son del tipo (a, b]
  include.lowest = TRUE      # hace una excepción en el primer intervalo para incluir ese extremo inferior, osea [0, 20]
)     

table(base_S2$cpu_cat) # recuerda q table es una tabla de frecuencias

tabla5 <- as.data.frame(table(base_S2$cpu_cat)) # data.frame(...) = crear un data frame
                                                # as.data.frame(...) = convertir algo que ya existe a data frame
tabla5  ## --> OJO: obtenemos la columna Freq

tabla5 <- transform(  # transform -->> agregarle nuevas columnas sin reescribir todo.
  tabla5,
  FreqAc = cumsum(Freq),   # consum() -->> va acumulando
  Rel = round(prop.table(Freq) * 100, 1),
  RelAc = round(cumsum(prop.table(Freq)) * 100, 1)
)

tabla5

# ==========================================================
# 7. ACTIVIDAD 5:
#    TABLA DE FRECUENCIAS PARA response_time_ms
# ==========================================================

# 1. Número de clases con la regla de Sturges
k <- nclass.Sturges(base_S2$response_time_ms) # aplica la regla de Sturges
k

# 2. Crear intervalos de clase
intervalos <- cut(base_S2$response_time_ms, breaks = k) # corta la columna en K intervalos

# 3. Generar tabla de frecuencias
tablaE <- as.data.frame(table(intervalos))
tablaE

# 4. Completar tabla con acumuladas y relativas
tablaE <- transform(
  tablaE,
  FreqAc = cumsum(Freq),
  Rel = round(prop.table(Freq) * 100, 1),
  RelAc = round(cumsum(prop.table(Freq) * 100), 1)
)

tablaE

# ==========================================================
# 8. ACTIVIDAD 6:
#    GRÁFICOS DE error_occurred
# ==========================================================

# barblot() -->> Gráfico de barras con frecuencias absolutas
barplot(table(base_S2$error_occurred))

# Gráfico de barras con frecuencias relativas
barplot(prop.table(table(base_S2$error_occurred)))

# Gráfico de barras mejorado
barplot(
  prop.table(table(base_S2$error_occurred)),
  col = c("orange", "blue"),                              # asigna colores
  legend.text = c("si", "no"),                            # leyenda
  ylim = c(0, 1),                                         # fija el eje Y de cero a uno
  main = "Distribución de sesiones según error ocurrido", # texto principal
  ylab = "Frecuencia relativa"                            # etiqueta del eje Y   
)

# Gráfico circular
tabla_por <- round(prop.table(tabla1) * 100, 1)
etiquetas <- paste(c("si", "no"), tabla_por, "%") # paste() sirve para juntar textos o valores.

pie(
  tabla_por,
  labels = etiquetas,
  clockwise = TRUE,                              # se dibuja en sentido horario.
  main = "Distribución de sesiones según error ocurrido"
)

# ==========================================================
# 9. ACTIVIDAD 7:
#    GRÁFICO DE BRRAS COMPUESTAS con error_occurred Y server
# ==========================================================

barplot(table(base_S2$error_occurred, base_S2$server))

tabla <- table(base_S2$error_occurred, base_S2$server)    
tabla_prop <- prop.table(tabla, margin = 2)  ## margin = 2 -->> la prop en fila

barplot(
  tabla_prop,
  col = c("tomato", "steelblue"),
  legend.text = rownames(tabla_prop), # rownames() devuelve los nombres de las filas de una tabla
  ylim = c(0, 1),
  main = "Distribución de error en sesiones según tipo de servidor",
  ylab = "Proporción",
  xlab = "Tipo de servidor"
)

# ==========================================================
# 10. ACTIVIDAD 8:
#     GRÁFICOS DE response_time_ms
# ==========================================================

# Histograma
hist(
  base_S2$response_time_ms,
  main = "Distribución del tiempo de respuesta del sistema",
  xlab = "Tiempo de respuesta",
  ylab = "Frecuencia"
)

# Ojiva
x <- c(187, 233, 280, 326, 372, 418, 465, 511)
y <- c(0, 6.7, 21.7, 48.3, 70, 88.3, 98.3, 100)

plot(
  x, 
  y,
  type = "p",  # indica que solo muestre puntos
  pch = 20,    # define el tipo de punto
  lty = 1,                                      # es el estilo de línea si luego se conecta
  xlab = "Tiempo de respuesta del sistema",
  ylab = "Frecuencia relativa acumulada",
  main = "Ojiva de frecuencias relativas acumuladas",
  xaxt = "n",  # EJE X no dibujes ese eje automáticamente para luego manejarlo manualmente con AXIS
  yaxt = "n"   # de la misma manera
)

axis(side = 1, at = x, labels = TRUE)              # labels = TRUE hace que esos valores se escriban.
axis(side = 2, at = y, labels = TRUE, las = 2)     # las = 2 rota las etiquetas del eje Y para que se vean verticales
lines(x, y) # crea la linea
segments(418, -3, 418, 88.3, lwd = 1, lty = 2)  # segments(418, -3, 418, 88.3, ...) dibuja una línea vertical en x = 418, desde y = -3 hasta y = 88.3.
segments(0, 88.3, 418, 88.3, lwd = 1, lty = 2)  # lwd -> grosor # lty -> tipo de linea 

# Boxplot
# crea un diargrama de caja y bigotes

boxplot(base_S2$response_time_ms)
