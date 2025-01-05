def sum_with_for(min, max) # funcion que recibe dos parametros  y retorna la suma de los numeros entre ellos incluyendo los extremos min y max
  return -1 if min > max # es un condicional que retorna -1 si min es mayor que max

  sum = 0 # inicializo la variable sum en 0
  for i in min..max # recorro el rango de min a max. es un ciclo que se repite min-max veces y se incrementa en 1 en cada iteracion de i y los .. incluye el valor de max en el rango
    sum += i # sumo el valor de i a sum en cada iteracion
  end

  return sum # retorno el valor de sum
end

def sum_with_while(min, max) # funcion que recibe dos parametros  y retorna la suma de los numeros entre ellos incluyendo los extremos min y max
  return -1 if min > max # es un condicional que retorna -1 si min es mayor que max 

  sum = 0 # inicializo la variable sum en 0
  i = min # inicializo la variable i en min y la incremento en 1 en cada iteracion
  while i <= max # mientras i sea menor o igual a max se ejecuta el ciclo
    sum += i # sumo el valor de i a sum en cada iteracion de i
    i += 1 # incremento i en 1
  end

  return sum # retorno el valor de sum
end
