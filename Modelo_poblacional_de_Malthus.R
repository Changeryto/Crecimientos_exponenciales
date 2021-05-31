# Declarando la función para obtener k

calculo_k <- function(P0, Pt, t_a_Pt=1){
  (log(Pt/P0))/t_a_Pt
}

# Declarando la función para obtener P

Poblacion <- function(P0, Pt, t_a_Pt=1, t){
  P0 * exp(calculo_k(P0, Pt, t_a_Pt) * t)
}

# Introduzca la población a tiempo 0

P0 = 2000

# Introduzca la población a una t conocida

Pt = 8000

# Introduzca la t conocida al tiempo de Pt

t_a_Pt = 36

# Introduzca el tiempo o intervalo de tiempo que desea evaluar

t = 0:186

Bacterias = Poblacion(P0, Pt, t_a_Pt, t)
Bacterias
plot(x = t, y = Bacterias,
     type = "l",
     log="y",
     col="red4",
     xlab = "Tiempo (horas)",
     ylab = "Bacterias",
     lwd = 2,
     yaxt = "n"
)

# Edite las lineas grises y el eje y
abline(v=seq(0, 200, by=25), col="lightgrey", lty="dashed", lwd=2, h=c(2000,20000,200000, 2000000, 2e+7))
axis(2, c(2000,20000,200000, 2000000, 2e+7))

# Edite la leyenda
legend("bottomright",legend=expression("Crecimiento de"~italic("M. tuberculosis")), col="red3", bty="l", lwd=2)

