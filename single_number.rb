# You are given a non-empty array of integers nums. Every integer appears twice except for one.
# Return the integer that appears only once.
# You must implement a solution with O(n) runtime complexity and use only O(1) extra space.

# Example 1:
# Input: nums = [3,2,3]
# Output: 2

# Example 2:
# Input: nums = [7,6,6,7,8]
# Output: 8

# Constraints:
# 1 <= nums.length <= 10000
# -10000 <= nums[i] <= 10000

#ACJ: seems like one of those stack things. 

#STACK Approach 
# time,space: O(n), O(n)
def single_number(nums)
  stack = []
  nums.each do |num|
    if stack.include?(num)
      stack.delete(num)
    else
      stack.push(num)
    end
  end
  stack.first
end

puts single_number([3, 2, 3])
puts single_number([7, 6, 6, 7, 8])

#HASH MAP Approach
# time,space: O(n), O(n)
def single_number(nums)
  counts = Hash.new(0) #initially: {}
  #count occurances: 
  nums.each do |num|
    counts[num] += 1 #adds a key (num) and increments 1 to value (value initialized at 0).
  end
  counts.each do |key, value|
    return key if value == 1 #number that appears only once
  end
end

puts single_number([3, 2, 3])
puts single_number([7, 6, 6, 7, 8])

#SORT Approach
# time,space: O(n log n), O(1) or O(n)
def single_number(nums)
  nums.sort! #creates new array
  #compare adjacent elements. range: don't look at last element b/c it would return error "index out of bounds"
  #compare index to next index. then iterate 2 index positions away (.step method)
  (0...nums.length - 1).step(2) do |i| 
    return nums[i] if nums[i] != nums[i + 1]
  end
  nums[-1] #last number
end
puts single_number([3, 2, 3])
puts single_number([7, 6, 6, 7, 8])

# bitwise XOR Approach 
# time,space: O(n), O(1)
# Key Properties of XOR

# 	1.	a ^ a = 0: Any number XORed with itself is 0.
# 	2.	a ^ 0 = a: Any number XORed with 0 remains unchanged.
# 	3.	XOR is commutative and associative:
# 	•	Order doesn’t matter: a ^ b ^ c = c ^ b ^ a.

# Why XOR Works

# 	•	If every number appears twice except one, XORing all numbers together will cancel out the duplicates, leaving only the single number.

# Example:
# 	•	Input: [3, 2, 3]
# 	•	XOR Steps:
# 	•	3 ^ 2 ^ 3
# 	•	(3 ^ 3) ^ 2 → 0 ^ 2 → 2
def single_number(nums)
  result = 0

  nums.each do |num|
    result ^= num # XOR each number with the result
  end

  result # The single number remains
end

# Example usage
puts single_number([3, 2, 3]) # Output: 2
puts single_number([7, 6, 6, 7, 8]) # Output: 8
