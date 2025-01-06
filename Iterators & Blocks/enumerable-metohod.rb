def sum_odd_indexed(array) # es una funcion que se llama sum_odd_indexed y recibe un array de numeros enteros
  sum = 0 # se inicializa una variable sum en 0
  array.each_with_index { |num, index| sum += num if index.odd? } # se itera sobre el array con each_with_index, se recibe el numero y el indice, si el indice es impar se suma el numero a la variable sum
  sum # se retorna la variable
end

def even_numbers(array) # es una funcion que se llama even_numbers y recibe un array de numeros enteros
  array.select { |num| num.even? } # se retorna un array con los numeros pares del array original usando select y el metodo even? de la clase Integer que devuelve true si el numero es par y false si no lo es
end

def short_words(array, max_length) # es una funcion que se llama short_words y recibe un array de strings y un numero entero max_length
  array.reject { |word| word.size > max_length } # se retorna un array con las palabras que tienen una longitud menor o igual a max_length usando reject y el metodo size de la clase String que devuelve la longitud de la palabra en caracteres
end

def first_under(array, limit) # es una funcion que se llama first_under y recibe un array de numeros enteros y un numero entero limit
  array.find { |num| num < limit } # se retorna el primer numero del array que sea menor a limit usando find y el operador menor que (<) de la clase Integer que devuelve true si el numero es menor a limit y false si no lo es
end

def add_bang(array) # es una funcion que se llama add_bang y recibe un array de strings
  array.map { |word| "#{word}!" } # se retorna un array con las palabras del array original concatenadas con un signo de exclamacion al final usando map y el operador de concatenacion de strings (+) de la clase String que concatena dos strings y retorna un nuevo string
end

def concatenate(array) # es una funcion que se llama concatenate y recibe un array de strings
  array.reduce("") { |a, e| a + e } # se retorna un string con todas las palabras del array concatenadas usando reduce y el operador de concatenacion de strings (+) de la clase String que concatena dos strings y retorna un nuevo string
end

def sorted_pairs(array) # es una funcion que se llama sorted_pairs y recibe un array de numeros enteros
  result = [] # se inicializa un array vacio llamado result que se usara para almacenar los pares de numeros ordenados
  array.each_slice(2) do |slice| # se itera sobre el array en slices de dos elementos usando each_slice y el metodo each_slice de la clase Enumerable que devuelve un enumerator que itera sobre el array en slices de dos elementos y se recibe el slice en la variable slice en cada iteracion del bloque do end que sigue a each_slice
    result << slice.sort # se agrega al array result el slice ordenado usando el metodo sort de la clase Array que ordena los elementos del array y retorna un nuevo array ordenado con los elementos del array original ordenados de menor a mayor o de acuerdo a un bloque que se le pase como argumento al metodo sort si se le pasa un bloque como argumento al metodo sort y se retorna el array result con los pares de numeros ordenados al final de la funcion sorted_pairs
  end
  result # se retorna el array result con los pares de numeros ordenados al final de la funcion sorted_pairs
end
