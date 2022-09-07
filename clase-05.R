# Mayra Catalina Barrios Mesa
# Update: 07-09-2022

# Limpiar el entorno
rm(list = ls())

## instalar/llamar pacman
require(pacman)

## usar la función p_load de pacman para instalar/llamar las librerías de la clase
p_load(rio, # función import/export: permite leer/escribir archivos desde diferentes formatos. 
       skimr, # funcion skim: describe un conjunto de datos
       janitor, # función tabyl: frecuencias relativas
       dplyr) # contiene conjuntos de datos.

# Importar datos
data_csv = import(file="input/datos_censo.csv" , skip=6 , encoding="UTF-8") 

data_xls = import(file="input/datos_excel.xlsx" , skip=9)

# Exportar
export(x=data_csv, file="output/data_csv.csv")

export(x=data_xls , file="output/data_excel.rds")

# Convertir
convert(in_file = "input/datos_censo.csv" , out_file="output/datos_convert.rds")

## Explorar bases de datos
data(package="dplyr")

# Obtener datos
db = as_tibble(x = starwars)

head(x = db , n = 5) ## pinta sobre la consola las primeras 5 observaciones de "db"

tail(db) ## pinta sobre la consola las ultimas 5 observaciones de "db"

str(data_csv) ## obtener la estructura del objeto

skim(db) ## de la librería skimr

## Manipular variables

# Renombrar variables
db = rename(.data = db , weigth=mass , height_cm=height) ## de la librería dplyr
colnames(db)

df = select_all(.tbl=db , toupper) ## de la librería dplyr

colnames(data_csv)

data_csv2 = clean_names(data_csv)
colnames(data_csv2)

