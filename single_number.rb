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
def single_number(nums)