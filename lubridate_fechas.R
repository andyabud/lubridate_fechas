# En este breve ejercicio haremos un dataframe de 2 columnas con los días del año y un índice indicando qué día del año es. Luego definiremos los días lunes y domingo de la última semana con la librería lubridate. Finalmente haremos un objeto a partir del dataframe con los días filtrados para la última semana


# Cargar Librerías --------------------------------------------------------


library(tidyverse)
library(lubridate)


# Hacer DF con los días del año --------------------------------------------

# Crear secuencia de días
dias <- seq(as.Date("2022-01-01"), as.Date("2022-12-31"), by="days")

# Crear índice del 1:365
indice_dias <- c(1:365)

# Juntar y hacer un dataframe con los índices y los días
df <- data.frame(indice_dias, dias)


# Establecer Días de la semana --------------------------------------------

# Establecer la fecha piso como lunes, indicando 1 = lunes
lunes <- floor_date(today(), "week", 1)
# Establecer la fecha techo como domingo, indicando 7 = domingo
domingo <- ceiling_date(today(), "week", 7)


# Filtrar por Fecha -------------------------------------------------------


# Filtrar, hacer un igual o mayor y un igual o menor
df %>% 
  filter(dias >= lunes, dias <= domingo)

# Hacer un dataframe con los días filtrados
df_semana <- df %>% 
  filter(dias >= lunes, dias <= domingo)
