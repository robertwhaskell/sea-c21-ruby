#!/usr/bin/env ruby
#
# 5 points
#
# Eventually, someone thought it would be terribly clever if putting a smaller
# number before a larger one meant you had to subtract the smaller one. As a
# result of this development, you must now suffer.
#
# Rewrite your previous program so that, when passed any integer between 1 and
# 1000, it returns a string containing the proper modern Roman numeral. In other
# words:
#
#   $ ruby exercise5.rb 9
#   IX
#
# TIP #1: Here's a mapping of Roman to Arabic numerals:
#
#   1000 = M
#    900 = CM
#    500 = D
#    400 = CD
#    100 = C
#     90 = XC
#     50 = L
#     40 = XL
#     10 = X
#      9 = IX
#      5 = V
#      4 = IV
#      1 = I
#
# TIP #3: You only need to change the `modern_roman_numeral` method.

# rubocop:disable MethodLength

def modern_roman_numeral(num)
  numerals = ''
  (num / 1000).times{numerals += 'M'}
  num %= 1000
  if(num / 100 == 9)
    numerals += 'CM'
    num %= 900
  elsif (num / 100 == 4)
    numerals += 'CD'
    num %= 400
    else
    (num / 500).times{numerals += 'D'}
    num %= 500
    (num / 100).times{numerals += 'C'}
    num %= 100
  end
  if (num / 10 == 90)
    numerals += 'XC'
    num %= 90
  elsif (num / 10 == 40)
    numerals += 'XL'
    num %= 40
  else
    (num / 50).time{numerals += 'L'}
    num %= 50
    (num / 10).times{numerals += 'X'}
    num %= 10
  end
  if (num == 9)
    numerals += 'IX'
  elsif (num == 5)
    numerals += 'IV'
  else
    num.times{numerals += 'I'}
  end
  numerals
end

input = ARGV[0].to_i

abort 'Usage: exercise5.rb [1-1000]' unless input.between?(1, 1000)

puts modern_roman_numeral(input)
