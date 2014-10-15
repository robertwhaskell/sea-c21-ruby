# 5 points
#
# Write a program that displays the lyrics to the beloved nursery rhyme
# "3 Bottles of Beer on the Wall".
#
# Here's how the program must work:
#
#   $ ruby exercise1.rb
#   3 bottles of beer on the wall, 3 bottles of beer!
#   Take one down, pass it around, 2 bottles of beer on the wall!
#   2 bottles of beer on the wall, 2 bottles of beer!
#   Take one down, pass it around, 1 bottle of beer on the wall!
#   1 bottle of beer on the wall, 1 bottle of beer!
#   Take one down, pass it around, no more bottles of beer on the wall!
#   No more bottles of beer on the wall, no more bottles of beer!
#   Go to the store and buy some more, 3 bottles of beer on the wall!
#
# TIP: I expect you to use a loop.

bottles = 3
word = 'bottles'
until bottles.is_a? String
  puts "#{bottles} #{word} of beer on the wall, #{bottles} #{word} of beer!"
  bottles -= 1
  if bottles == 1
    word = 'bottle'
  else
    word = 'bottles'
  end
  bottles = 'no more' if bottles == 0
  puts "Take one down, pass it around, #{bottles} #{word} of beer on the wall!"
end
puts 'No more bottles of beer on the wall, no more bottles of beer!'
puts 'Go to the store and buy some more, 3 bottles of beer on the wall!'
