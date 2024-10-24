# Anualidades
## Ejemplos de Anualidades Vencidas

### Cálculo del valor futuro
Un inversionista realiza un pago mensual de $1,200 al final de cada mes durante 5 años en una anualidad vencida que paga una tasa de interés del 6% anual, compuesta mensualmente. ¿Cuál es el valor futuro de esta inversión?
$A$=1200
$t$=60
$i$=0.06
$r$=0.005
```{r}
# Creamos objetos con valores de entrada:
Anualidad=1200
tasa=0.005
tiempo=60

# Calculamos el valor futuro
ValorFinalAqui=ValorFinal(A=Anualidad,r=tasa,t=tiempo)

# Imprimo el resultado:
ValorFinalAqui
```

### Cálculo de Anualidad
Una persona desea tener $150,000 dentro de 8 años, realizando pagos quincenales al final de cada quincena a una tasa de interés del 5% anual, compuesta quincenalmente. ¿Cuánto debe ser el monto de cada pago quincenal si la anualidad es vencida?
$VF$=150000
$t$=192
$i$=0.05
$r$=0.002083
```{r}
# Creamos objetos con valores de entrada:
ValorFinal=150000
tasa=0.002083
tiempo=192

# Calculamos el valor futuro
AnualidadAqui=Anualidad(VF=ValorFinal,r=tasa,t=tiempo)

# Imprimo el resultado:
AnualidadAqui
```
### Cálculo del número de pagos o plazo
Un inversionista quiere saber cuántos meses necesitará invertir $800 mensuales a una tasa de 8% anual, compuesta mensualmente, para alcanzar un valor futuro de $100,000. 
$VF$=100000
$A$=800
$i$=0.08
$r$=0.006667
```{r}
# Creamos objetos con valores de entrada:
ValorFinal=100000
Anualidad=800
tasa=0.006667

# Calculamos el tiempo
TiempoAqui=Tiempo(A=Anualidad,VF=ValorFinal,r=tasa)

# Imprimo el resultado:
TiempoAqui
```
### Cálculo de la tasa del periodo
Un inversionista desea saber cuál es la tasa de interés mensual a la que debe invertir $1,500 al final de cada mes, durante 10 años, para obtener un valor futuro de $250,000. 
$VF$=250000
$A$=1500
$t$=120
```{r}
# Creamos objetos con valores de entrada:
ValorFinal=250000
Anualidad=1500
tiempo=120

# Calculamos la tasa usando bisección o Newton-Raphson
TasaAqui=BiseccionTasaVF(VF=ValorFinal,A=Anualidad,t=tiempo)

# Imprimo el resultado:
TasaAqui
```
## Ejemplo de anualidades anticipadas
### Cálculo del valor actual
Un inversionista quiere saber cuál es el valor actual de una serie de pagos trimestrales de $5,000, durante 15 años, a una tasa de 6% anual compuesta trimestralmente. 
$A$=5000
$t$=60
$i$=0.06
```{r}
# Creamos objetos con valores de entrada:
Anualidad=5000
tasa=0.015
tiempo=60
# Calculamos el valor actual
ValorActualAqui=ValorActual(A=Anualidad,r=tasa,t=tiempo)

# Imprimo el resultado:
ValorActualAqui

$r$=0.015
```


```{r}

```
