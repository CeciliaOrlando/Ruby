# NOTE: Read about BasicObject#object_id
# https://ruby-doc.org/core-2.7.5/BasicObject.html#method-i-__id__

# You can try launching `irb` to test some values
# irb> :foo.object_id
# irb> :foo.object_id
# irb> "foo".object_id
# irb> "foo".object_id

def are_identical_symbols_same_objects? # esto es una función que retorna un booleano que indica si dos símbolos con el mismo valor son el mismo objeto o no.
  true
end

def are_identical_strings_same_objects? # esto es una función que retorna un booleano que indica si dos strings con el mismo valor son el mismo objeto o no.
  false
end

# Remember, RTFM! Your doc is your friend
# - https://ruby-doc.org/core-2.7.5/String.html
# - https://ruby-doc.org/core-2.7.5/Symbol.html

def convert_string_to_symbol(a_string) # esto es una función que recibe un string y retorna un símbolo con el mismo valor que el string.
  a_string.to_sym # se retorna el string convertido a símbolo.
end

def convert_symbol_to_string(a_symbol) # esto es una función que recibe un símbolo y retorna un string con el mismo valor que el símbolo.
  a_symbol.to_s # se retorna el símbolo convertido a string.
end

def me # esto es un hash que contiene el nombre y la edad de una persona.
  {
    name: "Boris",
    age: 26
  }
end

def fruits # esto es un array que contiene los nombres de tres frutas.
  %w[apple banana orange]
end
