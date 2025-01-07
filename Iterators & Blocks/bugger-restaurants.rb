def burger(patty, sauce, topping) # es una funcion que se llama burger y recibe tres strings patty, sauce y topping
    main = (block_given? ? yield(patty) : patty) # se inicializa una variable main con el resultado de llamar al bloque que se le pase como argumento a la funcion burger con el string patty como argumento si se le pasa un bloque como argumento a la funcion burger o con el string patty si no se le pasa un bloque como argumento a la funcion burger
  ["bread", main, sauce, topping, "bread"] # se retorna un array con los strings "bread", main, sauce, topping y "bread" en ese orden al final de la funcion burger
end

#interface.rb

require_relative "burger_restaurant"  # el require_relative es un metodo que carga un archivo de ruby que se encuentra en el mismo directorio que el archivo que lo llama y se le pasa como argumento el nombre del archivo sin la extension .rb

puts "💬 I'd like a burger with a bigger portion of fish, plus mayo and salad please."
# TODO: to upgrade a portion to a bigger one, transform the fish to uppercase
bigger_burger = burger("fish", "mayo", "salad") do |patty| # se llama a la funcion burger con los strings "fish", "mayo" y "salad" como argumentos y se le pasa un bloque do end con un argumento patty que se le pasa al bloque y se llama al metodo upcase de la clase String que convierte el string a mayusculas y se retorna el string patty convertido a mayusculas al final del bloque do end
  patty.upcase
end


puts "💬 I'd like a juicy steak with barbecue sauce and cheddar please."
# TODO: to make a juicy steak, replace any vowel by the sign "~"
juicy_burger = burger("steak", "barbecue", "cheddar") do |patty| # se llama a la funcion burger con los strings "steak", "barbecue" y "cheddar" como argumentos y se le pasa un bloque do end con un argumento patty que se le pasa al bloque y se llama al metodo tr de la clase String que reemplaza las vocales del string por el signo "~" y se retorna el string patty con las vocales reemplazadas por el signo "~" al final del bloque do end
  patty.tr("aeiou", "~")
end


puts "💬 I'd like a spicy chicken with ketchup and cheddar please."
# TODO: to make a spicy portion, add the sign "*" before and after the string
spicy_burger = burger("chicken", "ketchup", "cheddar") do |patty| # se llama a la funcion burger con los strings "chicken", "ketchup" y "cheddar" como argumentos y se le pasa un bloque do end con un argumento patty que se le pasa al bloque y se retorna el string patty con el signo "*" antes y despues del string al final del bloque do end
  "*#{patty}*"
end
