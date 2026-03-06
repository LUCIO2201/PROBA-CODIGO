# --- PASO 1: Seleccionar y cargar el archivo ---
datos <- read.table(file.choose(), header = TRUE, sep = "\t")

# --- PASO 4.a: Diagrama de Dispersión ---
plot(datos$MAT, datos$SCORE,
     main = "Diagrama de Dispersión: MAT vs SCORE (Equipo 8)",
     xlab = "Variable MAT (X) - Matemáticas",
     ylab = "Variable SCORE (Y) - Puntaje General",
     pch = 19, 
     col = "blue")

# Añadir la línea de regresión (línea roja)
abline(lm(SCORE ~ MAT, data = datos), col = "red", lwd = 2)

# Añadir cuadrícula para que se vea mejor
grid()

# --- PASO 4.b: Calcular y mostrar el Coeficiente de Correlación ---
r_resultado <- cor(datos$MAT, datos$SCORE, use = "complete.obs")

cat("\nEl coeficiente de correlación de Pearson (r) es:", round(r_resultado, 4), "\n")