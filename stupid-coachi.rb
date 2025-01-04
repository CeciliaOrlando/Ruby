# Este código es como un robot entrenador que te responde a lo que dices, ¡y su trabajo es motivarte a que vayas a trabajar o te pongas en acción!

STOP_MESSAGE = "I am going to work right now!"  #Esto es como un botón de paro. Si escribes esto, el robot dejará de hablar y se detendrá. ¡Es como decir "¡ya basta, me voy!"! es una CONSTANTE, por eso está en mayúsculas.

def coach_answer(your_message) # Este método recibe un mensaje y devuelve una respuesta.
  if your_message == STOP_MESSAGE || your_message == STOP_MESSAGE.upcase #Si el mensaje es "STOP_MESSAGE", el robot no dirá nada.
    ""
  elsif your_message.end_with?("?")
    "Silly question, get dressed and go to work!" #Si el mensaje termina con un signo de interrogación, el robot te dirá "Silly question, get dressed and go to work!"
  else
    "I don't care, get dressed and go to work!" #En cualquier otro caso, el robot te dirá "I don't care, get dressed and go to work!".
  end
end

def coach_answer_enhanced(your_message) # Este método es una versión mejorada del anterior.
  answer = coach_answer(your_message)
  if answer == "" # Si el mensaje está vacío, el robot no dirá nada.
    ""
  elsif your_message.upcase == your_message #Si el mensaje es en mayúsculas, el robot te dirá "I can feel your motivation! #{answer}".
    "I can feel your motivation! #{answer}"
  else
    answer #En cualquier otro caso, el robot te dirá lo mismo que en el método anterior.
  end
end


#interface
require_relative "coach_answer" #Este "require_relative" carga tu propio archivo "coach_answer.rb". Nota el sufijo "_relative": la ruta dada es relativa a la ubicación del archivo desde el cual se llama a "require_relative".

puts "Hello, I am your coach, what did you want to tell me?" #Este mensaje se mostrará cuando inicies el programa.

answer = nil #Inicializamos la variable "answer" con nil. Esto es como decir que la respuesta es vacía.

while answer != "" #Este bucle se ejecutará mientras la respuesta no sea vacía. Si escribes "STOP_MESSAGE", el robot dejará de hablar y se detendrá.

  print "> " #Este signo de mayor que (>) es como si el robot estuviera esperando a que escribas algo.
  message = gets.chomp #El robot lee tu mensaje y lo guarda en la variable "message".
  answer = coach_answer_enhanced(message) #El robot llama al método "coach_answer_enhanced" para obtener una respuesta.
  puts answer #El robot te responde con la respuesta obtenida.
end

puts "Great, see ya!" #Cuando el robot se detiene, te dirá "Great, see ya!".
