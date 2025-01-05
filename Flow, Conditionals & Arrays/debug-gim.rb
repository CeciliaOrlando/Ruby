def bugged_concatenate(array) #array es un array de strings y números enteros
  concatenated_string = "" #concatenated_string es una cadena de texto vacía
  array.each do |element| #para cada elemento en la array de strings y números enteros array se ejecuta el bloque de código que sigue a continuación del do y se repite el bucle hasta que se hayan procesado todos los elementos de la array el ement es el elemento actual de la array de strings y números enteros array que se está procesando en la iteración actual
    concatenated_string = concatenated_string + element.to_s #concatenated_string es igual a concatenated_string más el elemento convertido a cadena de texto con el método to_s que convierte el elemento a una cadena de texto string y se repite el bucle hasta que se hayan procesado todos los elementos de la array
  end
  return concatenated_string.upcase #devuelve la cadena de texto concatenated_string en mayúsculas
end

def build_1984_title #build_1984_title es un método que no toma argumentos
  bugged_concatenate([1, "9", 84, " ", "George Orwell"]) #llama al método bugged_concatenate con la array de strings y números enteros [1, "9", 84, " ", "George Orwell"] como argumento y devuelve el resultado de la llamada a bugged_concatenate en mayúsculas en la consola
end
