# Given an n x n array, write a method that returns the array elements arranged 
# from outermost elements to the middle element, traveling clockwise.

# A good way to visualize this is to picture the spiral shell of a snail!

# Example

#     #Ruby
#     array_matrix = [
#         [1, 2, 3],
#         [4, 5, 6],
#         [7, 8, 9]
#     ];
#     snail(array_matrix) 
#     => [1, 2, 3, 6, 9, 8, 7, 4, 5]

# array_matrix = [
#         [1, 2, 3, 4],
#         [5, 6, 7, 8],
#         [9, 10, 11, 12],
#         [13, 14, 15, 16]
#     ];

# Ok so first what does the compter see? how does it read an array if it doesn't have line breaks.
# that's just for human readibility. The computer sees the subarrays in sequence left to right. 
# So I'm asking 
# 1. print each element of the first sub array of the array [0]
# 2. look at the next element [1] (sub array), give me the last element [1].last
# 3. do #2 length-1 times.
# 4. when you get to the last element (sub array), print each element in reverse.
# 5. then go back to the previous sub array, print the first element
# 6. My challenge right now is HOW dow I keep track of how far "up" to go on the outside? 
# how to know when to start moving "in" the snail pattern.

# Questions - are they always sequential numbering?

# I wonder if stacks would be useful here...hmm maybe not. 

require "pry"


array_matrix = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
# array_matrix.length = 3

def snail(array_matrix)
  result = []
  while array_matrix.length > 0
    result += array_matrix.shift # shift removes and returns the first row (first element/subarray)
    # array_matrix.each { |row| result << row.pop } #blocks syntax instead of do/end
    array_matrix.each do |row|
      result << row.pop
    end
    
    result += array_matrix.pop.reverse if array_matrix.any? # get the last row, and then reverse it.
    
    array_matrix.reverse.each do |row| 
      binding.pry
      result << row.shift
    end
  end
  result
end

print snail(array_matrix)
