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

base_S2$error_occurred

# Tabla de frecuencias inicial
tabla1 <- table(base_S2$error_occurred)
tabla1

# La variable error_occurred es cualitativa,
# pero R puede detectarla como numérica.
# Por eso la convertimos a factor.

base_S2$error_occurred <- factor(
  base_S2$error_occurred,
  levels = c(1, 0),
  labels = c("si", "no")
)

str(base_S2)

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
cbind(
  Frecuencia = tabla1,
  Porcentaje = round(prop.table(tabla1) * 100, 2)
)

# ==========================================================
# 5. ACTIVIDAD 3:
#    TABLA CRUZADA ENTRE error_occurred Y server
# ==========================================================

tabla2 <- table(base_S2$error_occurred, base_S2$server)
tabla2

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
addmargins(tabla2)
addmargins(tabla4, margin = 1)

# ==========================================================
# 6. ACTIVIDAD 4:
#    CLASIFICAR cpu_usage_percent EN CATEGORÍAS
# ==========================================================

base_S2$cpu_cat <- cut(
  base_S2$cpu_usage_percent,
  breaks = c(0, 20, 40, 60, 80, 100),
  labels = c("Muy bajo", "Bajo", "Medio", "Alto", "Muy alto"),
  include.lowest = TRUE,
  right = TRUE
)

tabla5 <- as.data.frame(table(base_S2$cpu_cat))
tabla5

tabla5 <- transform(
  tabla5,
  FreqAc = cumsum(Freq),
  Rel = round(prop.table(Freq) * 100, 1),
  RelAc = round(cumsum(prop.table(Freq)) * 100, 1)
)

tabla5

# ==========================================================
# 7. ACTIVIDAD 5:
#    TABLA DE FRECUENCIAS PARA response_time_ms
# ==========================================================

# 1. Número de clases con la regla de Sturges
k <- nclass.Sturges(base_S2$response_time_ms)
k

# 2. Crear intervalos de clase
intervalos <- cut(base_S2$response_time_ms, breaks = k)

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

# Gráfico de barras con frecuencias absolutas
barplot(table(base_S2$error_occurred))

# Gráfico de barras con frecuencias relativas
barplot(prop.table(table(base_S2$error_occurred)))

# Gráfico de barras mejorado
barplot(
  prop.table(table(base_S2$error_occurred)),
  col = c("orange", "blue"),
  legend.text = c("si", "no"),
  ylim = c(0, 1),
  main = "Distribución de sesiones según error ocurrido",
  ylab = "Frecuencia relativa"
)

# Gráfico circular
tabla_por <- round(prop.table(tabla1) * 100, 1)
etiquetas <- paste(c("si", "no"), tabla_por, "%")

pie(
  tabla_por,
  labels = etiquetas,
  clockwise = TRUE,
  main = "Distribución de sesiones según error ocurrido"
)

# ==========================================================
# 9. ACTIVIDAD 7:
#    GRÁFICO DE error_occurred Y server
# ==========================================================

barplot(table(base_S2$error_occurred, base_S2$server))

tabla <- table(base_S2$error_occurred, base_S2$server)
tabla_prop <- prop.table(tabla, margin = 2)

barplot(
  tabla_prop,
  col = c("tomato", "steelblue"),
  legend.text = rownames(tabla_prop),
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
  x, y,
  type = "p",
  pch = 20,
  lty = 1,
  xlab = "Tiempo de respuesta del sistema",
  ylab = "Frecuencia relativa acumulada",
  main = "Ojiva de frecuencias relativas acumuladas",
  xaxt = "n",
  yaxt = "n"
)

axis(side = 1, at = x, labels = TRUE)
axis(side = 2, at = y, labels = TRUE, las = 2)
lines(x, y)
segments(418, -3, 418, 88.3, lwd = 1, lty = 2)
segments(0, 88.3, 418, 88.3, lwd = 1, lty = 2)

# Boxplot
boxplot(base_S2$response_time_ms)
