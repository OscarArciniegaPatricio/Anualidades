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
