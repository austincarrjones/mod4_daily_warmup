# Take a look at the text for The Cat in the Hat.
# https://gist.github.com/stevekinney/d60c17fdcfb258f6d416

#     * Can you parse it to figure out how many times each word appears in the story?
#       * Which word appears the most?
#         * How many words are there in total?
#         * Did you consider capitalization?
#         * What about punctuation?
#         * What about spacing?
#         * Can you solve in JavaScript? Go? C? Assembly?

# First, how do you import to here? Assume you have it as a string here? Is it a markdown file? 
# Jumping ahead asssume tranform it into a string how to split by spaces? Regex? "ignore punctuation"
# If you transform the entire thing into an array it might be easier to work with.
# downcase everything, don't consider capitalization - or ask interviewer if they want these to be distinct
#
require "pry"

plain_text = File.read("cat_full_text.md")
# binding.pry - plain_text.class -> String
# Using .split(/\s+/) instead of .split(" ") provides greater flexibility in how whitespace is handled. Regex is better!

