require 'pry'

# A palindrome is any number, word, or phrase that reads the same forward as it does backward. 
# In this challenge, we are going to focus on palindromic numbers. For example, 12321 is a palindromic number, whereas 123 is not.

# Your goal is to write a method/function that takes in an integer and returns the next palindrome. 
# It is safe to assume you are working with only whole numbers, no decimals, and no negatives.

# Example

#     #Ruby
#     find_next_palindrome(100)
#     => 101

#     find_next_palindrome(101)
#     => 111

# find_next_palindrome(1)
# 2 digits  11, 22, 33, 44, 55 .. 99. 
# 3 digits 101, 111, 121 .. 191
#           202, 212, 222, 232, 242 .. 292
#           303, 313, 323, 333, 343 .. 393

# if 2 digits, both numbers are the same
# if 3 digits, first and last are the same. OR all 3 the same.
# if 4 digits, 


# Question does a 1 digit integer count? I'll assume no for now.
# Assume ascending order as well
# increment integer by 1 and check if it's a palindrome then return that number.

def find_next_palindrome(integer)
  incremented_integer = integer + 1
  if incremented_integer == incremented_integer.to_s.reverse.to_i
    return incremented_integer
  else find_next_palindrome(incremented_integer)
  end
end

puts find_next_palindrome(10)
puts find_next_palindrome(100)
puts find_next_palindrome(103)
