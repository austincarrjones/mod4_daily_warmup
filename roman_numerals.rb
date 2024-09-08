# Your goal is to write a method/function that converts an integer into a string such that the number is represented in Roman Numerals in the most efficient way.

# For example, the number 4 could be written as IIII but it’s more efficient to use IV since that’s a shorter string.

# Assume no number is greater than 4,000.

# Here are the Roman Numeral equivalents you’ll need to know:

# M=1000
# CM=900 *
# D=500
# CD=400 *
# C=100
# XC=90 *
# L=50
# XL=40 *
# X=10
# IX=9 *
# V=5
# IV=4 *
# I=1
# Example

#     #Ruby
#     to_roman(128)
#     => "CXXVIII"
#     to_roman(2000)
#     => "MM"

# look at the integer. Make it an array? Use index positions and length to evaluate/assign the roman numerals?
# maybe I would need to look at other test cases and try to think like a computer. 
# to_roman(3) -> III
# (43) -> length 2, "tens" position "XXXX" = 40. "ones" position = III. 
# if tens position = 4, then assign XL

# def to_roman(num)
#   string = num.to_s
#   array_chars = string.chars
#   array_digits = array_chars.map do |char|
#     char.to_i
#   end
#   array_digits.each do |digit|

#   end
# end

# print to_roman(1235)
# [1, 2, 3, 5]

# if array_digits.length == 1

# end

# -----------------------------------------

# "correct answer"

def to_roman(num)
  roman_mapping = {
    1000 => 'M',
    900  => 'CM',
    500  => 'D',
    400  => 'CD',
    100  => 'C',
    90   => 'XC',
    50   => 'L',
    40   => 'XL',
    10   => 'X',
    9    => 'IX',
    5    => 'V',
    4    => 'IV',
    1    => 'I'
  }

  result = ''
  roman_mapping.each do |value, symbol|
    while num >= value
      result += symbol
      num -= value
    end
  end
  result
end

puts to_roman(11)
puts to_roman(100)
puts to_roman(1549)
puts to_roman(2920)
