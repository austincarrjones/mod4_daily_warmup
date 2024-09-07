require 'pry'

# Instructions
# You are given three arrays of equal size. Each array has 1 million RANDOM integer values.

# Assume that each array is already sorted in ascending order and that no individual array has any duplicate values.

# Your goal is to write a method/function that will return an array of any/all values which are present in all three arrays.

# Bonus: Once you’ve found a working solution, try to optimize to run in O(n) time and 1x space complexity.

# Small Scale Example Below

#     #Ruby
#     nums_1 = [1, 2, 4, 5, 8]
#     nums_2 = [2, 3, 5, 7, 9]
#     nums_3 = [1, 2, 5, 8, 9]
#     find_matches(nums_1, nums_2, nums_3)
#     => [2, 5]


# look up "how to compare arrays values"
# maybe transform them into a hash..how would that help though?
# well I could combine the arrays into a hash then look for duplicates. I think we did that recently for one array.

# def find_dupe(arr)
#   tallied = arr.tally
#   tallied.select do |k, v|
#     return k if v == 2
#   end
# end

# big_arr = (1..1000000).to_a
# big_arr << 225

# nums_1 = [1, 2, 4, 5, 8]
# nums_2 = [2, 3, 5, 7, 9]
# nums_3 = [1, 2, 5, 8, 9]
# find_matches(nums_1, nums_2, nums_3)

def find_matches(array1, array2, array3)
  combined_array = array1 + array2 + array3 #array of 3 million elements // O(1)? No it's O(n)
  # Adding two arrays together creates a new array, and this operation involves iterating through all elements of the arrays, so it takes linear time.
  tallied_hash = combined_array.tally #makes the array a hash of tallys // O(1)? No it's O(n)
  # tally creates a hash where each unique element from the array is counted. Iterating through all n elements (the combined array) takes linear time.
  
  matches = tallied_hash.select do |k, v| #// O(n)?
    v >= 3 # // O(1)
  end
  matches.keys 
end

# puts find_matches(nums_1, nums_2, nums_3)

#  -----------------------------------------------------

nums_1 = Array.new(1000000) { rand(1..1000000) }  # 1 million elements between 1 and 1000
nums_2 = Array.new(1000000) { rand(1..1000000) }  # Another array of 1 million elements
nums_3 = Array.new(1000000) { rand(1..1000000) }  # Third array of 1 million elements

print find_matches(nums_1, nums_2, nums_3)
