# Solo Tech Challenge
# Please take 1 hour to work through Subsets (prompt found here) on your own.
# Once the hour is up:
# Meet with a peer from your group to discuss your process and implementation.
# Consider: Did you use recursion? Could you use recursion?
# Write an individual reflection answering the following:
# What felt good about your process?
  #didn't use GPT
# What was difficult/where did you struggle?
  #2nd part recursion
# What feedback did you receive?
# Were you able to improve from the previous challenge? What went better?

# In this challenge you are given an array of unique integers. 
# Your job is to return all the possible combinations of unique pairs (2 integers only). 
# No duplicate pairs are allowed. 
# Below are some examples:

#     #Example 1
#     Input: [1, 2, 3, 4]
#     Output: [[1, 2], [1, 3], [1, 4], [2, 3], [2, 4], [3, 4]]
    
#     #Example 2
#     Input: [54, 77]
#     Output[[54, 77]]
    
#     #Example 3
#     Input: []
#     Output: []

# Growth Mindset. Start 10:15am

# look at first element. then "pair" up with each next element. Check by indexing?
# maybe better to use recursion and pop the item with .first too.


# def subset(input)
#   subarray = []
#   first = input.shift
#   subarray << first # [1]
#   input # [2, 3, 4]
#   input.map do |num|
#     #how to make a new subarray each time and save it? Would a hash help?
#     #just looked at rubydocs and saw "repeated_combination" method. Might work well.
#     #permutation might be better    
#   end
# end

def subset(input)
  input.combination(2).to_a
end

ex_1 = [1, 2, 3, 4]
ex_2 = [54, 77]
ex_3 = []

# puts subset(ex_1).inspect
# puts subset(ex_2).inspect
# puts subset(ex_3).inspect

# 10:41 accomplished.
# print is good for 1 array. but multiple if you want separate lines use puts and .inspect to keep the array together.


# Possible Extension If you successfully complete the challenge above, 
# consider refactoring your solution to return all possible unique subsets from the original array. 
# A subset is any selection of the array, 
# and can be between 0 and n elements long, 
# where n is the number of items in the original array.

#     #Example 1
#     Input: [1, 2, 3, 4]
#     Output: [[],[1],[2],[3],[4],[1,2],[1,3],[1,4],[2,3],[2,4],[3,4],[1,2,3],[1,2,4],[1,3,4],[2,3,4],[1,2,3,4]]


def subset(input)
  input.repeated_permutation(0).to_a
  #need to do this each time for the amount of elements in the input. aka length/count
  #the argument has to increment up until the length is reached
end

ex_1 = [1, 2, 3, 4]
# ex_2 = [54, 77]
# ex_3 = []

puts subset(ex_1).inspect
puts subset(ex_2).inspect
puts subset(ex_3).inspect

# -------------------------------------------
# GPT assistance:
# Part 1 my solution was cleaner. GPT did nested iteration. Same big O complexity but mine is more abstracted with built in ruby method
# going with .shift and .map would look like this:

def subset(input)
  subarray = []
  # Loop until the input array is empty
  while input.length > 0
    first = input.shift     # Remove the first element
    input.map do |num|      # Pair it with all remaining elements
      subarray << [first, num]
    end
  end
  subarray
end

# to see the loop in action:
def subset(input)
  subarray = []
  
  # Loop until the input array is empty
  while input.length > 0
    first = input.shift     # Remove the first element
    puts "First element removed: #{first}"
    puts "Remaining input: #{input.inspect}"
    
    input.map do |num|      # Pair 'first' with all remaining elements
      subarray << [first, num]
      puts "Pair created: [#{first}, #{num}]"
    end
    
    puts "Subarray so far: #{subarray.inspect}"
    puts "-----------------------------------"
  end
  
  subarray
end

# Chee solution 1:
def subsets_recursion(array, index = 0, output = [])
  return output if index >= array.length - 1
  ((index + 1)...array.length).each do |i|
    output << [array[index], array[i]]
  end
    subsets_recursion(array, index += 1, output)
end

# Chee solution 2 (pointers):
def subsets(array)
  output = []
  # two pointers set to an index
  a = 0
  b = 1
  # condition to stop when both pointer reaches array.length
  until a >= array.length - 1 && b >= array.length - 1
  # as long as b is less than array length - 1 it shovels in array then increments
    if b <= array.length - 1
      output << [array[a], array[b]]
      b += 1
  # when b gets larger than array length -1 increment a then reset b to a + 1
    elsif b > array.length - 1
      a += 1
      b = a + 1
    end
  end
  output
end