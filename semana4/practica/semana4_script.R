## Curso: Estadística y Probabilidades para Ingeniería
## Práctica dirigida con RStudio 

## Importar datos
install.packages("readxl")
library(readxl)                # usar funciones como read_excel()
## Por el menu: Import Datset

str(base_S4)

## Factor error        # factor() sirve para convertir una variable en categórica.

base_S4$error_occurred <- factor(base_S4$error_occurred,
                    levels = c(1,0),
                    labels = c("si", "no"))

str(base_S4)

## Tabla de frecuencia simple
install.packages("tidyverse")
library(tidyverse)

base_S4 %>% count(server)        # %>% toma este objeto y pásalo a la siguiente función
base_S4 %>% count(error_occurred)

##El investigador desea clasificar y presentar variable porcentaje de capacidad
##del procesoador utilizado mediante una tabla. 
##A continuación se presenta las categorías en las cuales se requiere clasificar
##Categoría	Rango (%)
##Muy bajo	0 – 20
##Bajo	21 – 40
##Medio	41 – 60
##Alto	61 – 80
##Muy alto	81 – 100

base_S4$cpu_cat <- cut(      # cut() sirve para agrupar una variable numérica en intervalos o categorías.
  base_S4$cpu_usage_percent, 
  breaks = c(0, 20, 40, 60, 80, 100),                         # breaks define los cortes
  labels = c("Muy bajo","Bajo", "Medio", "Alto", "Muy alto"),
  include.lowest = TRUE,                                      # include.lowest=TRUE incluye el menor valor
  right = TRUE          # right=TRUE hace que el extremo derecho sí se incluya: por ejemplo, (20,40]
)

base_S4 %>% count(cpu_cat)

# Bivariada categórica
base_S4 %>% count(error_occurred, server)
base_S4 %>% count(error_occurred, cpu_cat)  # para usar CrossTable()

install.packages("gmodels")
library(gmodels)
CrossTable(base_S4$error_occurred, base_S4$server) # CrossTable
            # Te muestra cuántos casos hay en cada combinación
            # suele mostrar porcentajes por fila, por columna y del total, para comparar mejor

#GRaficos
# Cargar los paquetes 
library(dplyr)         # manipular los datos, prepara las tablas
library(ggplot2)        # hacer gráficos

# Crear un data frame con las frecuencias y porcentajes
tabla_server <- base_S4 %>%
  count(server) %>%
  mutate(                                    # mutate() sirve para crear o modificar columnas dentro de una tabla
    porcentaje = round(n / sum(n) * 100, 1),
    etiqueta = paste0(server, "\n", porcentaje, "%")
  )

#Grafico con ggplot
# creamos un grafico con ggplot usando la tabla: tabla_server
ggplot(tabla_server, aes(x = "", y = n, fill = server)) +   # aes() variable va en qué parte visual del gráfico
                                                            # x:     y: altura de cada parte   fill: color de cada parte
  geom_col(width = 1, color = "white") +            # geom_col() crea un gráfico de barras
  coord_polar(theta = "y") +                        # coord_polar() transforma el sistema de coordenadas normal en coordenadas polares.
  geom_text(aes(label = etiqueta),                  # geom_text() Sirve para escribir etiquetas en el gráfico.
                                                    # aes() Le dice que el texto que debe mostrar está en la columna etiqueta,   RECUERDA: q antes creamos la columna:  etiqueta
            position = position_stack(vjust = 0.5), # position  : Esto controla dónde se coloca el texto, el 0.5 signica q este centrado
            size = 4) +                             # tama;o de la letra
  scale_fill_brewer(palette = "Set2") +               # define la paleta de colores
  labs(                                            # labs() sirve para poner etiquetas descriptivas al gráfico.
    title = "Distribución según tipo de servidor",
    fill = "Servidor"                               # leyenda, pero luego lo ocultas
  ) +
  theme_void() +  # theme_void() elimina casi todo lo innecesario como: ejes, numeros, fondo, lineas de cuadricula
  theme(
    plot.title = element_text(face = "bold", hjust = 0.5, size = 14), # titulo en negrita, centrado y tama;o 14
    legend.title = element_text(face = "bold"),   # Pone en negrita el título de la leyenda.
    legend.position = "none"            # ocultamos la lleyenda
  )

#Gráfico de barras sencillo
base_S4 %>%
  count(server) %>%
  ggplot(aes(x = server, y = n)) +
  geom_col(fill = "#4E79A7") +
  geom_text(aes(label = n),
            vjust = -0.3,
            size = 4) +
  labs(
    title = "Distribución del tipo de servidor",
    x = "Servidor",
    y = "Frecuencia"
  ) +
  theme_minimal() +
  theme(
    plot.title = element_text(face = "bold", hjust = 0.5),
    axis.title = element_text(face = "bold")
  )


