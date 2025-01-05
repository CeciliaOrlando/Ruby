def get_rid_of_surrounding_whitespaces(a_string) #strip es un método de las cadenas de texto en Ruby que elimina los espacios al principio y al final de la cadena. Si hay espacios, tabuladores u otros caracteres de espacio en el inicio o el final de la cadena, los elimina.
  a_string.strip
end

def belongs_to?(a_string, a_word) #include? es un método de las cadenas de texto en Ruby. Devuelve true si el substring (parte de la cadena) está presente en la cadena principal, y false si no lo está.
  a_string.include?(a_word)
end

def replace(initial_string, old_letter, new_letter)
  initial_string.gsub(old_letter, new_letter)
end

def exactly_divide(an_integer, a_divider) #fdiv es un método de Ruby que realiza una división de punto flotante, asegurando que el resultado sea un número decimal, incluso si los operandos son enteros. example: exactly_divide(13, 4) => 3.25
  an_integer.fdiv(a_divider)
end

def divisible_by_two?(an_integer) #even? es un método de Ruby que devuelve true si el número es par, y false si es impar.
  an_integer.even?
end

def random_subset(an_array, sample_size) #sample es un método que selecciona un número aleatorio de elementos de un arreglo. Si se le pasa un número como argumento, devolverá un arreglo con esa cantidad de elementos seleccionados aleatoriamente. example: random_subset(("a".."z").to_a, 4) => ["u", "q", "l", "t"]
  an_array.sample(sample_size)
end

def randomize(an_array) #shuffle es un método de Ruby que reordena aleatoriamente los elementos de un arreglo.
  an_array.shuffle
end

def ascending_order(an_array) #sort es un método que ordena los elementos de un arreglo en orden ascendente. Para cadenas, los ordena alfabéticamente.
  an_array.sort
end
