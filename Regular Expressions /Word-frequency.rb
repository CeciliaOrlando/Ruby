def load_stop_words(stop_words_filename) # es un metodo que recibe un argumento stop_words_filename y retorna un array de strings que son las palabras del archivo stop_words_filename sin el salto de linea al final de cada palabra
  File.open(stop_words_filename, "r").map do |line| # abre el archivo stop_words_filename en modo lectura y por cada linea del archivo lo guarda en la variable line y retorna un array de strings que son las palabras del archivo stop_words_filename sin el salto de linea al final de cada palabra
    line.chomp # quita el salto de linea al final de la palabra y retorna la palabra sin el salto de linea al final
  end
end

def most_common_words(filename, stop_words_filename, number_of_word) # es un metodo que recibe tres argumentos filename, stop_words_filename y number_of_word y retorna un hash con las palabras mas comunes del archivo filename sin las palabras del archivo stop_words_filename y con un maximo de number_of_word palabras
  counter = Hash.new(0)   # crea un hash vacio con valores por defecto 0 y lo guarda en la variable counter

  stop_words = load_stop_words(stop_words_filename) # llama al metodo load_stop_words con el argumento stop_words_filename y guarda el retorno en la variable stop_words

  File.open(filename, "r").each_line do |line| # abre el archivo filename en modo lectura y por cada linea del archivo lo guarda en la variable line y ejecuta el bloque do end con la variable line como argumento del bloque
    line.chomp.downcase.split(/\W+/).each do |word| # quita el salto de linea al final de la linea, convierte la linea a minusculas y la divide en palabras y por cada palabra ejecuta el bloque do end con la variable word como argumento del bloque y la guarda en la variable word sin el salto de linea al final de la palabra y en minusculas y ejecuta el bloque do end con la variable word como argumento del bloque y la guarda en la variable word sin el salto de linea al final de la palabra y en minusculas y ejecuta el bloque do end con la variable word como argumento del bloque y la guarda en la variable word sin el salto de linea al final de la palabra y en minusculas y ejecuta el bloque do end con la variable word como argumento del bloque y la guarda en la variable word sin el salto de linea al final de la palabra y en minusculas y ejecuta el bloque do end con la variable word como argumento del bloque y la guarda en la variable word sin el salto de linea al final de la palabra y en minusculas
      counter[word] += 1 unless stop_words.include? word  # incrementa el valor de la palabra en el hash counter en 1 si la palabra no esta en el array stop_words y ejecuta el bloque do end con la variable word como argumento del bloque y la guarda en la variable word sin el salto de linea al final de la palabra y en minusculas
    end
  end

  counter.sort_by { |_, v| -v }[0..(number_of_word - 1)].to_h # ordena el hash counter por los valores de mayor a menor y retorna un hash con las palabras mas comunes del archivo filename sin las palabras del archivo stop_words_filename y con un maximo de number_of_word palabras y lo guarda en la variable counter y retorna un hash con las palabras mas comunes del archivo filename sin las palabras del archivo stop_words_filename y con un maximo de number_of_word palabras
end
