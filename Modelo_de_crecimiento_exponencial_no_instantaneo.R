# Introduzca la población inicial
Poblacion_inicial = 5

# Introduzca el porcentaje de crecimiento, 1 = 100%
Porcentaje_de_crecimiento = 0.20

# Introduzca el tiempo al que se desea calcular el crecimiento
tiempo = 0:50



Bacterias = Exponencial_NI(Poblacion_inicial, Porcentaje_de_crecimiento, tiempo)

Bacterias

plot(y = c(Bacterias), x = 0:50, xlab="Tiempo (horas)", ylab="Bacterias", log="y", type="l",
     col="red3",
     lwd=2)

# Edite las lineas grises
abline(lwd=2, lty="dashed", col="lightgrey", v=seq(0, 50, by=5), h= c(5, 50, 500, 5000, 50000))

# Edite la leyenda
legend("bottomright",legend=expression("Crecimiento de bacterias"), col="red3", bty="l", lwd=2)