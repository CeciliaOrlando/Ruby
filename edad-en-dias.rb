# require "date" asegura que tengas acceso a funcionalidades que permiten manipular fechas, como crear objetos de tipo Date y realizar operaciones con ellos.

def age_in_days(day, month, year)
  # TODO: return the age expressed in days given the day, month, and year of birth y lo convierte en un entero.
  return (Date.today - Date.new(year, month, day)).to_i
end


#Interface
# This "require_relative" line loads your own "age_in_days.rb" file. Notice the
# "_relative" suffix: the given path is relative to the location of the file
# from which "require_relative" is called
require_relative "age_in_days"

### Talking with the user ###
puts "What's your year of birth?"
birth_year = gets.chomp.to_i

puts "What's your month of birth?"
birth_month = gets.chomp.to_i

puts "What's your day of birth?"
birth_day = gets.chomp.to_i
#############################

puts "Computing your age (with the most complicated algorithms)........"

calculated_age = age_in_days(birth_day, birth_month, birth_year)

# Finally, print user's age in days:
puts "You are #{calculated_age} days old... phew!"

