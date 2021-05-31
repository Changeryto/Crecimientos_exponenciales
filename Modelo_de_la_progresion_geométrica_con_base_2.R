# Generando la función de este modelo
N_de_este_modelo <- function(N0, t, g){
  N0 * 2^(t/g)
}

# Introduzca el número de células iniciales
N0 = 100

# Introduzca el número o intervalo de horas de incubación
t = 0:24

# Introduzca el tiempo de generación (es decir, el tiempo de duplicación
# de la especie, si el cultivo es puro) en horas
g = (18/60)

# Aplicando este modelo
N_de_bacterias = N_de_este_modelo(N0, t, g)

# Los valores para este intervalo de tiempo son
print(N_de_bacterias, 3)

# Graficándo estos resultados

plot(x=t, y=N_de_bacterias,
     type = "l",
     xlab="Tiempo de incubación (horas)",
     ylab = "Cantidad de bacterias (log)",
     xaxp = c(0, 24, 6),
     log = "y",
     col = "red3",
     lwd=2
)

# Edite las lineas grises
abline(v=seq(0, 24, by=2), col="lightgrey", lty="dashed", lwd=2,
       h=c(1e+2, 1e+8, 1e+14, 1e+20, 1e+26))

# Edite la leyenda
legend("bottomright",legend=expression("Crecimiento de"~italic("E. coli")), col="red3", bty="l", lwd=2)
