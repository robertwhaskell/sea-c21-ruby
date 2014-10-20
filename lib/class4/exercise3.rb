#!/usr/bin/env ruby
#
# 5 points
#
# Write a program that asks whether or not you like tacos:
#
# If you reply with 'y', then we're friends:
#
#   $ ruby exercise3.rb
#   Do you like eating tacos? (y or n)
#   y
#   We can be friends!
#
# If you reply with 'n', then we're enemies:
#
#   $ ruby exercise3.rb
#   Do you like eating tacos? (y or n)
#   n
#   Get out of my sight!
#
# And if you reply with **anything** else, you have to try again:
#
#   $ ruby exercise3.rb
#   Do you like eating tacos? (y or n)
#   maybe
#   Try again
#   Do you like eating tacos? (y or n)
#   y
#   We can be friends!
#
# TIP #1: You only need to change the `ask` method.
#
# TIP #2: Use `return` to preemptively exit the `ask` method.

def ask(question)
  loop do
    puts question
    reply = gets.chomp
<<<<<<< HEAD
    return 'We can be friends!' if reply.downcase == 'y'
    return 'Get out of my sight!' if reply.downcase == 'n'
      puts "Try again"
=======
    return 'We can be friends!' if reply == 'y'
    return 'Get out of my sight!' if reply == 'n'
    puts 'Try again'
  end
>>>>>>> 7b57f9e1e562839b30b088f1be229932f4bc7df4
end

puts ask('Do you like eating tacos? (y or n)')
