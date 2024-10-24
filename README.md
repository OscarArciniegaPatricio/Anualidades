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
