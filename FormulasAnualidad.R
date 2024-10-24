 
ValorFinal=function(A,r,t){
  
  resultado1= A*(((1+r)^t-1)/r)
  
  return(resultado1)
}

Anualidad=function(VF,r,t){
  
  resultado2=VF/(((1+r)^t-1)/r)
  
  return(resultado2)
}

Tiempo=function(A,VF,r){
  
  resultado3=log(((VF*r)/A)+1)/log(1+r)
  
  return(resultado3)
}

BiseccionTasaVF = function(VF, A, t, tol=1e-6, max_iter=1000) {
  a = 0  # Límite inferior de la tasa
  b = 1  # Límite superior de la tasa
  
  for (i in 1:max_iter) {
    r = (a + b) / 2  # Punto medio
    f_r = A * (((1 + r)^t - 1) / r) - VF  # Evaluar la función en r
    
    if (abs(f_r) < tol) {
      return(r)  # Si la solución está dentro de la tolerancia, devolver r
    }
    
    # Decidir en qué intervalo continuar
    if (f_r > 0) {
      b = r
    } else {
      a = r
    }
  }
  stop("No se encontró una solución en el número máximo de iteraciones.")
}

ValorActual=function(A,r,t){
  
  resultado5 = A * ((1 - (1 + r)^(-t)) / r)
  
  return(resultado5)
}

AnualidadVA=function(VA,r,t){
  
  resultado6 = VA * (r / (1 - (1 + r)^(-t)))
  
  return(resultado6)
}

TiempoVA=function(VA,A,r){
  
  resultado7 = log(A / (A - VA * r)) / log(1 + r)
  
  return(resultado7)
}

NewtonRaphsonTasaVA = function(VA, A, t, tol=1e-6, max_iter=1000) {
  r = 0.1 
  
  f_r = function(r) {
    return(A * ((1 - (1 + r)^(-t)) / r) - VA)
  }
  
  f_r_prime = function(r) {
    return(A * ((t * (1 + r)^(-t - 1)) / r - (1 - (1 + r)^(-t)) / (r^2)))
  }
  
  for (i in 1:max_iter) {
    r_next = r - f_r(r) / f_r_prime(r)  # Newton-Raphson formula
    
    if (abs(r_next - r) < tol) {
      return(r_next)  # Convergencia alcanzada
    }
    
    r = r_next  # Actualizaré el valor de r
  }
  
  stop("No se encontró una solución en el número máximo de iteraciones.")
}
