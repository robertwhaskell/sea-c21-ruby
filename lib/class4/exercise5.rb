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

def helper1(num, mult, letter1, letter2)
  numerals = ''
  (num / (5 * mult)).times { numerals += letter1 }
  num %= (5 * mult)
  (num / (1 * mult)).times { numerals += letter2 }
  numerals
end

def helper2(num, div, letter1, letter2)
  numerals = ''
  if num / div == 9
    numerals += letter1
  elsif num / div == 4
    numerals += letter2
  end
  numerals
end

def modern_roman_numeral(num)
  numerals = ''
  (num / 1000).times { numerals += 'M' }
  num %= 1000
  if num / 100 == 9 || num / 100 == 4
    numerals += helper2(num, 100, 'CM', 'CD')
  else
    numerals += helper1(num, 100, 'D', 'C')
  end
  num %= 100
  if num / 10 == 9 || num / 10 == 4
    numerals += helper2(num, 10, 'XC', 'XL')
  else
    numerals += helper1(num, 10, 'L', 'X')
  end
  num %= 10
  if num / 1 == 9 || num / 1 == 4
    numerals += helper2(num, 1, 'IX', 'IV')
  else
    numerals += helper1(num, 1, 'V', 'I')
  end
  numerals
end

input = ARGV[0].to_i

abort 'Usage: exercise5.rb [1-1000]' unless input.between?(1, 1000)

puts modern_roman_numeral(input)
