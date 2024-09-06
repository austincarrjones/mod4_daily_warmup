# Factorial
# In mathematics, the factorial of a non-negative integer is the product of all positive integers less than or equal to n. For example, the factorial of 5 is 120.

# 5 x 4 x 3 x 2 x 1 = 120

# Write a recursive function that calculates the factorial of a number.

def factorial(num)
  # base case - when do we want to stop? when the last integer we're multiplying is 1
  # recursive case - multiply num by n-1
  if num == 0
    return 1
  end

  num * factorial(num - 1)
end

puts factorial(5)

# pseudocode:
# (number * number - 1) * loop to the next thing number - 1 again but store from the last number. 
# each loop I want it to remember what it's on, so num = 5. 5 * (5-1), then loop?

#  -----------------------------------------------------------------------------------------------------------------

# Reverse a string
# create a function which takes a string of characters and
# recursively calls itself to reverse the string

# e.g.

# let reversedString = reverse('Ariel')

# console.log(reversedString); leirA

# pseudocode
# transform the string to an array
# get the last character, add it to a new array
# keep doing it until there are no more in the original array

# def string_rev_recursion(string)
#   if string.chars.length == 0
#     return #what am I returning? I just want it to stop.
#   end

#   string_rev_recursion(string.chars.pop)
# end

# puts string_rev_recursion("Ariel")

# GPT:

# def string_rev_recursion(string)
#   if string.empty?
#     return "" #what am I returning? I just want it to stop.
#   end

#   chars = string.chars
#   last_char = chars.pop
#   return last_char + string_rev_recursion(chars.join)
# end

# puts string_rev_recursion("Ariel")

def string_rev_recursion(string)
  chars_array = string.chars
  if chars_array.empty?
    return "" #what am I returning? I just want it to stop.
  end

  last_char = chars_array.pop
  last_char + string_rev_recursion(chars_array.join)
end

puts string_rev_recursion("Ariel")