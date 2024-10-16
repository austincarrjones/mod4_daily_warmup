#Your goal is to write a method/function that, given a depth (n),
# returns an array representing Pascal’s Triangle to the n-th level.

# calculate_pascals_triangle(4)
# =>  [1, 1, 1, 1, 2, 1, 1, 3, 3, 1]

#ok so Pascal's triangle is a triangle of numbers, each row is only as long as the row's own length
#each number is the sum of the two numbers directly above it.

#row 0 = [1]
#row 1 = [1, 1]
#row 2 = [1, 2, 1]
#row 3 = [1, 3, 3, 1]

# row n = n elements. For each element look at row (n - 1) and ...

# GPT assisted
# The nth row has n + 1 elements.

# Start with a list [1].
# For each subsequent row, create a new list where:
# •	The first and last elements are always 1.
# •	Each middle element is the sum of two adjacent elements from the row above.
# Flatten the rows into a single array as output.

def calculate_pascals_triangle(num)
  triangle = [[1]]
  (1...num).each do |level|
    prev_row = triangle.last
    current_row = [1]
    (0...(prev_row.length - 1)).each do |index|
      current_row << prev_row[index] + prev_row[index + 1]
    end
    current_row << 1
    triangle << current_row
  end

  triangle.flatten
end

puts calculate_pascals_triangle(4).inspect
print calculate_pascals_triangle(4)