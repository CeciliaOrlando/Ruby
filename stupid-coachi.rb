# Este código es como un robot entrenador que te responde a lo que dices, ¡y su trabajo es motivarte a que vayas a trabajar o te pongas en acción!


STOP_MESSAGE = "I am going to work right now!"

def coach_answer(your_message)
  if your_message == STOP_MESSAGE || your_message == STOP_MESSAGE.upcase
    ""
  elsif your_message.end_with?("?")
    "Silly question, get dressed and go to work!"
  else
    "I don't care, get dressed and go to work!"
  end
end

def coach_answer_enhanced(your_message)
  answer = coach_answer(your_message)
  if answer == ""
    ""
  elsif your_message.upcase == your_message
    "I can feel your motivation! #{answer}"
  else
    answer
  end
end


#interface
require_relative "coach_answer"

puts "Hello, I am your coach, what did you want to tell me?"

answer = nil

while answer != ""
  print "> "
  message = gets.chomp
  answer = coach_answer_enhanced(message)
  puts answer
end

puts "Great, see ya!"
