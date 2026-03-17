# Práctica 1 - Introducción a R y RStudio

---

# 1. Instalación de R y RStudio

## ¿Qué es R?
**R** es un lenguaje de programación orientado al análisis estadístico, la manipulación de datos y la elaboración de gráficos.

## ¿Qué es RStudio?
**RStudio** es un entorno de desarrollo que facilita el trabajo con R.  
Permite escribir código, ejecutar instrucciones, visualizar objetos y organizar proyectos.

## Pasos generales de instalación
1. Instalar **R** desde la página oficial de CRAN.
2. Instalar **RStudio** como entorno para trabajar con R.
3. Abrir RStudio y verificar que reconoce la instalación de R.

---

# 2. Nociones básicas de la interfaz de RStudio

RStudio suele estar dividido en varias áreas principales:

## Paneles principales
- **Script**: permite escribir y guardar código.
- **Console**: permite ejecutar instrucciones y ver resultados.
- **Environment**: muestra los objetos creados.
- **Files / Plots / Packages / Help**: permite explorar archivos, gráficos, paquetes y ayuda.

## Crear un proyecto
Es recomendable trabajar con un **proyecto** para mantener ordenados los archivos del curso.

### Ventajas de crear un proyecto
- Mantener los scripts en una carpeta específica.
- Organizar archivos de datos y resultados.
- Evitar confusión con rutas de trabajo.

## Directorio de trabajo
El directorio de trabajo es la carpeta donde R buscará y guardará archivos.

### Funciones útiles
```r
getwd()   # muestra el directorio actual
setwd("ruta/de/la/carpeta")   # cambia el directorio de trabajo
