# A palindrome is any number, word, or phrase that reads the same forward as it does backward. 
# In this challenge, we are going to focus on palindromic numbers. 
# For example, 12321 is a palindromic number, whereas 123 is not.

# Write a method/function that starts at 0 and finds the first twenty-five numbers where the number plus its inverse equals a palindrome that is greater than 1,000.

# 47(number) + 74(inverse) = 121(palindrome) Note: This does not meet the greater than 1,000 rule.

# Collect the twenty-five numbers in an array as the return value. Be sure to collect the number and not the sum.

# Bonus: Once you’ve found a working solution, see if you can create a solution without converting the numbers to strings/arrays.

# ----------------
# output = array of the input numbers
# find palindrome first 
#   number + inverse = palindrome
# check if palindrome > 1000
# shovel number into output array
# stop when output array.length == 25

def palindromic_sum
  num = 0
  palindrome_sum_numbers = []
  
  until palindrome_sum_numbers.length == 25
    num += 1
    inverse = num.to_s.reverse.to_i
    sum = num + inverse

    if sum == sum.to_s.reverse.to_i && sum > 1000
      palindrome_sum_numbers << num
    end
  end

  return palindrome_sum_numbers
end

print palindromic_sum