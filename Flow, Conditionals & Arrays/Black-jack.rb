
#wagon_sort.rb
def wagon_sort(students) #students es una array de strings
  students.sort_by {|student| student.downcase } #sort_by ordena el array de strings en orden alfabético y lo devuelve en una nueva array de strings ordenada alfabéticamente sin modificar la original students array de strings original que se pasa como argumento a la función wagon_sort en la llamada. El bloque {|student| student.downcase } es un bloque de cálculo que toma un argumento student y lo convierte en su versión en minúsculas. El bloque se pasa a sort_by para que ordene los elementos de la array de strings en minúsculas.
end



#interface

require_relative "wagon_sort" # require_relative es una instrucción de Ruby que carga un archivo de código Ruby en el archivo actual. En este caso, require_relative "wagon_sort" carga el archivo wagon_sort.rb en el archivo actual. Esto significa que todas las definiciones de métodos y clases en wagon_sort.rb están disponibles en el archivo actual.

puts "Welcome to Le Wagon! Please enter the names of the students" #puts imprime el mensaje "Welcome to Le Wagon! Please enter the names of the students" en la consola.
students  = [] #students es una array vacía
name      = nil #name es nil (nulo) porque aun no se le ha asignado ningun valor

while name != "" #mientras name no sea igual a "" (cadena vacía) se ejecuta el bloque de código que sigue a continuación del while y se repite el bucle hasta que name sea igual a "" (cadena vacía)
  puts students.empty? ? "Type a student name:" : "Type another student name (or press enter to finish):" #puts imprime el mensaje "Type a student name:" si students es una array vacía y "Type another student name (or press enter to finish):" si students no es una array vacía
  name = gets.chomp #que lee lo que el usuario ha introducido en la consola y lo guarda en la variable name

  students << name if name != ""#si name no es igual a "" (cadena vacía) se agrega el valor de name a la array students con el operador << (shovel operator) que añade el valor de name al final de la array students y se repite el bucle hasta que name sea igual a "" (cadena vacía)
end

sorted_students = wagon_sort(students) #sorted_students es una array de strings ordenada alfabéticamente que se obtiene al llamar a la función wagon_sort con el argumento students que es la array de strings introducida por el usuario en la consola.
num_students = sorted_students.size #num_students es el número de elementos en la array de strings sorted_students que se obtiene al llamar al método size en la array de strings sorted_students.

def pluralize(number, word) #pluralize es un método que toma dos argumentos: number y word. number es un número entero y word es una cadena de texto. El método pluralize devuelve la cadena de texto word en plural si number es mayor que 1 y en singular si number es igual a 1.
  if number == 1 #si number es igual a 1 se devuelve la cadena de texto word en singular
    word #devuelve la cadena de texto word en singular
  else #si number no es igual a 1 se devuelve la cadena de texto word en plural
    "#{word}s" #devuelve la cadena de texto word en plural
  end #fin del bloque if-else-
end

puts "Congratulations! Your Wagon has #{num_students} #{pluralize(num_students, 'student')}:" #puts imprime el mensaje "Congratulations! Your Wagon has #{num_students} #{pluralize(num_students, 'student')}:" en la consola. #{num_students} es el número de elementos en la array de strings sorted_students y #{pluralize(num_students, 'student')} es el número de elementos en la array de strings sorted_students en singular o plural dependiendo del número de elementos en la array de strings sorted_students.
if sorted_students.size >= 2 #si la longitud de la array de strings sorted_students es mayor o igual a 2 se imprime el mensaje "Congratulations! Your Wagon has #{num_students} #{pluralize(num_students, 'student')}:" en la consola.
  puts "#{sorted_students[0..-2].join(', ')} and #{sorted_students.last}" #puts imprime el mensaje "#{sorted_students[0..-2].join(', ')} and #{sorted_students.last}" en la consola. sorted_students[0..-2] es una array de strings que contiene todos los elementos de la array de strings sorted_students excepto el último elemento. sorted_students[0..-2].join(', ') es una cadena de texto que contiene todos los elementos de la array de strings sorted_students excepto el último elemento separados por una coma y un espacio. sorted_students.last es el último elemento de la array de strings sorted_students.
else #si la longitud de la array de strings sorted_students es menor que 2 se imprime el mensaje "Congratulations! Your Wagon has #{num_students} #{pluralize(num_students, 'student')}:" en la consola.
  puts sorted_students.first #puts imprime el primer elemento de la array de strings sorted_students en la consola.   
end
