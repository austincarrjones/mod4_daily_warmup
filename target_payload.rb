# Write a method that takes two parameters, payload and target. 
# The playload should be an array of unique integer values(positive, negative, or 0). 
# The target should be an integer(positive, negative, or 0).
# Your method/function should search through the payload to find any two numbers that add together to equal the target value.

# When you find a pair of numbers that add up to your target value, 
# you can stop processing/searching and return an array of those two values. 
# If no values are found return an empty array.

# Be careful that you don’t find the same number twice in your payload; 
# for example if your payload contains a 4 and your target is 8, your answer should not indicate that it found 4 twice.

# Example

# #Ruby
# find_target([1, 3, 4, 5, 10], 15)
# => [5, 10]
# find_target([-1, -3, 4, 7, -5, 18, 10, -23, 5], 15)
# => [-3, 18]
# find_target([-3, -34, 2, 6, 40, -4], 1)
# => []

# Bonus: Once you’ve found a working solution, try to optimize to run in O(n) time and 1x space complexity.

# MY NOTES: this seems like another stack or queue problem. I should be thinking "what's the tool here that fits best"
# So it's a method passed 2 arguments. This says paramaters here. 
# Seems like recursion would work well here. But I'm not super comfortable with them. 
# Feels like each step is "look at array index 0, add it to the next index number, and check if that result equals the target"
# So iterate across the array EACH index position. But also check every other number except the number you're on.

# I'd want to look at index 0 then store that number and add each subsequent index position until the last element.

require "pry"

payload = [1, 3, 4, 5, 10]
target = 15

def find_target(payload, target)
  payload.each_with_index do |num1, i|
    payload[(i + 1)..-1].each do |num2|
      binding.pry
      return [num1, num2] if num1 + num2 == target
    end
  end
  []
end

find_target(payload, target)
