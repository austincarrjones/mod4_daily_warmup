Lesson.create(
  lesson_type: :ruby,
  lesson: "In Ruby, you can use the `chars` method along with `tally` to count the occurrences of each character in a string.

  **Example:**

  Let's say you want to count how many times each character appears in the string `'hello world'`.

  ```ruby
  string = 'hello world'
  char_count = string.chars.tally
  puts char_count  # Outputs: {'h'=>1, 'e'=>1, 'l'=>3, 'o'=>2, ' '=>1, 'w'=>1, 'r'=>1, 'd'=>1}
  ```

  **Explanation:**

  **Getting Characters as an Array:**
    - `string.chars` converts the string into an array of individual characters.
    - For `'hello world'`, this results in `['h', 'e', 'l', 'l', 'o', ' ', 'w', 'o', 'r', 'l', 'd']`.

  **Tallying the Characters:**
    - The `tally` method counts the occurrences of each character in the array.
    - It returns a hash where the keys are the characters and the values are the counts of each character.",
  topic: "Counting Characters in a String",
  link: "https://ruby-doc.org/core-2.7.0/String.html"
)
Lesson.create(
  lesson_type: :ruby,
  "**What is Regex?**

  Regular Expressions, commonly known as **regex**, are sequences of characters that define a search pattern. 
  They are used to match, search, and manipulate strings based on specific patterns, making them a powerful tool in text processing.
  In Ruby, a regex is typically defined between two forward slashes (/). Anything between these slashes is considered the pattern that the regex will try to match.

  **Example:**

  Let's say you want to check if a string contains a number.

  ```ruby
  string = 'The price is 100 dollars'
  contains_number = string.match?(/\d+/)
  puts contains_number  # Outputs: true
  ```

  **Explanation:**

  1. **Matching a Pattern:**
    - The `match?` method checks whether the regex pattern matches any part of the string.
    - The regex pattern `\d+` looks for one or more digits in the string.
    - In `'The price is 100 dollars'`, the pattern matches `'100'`, so `contains_number` is `true`.

  2. **Using Regex to Replace Text:**

  You can also use regex to replace parts of a string.

  ```ruby
  string = 'The price is 100 dollars'
  new_string = string.gsub(/\d+/, '200')
  puts new_string  # Outputs: 'The price is 200 dollars'
  ```

  - Here, `gsub` is used to find the digits in the string and replace them with `'200'`.

  **Why Use Regex?**

  Regular expressions are incredibly versatile, allowing you to perform complex search and replace operations on strings. They can match patterns like email addresses, phone numbers, specific words, or even complex formats.

  **Common Regex Symbols:**

  - `\d` - Matches any digit (0-9).
  - `\w` - Matches any word character (letters, digits, underscores).
  - `\s` - Matches any whitespace character (spaces, tabs).
  - `.` - Matches any character except a newline.

  Regular expressions may seem intimidating at first, but once you understand the basics, they become an essential part of your Ruby toolkit.",
  topic: "Regex",
  link: "https://ruby-doc.org/core-2.4.2/Regexp.html#:~:text=Regular%20expressions%20(regexps)%20are%20patterns,new%20constructor."
)