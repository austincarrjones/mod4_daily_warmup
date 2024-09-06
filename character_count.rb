gem 'pry'
require "binding.pry"

string = "aaabbcc"

puts string.count(string)
puts string.count("a")

# string.chars.each do |char|
#   char.
# end

text = "aaabbcc"

def count_characters(text)
  @character_hash = text.chars.tally
end


binding.pry


