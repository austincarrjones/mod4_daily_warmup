# Create a method/function that will intake a set of brackets [ { ( as a string and determine if the brackets are well-formed (match). 
# Brackets can be nested.

#     bracket('{}')
#     // => true

#     bracket('{()}')
#     // => true

#     bracket('({[]}{[]})') 
#     // => true
    
#     bracket('{(')
#     // => false
    
#     bracket('{[)][]}')
#     // => false
    
#     bracket(']')
#     // => false

# I believe each symbol has a numerical value. Let's look that up.
# Yes it's called an ordinal. The ordinal value is the character’s position in the character set (e.g., ASCII or Unicode) 
# since .ord (ruby method) only looks at the first character of a string, I'll have to iterate across. 
# for each, assign the ordinal value. Then I'll have an array of numbers. Need to find the middle.
# If odd = false
# If even, then look more closely
# take array length and divide by 2 and use that for the "window" of my slice. 

# def bracket_match?(input)
#   array = input.chars
#   array_ord = array.map {|char| char.ord } #this gives array of numbers
#   half_length = (array_ord.length)/2
#   # array_ord.each_slice(half_length) { |slice| p slice }
#   array_ord.slice_before ([half_length - 1])
#   end
# end

# ---------------------------------

# I was not following the exact instructions for that last one. 
# I was fixated on symmetry. I'll have to try again with the stack example (GPT)

# def bracket_match?(input)
#   # Define a hash to map closing brackets to their corresponding opening brackets
#   matching_brackets = { ')' => '(', ']' => '[', '}' => '{' } 
#   # Initialize an empty stack
#   stack = []
#   # Iterate over each character in the input string
#   input.chars.each do |char|
#     if matching_brackets.value?(char)  # If it's an opening bracket
#       stack.push(char)  # Push it onto the stack
#     elsif matching_brackets.key?(char)  # If it's a closing bracket
#       # Check if the stack is empty or the top of the stack doesn't match the closing bracket
#       return false if stack.empty? || stack.pop != matching_brackets[char]
#     end
#   end
#   # If the stack is empty at the end, all brackets were properly matched
#   stack.empty?
# end

# puts bracket_match?('({[]}{[]})')
# puts bracket_match?('({[]{[]})')
# puts bracket_match?('){[]}{[]}(')


def bracket_match?(input)
  # Define a hash where the keys are opening brackets and values are the corresponding closing brackets
  matching_brackets = { '(' => ')', '[' => ']', '{' => '}' }
  # Initialize an empty stack to keep track of opening brackets
  stack = []
  # Iterate over each character in the input string
  input.chars.each do |char|
    # If the character is an opening bracket (i.e., a key in the hash)
    if matching_brackets.key?(char)
      # Push the opening bracket onto the stack
      stack.push(char)
    # If the character is a closing bracket
    elsif matching_brackets.value?(char)
      # If the stack is empty, it means there's no matching opening bracket
      return false if stack.empty?
      # Pop the last opening bracket from the stack
      last_opening_bracket = stack.pop
      # Check if the current closing bracket matches the expected one
      if matching_brackets[last_opening_bracket] != char
        # Return false if the brackets don't match
        return false
      end
    end
  end
  # If the stack is empty at the end, all brackets were properly matched
  stack.empty?
end

puts bracket_match?('({[]}{[]})')
puts bracket_match?('({[]{[]})')
puts bracket_match?('){[]}{[]}(')