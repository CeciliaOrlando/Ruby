puts "How old are you?" # puts imprime el mensaje "How old are you?" en la consola.
age= gets.chomp.to_i # age es un número entero que se obtiene al llamar al método to_i en la cadena de texto introducida por el usuario en la consola.

if age >= 18 #si age es mayor o igual a 18 se imprime el mensaje "You can vote" en la consola.
  puts "You can vote"
else #si age es menor que 18 se imprime el mensaje "You can't vote" en la consola.
  puts "You can't vote"
end
