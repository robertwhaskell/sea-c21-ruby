# 5 points
#
# Write a program that asks for a person's first name, then middle name,
# then last name, and then greets the person using their full name.
#
# Here's how the program must work:
#
#   $ ruby exercise4.rb

puts "What's your first name?"
first = gets.chomp
puts "What's your middle name?"
second = gets.chomp
puts "What's your last name?"
third = gets.chomp
puts "Nice to meet you, #{first} #{second} #{third}."
