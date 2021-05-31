
# Introduzca el tiempo a evaluar
tiempo = 0:50

# Introduzca la población inicial
celulas_iniciales = 100000

# Introduzca la poblanción máxima (1e+10 = 1*10^10)
poblacion_maxima = 1e+10

# Introduzca el porcentaje de crecimiento por unidad de tiempo (100% = 1)
porcentaje_de_crecimiento_inicial = 0.50

crecimiento_logistico <- function(t, M, P0, k){
  (M)/(1 + M*(P0^-1 - M^-1)*exp(-k * t))
}

celulas = crecimiento_logistico(t = tiempo, k = porcentaje_de_crecimiento_inicial,
                                M = poblacion_maxima,
                                P0 = celulas_iniciales)
celulas


plot(x=tiempo, y=celulas,
     col="red3",
     lwd=2,
     type = "l",
     log = "y",
     xlab = "Tiempo (horas)",
     ylab = "Bacterias")


# Edite las lineas grises
abline(v=seq(0, 50, by=5), h=c(1e+5, 1e+6, 1e+7, 1e+8, 1e+9, 1e+10), col="lightgrey", lty="dashed", lwd=2)

