# You have an array which contains all numbers from 1 to 1 million. 
# The numbers are randomly ordered/shuffled in the array. 
# One number is in the array twice, also at some random location. 
# Find the duplicate value.

# Sounds like sorting first, then iterating to see if each consecutive number is +1 from the current number

# def find_duplicate(arr)
#   arr.each do |num|
#     return num if arr.count(num) == 2
#   end
# end


# def find_dupe(arr)
#   tallied = arr.tally
#   tallied.select do |k, v|
#     return k if v == 2
#   end
# end

# big_arr = (1..1000000).to_a
# big_arr << 225

# start_time = Time.now
# result = find_duplicate(big_arr)
# end_time = Time.now
# execution_time = end_time - start_time

# puts "#{result} method 1"
# puts "Execution time: #{execution_time} seconds"

# start_time = Time.now
# result = find_dupe(big_arr)
# end_time = Time.now
# execution_time = end_time - start_time

# puts "#{result} method 2"
# puts "Execution time: #{execution_time} seconds"

def find_duplicate(arr)
  arr.each do |num|
    return num if arr.count(num) == 2
  end
end

def find_dupe(arr)
  tallied = arr.tally
  tallied.select do |k, v|
    return k if v == 2
  end
end

def find_duplicate_binary_search(arr)
  low = 1
  high = arr.length - 1

  while low < high
    mid = (low + high) / 2
    count = arr.count { |num| num <= mid }

    if count > mid
      high = mid
    else
      low = mid + 1
    end
  end

  low
end

def find_duplicate_n_log_n(arr)
  sorted_arr = arr.sort
  (0...sorted_arr.length - 1).each do |i|
    return sorted_arr[i] if sorted_arr[i] == sorted_arr[i + 1]
  end
  nil
end

def find_duplicate_o_n(arr)
  seen = {}
  arr.each do |num|
    return num if seen[num]
    seen[num] = true
  end
  nil
end

big_arr = (1..1000000).to_a
big_arr << 2250

start_time = Time.now
result = find_duplicate(big_arr)
end_time = Time.now
execution_time = end_time - start_time

puts "----------------------------------"
puts "#{result} method 1 - O(n^2)"
puts "Execution time: #{execution_time} seconds"
puts "----------------------------------"

start_time = Time.now
result = find_dupe(big_arr)
end_time = Time.now
execution_time = end_time - start_time

puts "#{result} method 2 - O(n)"
puts "Execution time: #{execution_time} seconds"
puts "----------------------------------"

start_time = Time.now
result = find_duplicate_binary_search(big_arr)
end_time = Time.now
execution_time = end_time - start_time

puts "#{result} method 3 O(log n)"
puts "Execution time: #{execution_time} seconds"
puts "----------------------------------"

start_time = Time.now
result = find_duplicate_n_log_n(big_arr)
end_time = Time.now
execution_time = end_time - start_time

puts "#{result} method 3 O(n log n)"
puts "Execution time: #{execution_time} seconds"
puts "----------------------------------"

start_time = Time.now
result = find_duplicate_o_n(big_arr)
end_time = Time.now
execution_time = end_time - start_time

puts "----------------------------------"
puts "#{result} method 4 - O(n)"
puts "Execution time: #{execution_time} seconds"
puts "----------------------------------"