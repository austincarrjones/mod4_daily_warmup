# Buy and Sell Crypto
# You are given an integer array prices where prices[i] is the price of NeetCoin on the ith day.

# You may choose a single day to buy one NeetCoin and choose a different day in the future to sell it.

# Return the maximum profit you can achieve. 
# You may choose to not make any transactions, in which case the profit would be 0.

# Example 1:
# Input: prices = [10,1,5,6,7,1]
# Output: 6
# Explanation: Buy prices[1] and sell prices[4], profit = 7 - 1 = 6.

# Example 2:
# Input: prices = [10,8,7,5,2]
# Output: 0
# Explanation: No profitable transactions can be made, thus the max profit is 0.

# Constraints:
# 1 <= prices.length <= 100
# 0 <= prices[i] <= 100

# so you want to look at each item in the array and subtract index - next index

require "pry"

prices = [10,1,5,6,7,1]

def max_profit(prices)
  #look at first index position in array and return it
  difference_array = []
  prices.each_with_index do |price, i|
    difference_array << prices[i+1] - price
    binding.pry
  end
end

max_profit(prices)