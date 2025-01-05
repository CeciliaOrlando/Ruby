def horse_racing_format!(race_array) # es una función que toma un argument de una array de strings y modifica la array de strings en su lugar sin devolver una nueva array de strings. La función horse_racing_format! convierte la array de strings en un array de strings con el formato "1-#{horse}!" donde 1 es el número de caballos en la carrera y horse es el nombre del caballo en la posición correspondiente en la array de strings. La función horse_racing_format! modifica la array de strings en su lugar y no devuelve una nueva array de strings.
  number_of_horses = race_array.length #number_of_horses es el número de elementos en la array de strings race_array que se obtiene al llamar al método length en la array de strings race_array.

  race_array.reverse! #invierte la array de strings race_array. El método reverse! modifica la array de strings en su lugar y no devuelve una nueva array de strings. La array de strings race_array ahora contiene los elementos de la array de strings original en orden inverso.

  race_array.map! do |horse| #para cada elemento en la array de strings
    "#{number_of_horses - race_array.index(horse)}-#{horse}!" #devuelve el elemento de la array de strings con el formato "1-#{horse}!" donde 1 es el número de caballos en la carrera y horse es el nombre del caballo en la posición correspondiente en la array de strings.  
  end
end
