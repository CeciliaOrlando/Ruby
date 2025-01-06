def compute_name(first_name, middle_name, last_name) # la variable "first_name" es un string, la variable "middle_name" es un string y la variable "last_name" es un string que se pasan como argumentos a la función compute_name.
  "#{first_name} #{middle_name} #{last_name}" #La función compute_name devuelve un string que contiene el nombre completo de la persona que se obtiene al concatenar los strings "first_name", "middle_name" y "last_name" separados por un espacio.


#interface.rb
require_relative "compute_name" # require_relative es una instrucción de Ruby que carga un archivo de código Ruby en el archivo actual. En este caso, require_relative "compute_name" carga el archivo compute_name.rb en el archivo actual. Esto significa que todas las definiciones de métodos y clases en compute_name.rb están disponibles en el archivo actual.

def ask_and_get(param)  #ask_and_get es un método que toma un argumento param que es un string. El método ask_and_get imprime el mensaje "Please enter your #{param}" en la consola y lee lo que el usuario ha introducido en la consola y lo devuelve.
  puts "Please enter your #{param}" #puts imprime el mensaje "Please enter your #{param}" en la consola.
  gets.chomp #lee lo que el usuario ha introducido en la consola y lo devuelve.
end

def name_from_terminal #name_from_terminal es un método que no toma argumentos. El método name_from_terminal llama al método ask_and_get con los argumentos "first name", "middle name" y "last name" y al método compute_name con los argumentos devueltos por ask_and_get y devuelve el resultado de compute_name.
  first_name = ask_and_get("first name")  #first_name es un string que se obtiene al llamar al método ask_and_get con el argumento "first name".
  second_name = ask_and_get("middle name") #second_name es un string que se obtiene al llamar al método ask_and_get con el argumento "middle name".
  last_name = ask_and_get("last name") #last_name es un string que se obtiene al llamar al método ask_and_get con el argumento "last name".

  compute_name(first_name, second_name, last_name) #se llama al método compute_name con los argumentos first_name, second_name y last_name y se devuelve el resultado.
end

puts "Hello #{name_from_terminal}!" #puts imprime el mensaje "Hello #{name_from_terminal}!" en la consola. #{name_from_terminal} es el resultado de llamar al método name_from_terminal.
