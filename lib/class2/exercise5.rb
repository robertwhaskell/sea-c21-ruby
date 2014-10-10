# 5 points
#
# Write a program that asks for a person's favorite number. Have your program
# add 1 to the number and then suggest the result as a better favorite number.
#
# Here's how the program must work:
#
#   $ ruby exercise5.rb
#   What's your favorite number?
#   42
#   That's ok, I guess, but isn't 43 just a bit better?

puts "What's your favorite number?"
number = gets.chomp
number = number.to_i + 1
puts "That's ok, I guess, but isn't #{number} just a bit better?"