#Gráfico de barras agrupado
#Representa los datos de dos o más series o conjuntos de datos.
base_S4 %>%
  count(server, error_occurred) %>%
  ggplot(aes(x = server, y = n, fill = error_occurred)) +
  
  geom_col(position = position_dodge(width = 0.7),
           width = 0.6,
           color = "white") +
  geom_text(aes(label = n),
            position = position_dodge(width = 0.7),
            vjust = -0.4,
            size = 4,
            fontface = "bold") +
  scale_fill_manual(values = c("#4E79A7", "#F28E2B")) +
  scale_y_continuous(expand = expansion(mult = c(0, 0.1))) +
  labs(
    title = "Tipo de servidor según error",
    x = "Tipo de servidor",
    y = "Frecuencia",
    fill = "error"
  ) +
  theme_minimal() +
  theme(
    plot.title = element_text(face = "bold", hjust = 0.5),
    axis.title = element_text(face = "bold")
  )

#Gráfico de barras apilado
base_S4 %>%
  filter(!is.na(server), !is.na(error_occurred)) %>%
  count(server, error_occurred) %>%
  ggplot(aes(x = server, y = n, fill = error_occurred)) +
  geom_col(color = "white") +
  geom_text(aes(label = n),
            position = position_stack(vjust = 0.5),
            size = 4,
            fontface = "bold",
            color = "blue") +
  coord_flip() +
  
  scale_fill_manual(values = c( "#00BCD4", "#FFD700")) +
  labs(
    title = "Tipo de servidor según error",
    x = "Servidor",
    y = "Frecuencia",
    fill = "error"
  ) +
  theme_minimal()

##Gráfico apilado (porcentaje al 100%)
base_S4 %>%
  filter(!is.na(server), !is.na(error_occurred)) %>%
  count(server, error_occurred) %>%
  group_by(server) %>%
  mutate(prop = n / sum(n)) %>%
  ggplot(aes(x = server, y = prop, fill = error_occurred)) +
  geom_col(color = "white") +
  geom_text(aes(label = scales::percent(prop)),
            position = position_stack(vjust = 0.5),
            size = 4,
            fontface = "bold") +
  coord_flip() +
  scale_fill_manual(values = c("#00BCD4", "#FFD700")) +
  labs(
    title = "Tipo de servidor según error (100%)",
    x = "Servidor",
    y = "Porcentaje",
    fill = "Error"
  ) +
  theme_minimal()


#Histograma con ggplot2

base_S4 %>%
  filter(!is.na(response_time_ms)) %>%
  ggplot(aes(x = response_time_ms)) +
  
  geom_histogram(aes(y = ..density..),
                 bins = 25,
                 fill = "#FFD700",
                 color = "black") +
  
  geom_density(color = "#00BCD4", linewidth = 1.2) +
  
  labs(
    title = "Distribución del tiempo de respuesta",
    x = "tiempo (ms)",
    y = "Densidad"
  ) +
  
  theme_minimal()


#grafico de caja
ggplot(base_S4, aes(x = "", y = response_time_ms)) +
  geom_boxplot(fill = "#FFD700") +
  labs(
    title = "Distribución del tiempo de respuesta",
    x = "",
    y = "Tiempo (ms)"
  ) +
  theme_minimal()

##Tiempo  según error
base_S4 %>%
  filter(!is.na(response_time_ms), !is.na(error_occurred)) %>%
  ggplot(aes(x = error_occurred, y = response_time_ms)) +
  
  geom_boxplot(
    fill = "#00BCD4",
    color = "black",
    alpha = 0.7,
    outlier.color = "red"
  ) +
  
  labs(
    title = "Tiempo de respuesta según error",
    x = "error",
    y = "Tiempo de respuesta (ms)"
  ) +
  
  theme_minimal()

## Estadisticos descriptivos
install.packages("psych")
library(psych)
describe(base_S4$response_time_ms)
describeBy(base_S4$response_time_ms,base_S4$error_occurred)

#Grafico de dispersión
base_S4 %>%
  filter(!is.na(response_time_ms), !is.na(cpu_usage_percent)) %>%
  ggplot(aes(x = response_time_ms, y = cpu_usage_percent)) +
  geom_point(color = "#00BCD4",
             size = 3,
             alpha = 0.7) +
  geom_smooth(method = "lm",
              color = "blue",
              fill = "#FFD700",
              linewidth = 1.2) +
  labs(
    title = "Relacion entre el tiempo de respuesta y el porcentaje de uso de cpu",
    x = "Tiempo (ms)",
    y = "CPU%"
  ) +
  theme_minimal()
