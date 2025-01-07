def refrain(lyrics, number_of_times = 1, vibrato = 0, strong = false) # esto es una función que recibe una letra, un número de veces, un vibrato y un booleano y retorna la letra repetida el número de veces indicado con el vibrato indicado y en mayúscula si el booleano es verdadero.
  song_refrain = [] # se inicializa un array vacío.
  lyrics += lyrics[lyrics.size - 1] * vibrato # se le agrega al final de la letra el último carácter de la letra tantas veces como indique el vibrato.
  lyrics.upcase! if strong # si el booleano strong es verdadero, se convierte la letra en mayúscula.

  number_of_times.times do # se itera number_of_times veces. En cada iteración, se guarda la letra en el array song_refrain.
    song_refrain << lyrics # se guarda la letra en el array song_refrain.
  end

  song_refrain.join(" ") # se retorna el array song_refrain convertido en un string con los elementos separados por un espacio.
end

def better_refrain(lyrics, options = { vibrato: 0, number_of_times: 1, strong: false }) # esto es una función que recibe una letra y un hash con opciones por defecto y retorna la letra repetida el número de veces indicado con el vibrato indic ado y en mayúscula si el booleano es verdadero. Si no se pasa un hash con opciones, se usan las opciones por defecto.
  refrain = [] # se inicializa un array vacío.
  lyrics += lyrics[lyrics.size - 1] * options[:vibrato] # se le agrega al final de la letra el último carácter de la letra tantas veces como indique el vibrato.
  lyrics.upcase! if options[:strong] # si el booleano strong es verdadero, se convierte la letra en mayúscula.

  options[:number_of_times].times do # se itera options[:number_of_times] veces. En cada iteración, se guarda la letra en el array refrain.
    refrain << lyrics # se guarda la letra en el array refrain.
  end

  refrain.join(" ") # se retorna el array refrain convertido en un string con los elementos separados por un espacio.
end
