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

# I was not following the exact instructions for that last one. I'll have to try again with the stack example (GPT)