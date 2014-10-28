#!/usr/bin/env ruby
#
# 5 points
#
# The following five methods must be fixed:
#
#   Integer#hours_in_seconds #=> Integer
#
#     Returns the number of hours converted to seconds.
#
#     10.hours_in_seconds  #=> 36_000
#
#   String#indent(amount = 2) #=> String
#
#     Returns `amount` spaces plus the String. The default `amount` is 2.
#
#     'foo'.indent     #=> '  foo'
#     'foo'.indent(3)  #=> '   foo'
#
#   Integer#to_roman => String
#
#     Returns the roman numeral equavilent of the arabic number.
#
#     1999.to_roman  #=> 'MCMXCIX'
#
#   Array#second #=> Object
#
#     Returns the second element of the Array.
#
#     [10, 20, 30].second  #=> 20
#
#   Array#third #=> Object
#
#     Returns the third element of the Array.
#
#     [10, 20, 30].third  #=> 30
#
# HINT: Remember to use `self` to access the receiver object of the method
#
#     class Integer
#       def plus_forty_two
#         self + 42
#       end
#     end
#
#     1.plus_forty_two  #=> 43

class Integer
  def hours_in_seconds
    self * 60 * 60
  end
end

class String
  def indent(amount = 2)
    indentation = ''
    amount.times { indentation << ' ' }
    indentation << self
  end
end

class Integer
  def to_roman
    num = self
    numerals = ''
    roman_array = %w(I IV V IX X XL L XC C CD D CM M)
    arabic_array = %w(1000 900 500 400 100 90 50 40 10 9 5 4 1)
    arabic_array.each do |divisor|
      numerals += roman_array.pop * (num / divisor.to_i)
      num %= divisor.to_i
    end
    numerals
  end
end

class Array
  def second
    self[1]
  end

  def third
    self[2]
  end
end
