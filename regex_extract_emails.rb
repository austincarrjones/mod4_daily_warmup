# Write a Ruby method, extract_emails, that takes a string as input and returns an array of valid email addresses found within the string. Assume that an email address is defined as:

# 	•	Starts with alphanumeric characters, dots (.), underscores (_), or hyphens (-).
# 	•	Contains exactly one @.
# 	•	After the @, there should be a domain name that consists of alphanumeric characters separated by dots (.) with at least two characters for each segment (e.g., example.com, sub.example.com).

# extract_emails("Contact us at support@example.com or sales@shop.co.uk for more info.")
# # => ["support@example.com", "sales@shop.co.uk"]

# extract_emails("No email here!")
# # => []

# --------------------------------------
# my question: “Would email addresses always be separated by spaces from other words in the input string, 
# or could they be adjacent to punctuation or other characters? For example, would something like contact@example.com; be possible,
#  or should I only expect spaces around each email address?”

# Clarification: "You can assume that email addresses will generally be separated by spaces from other words in the string. 
# However, they might occasionally be adjacent to punctuation, like commas or semicolons. So, for example, info@example.com, could appear in the text. 
# It would be ideal if your solution could handle those cases.”


def extract_emails(string)
  email_regex = /\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}(?:\.[A-Za-z]{2,})?\b/
  string.scan(email_regex)
end

print extract_emails("Contact us at support@example.com or sales@shop.co.uk for more info.")

# --------------------------------------
# Follow Up

# 1.	How would you modify the regex to exclude emails with multiple dots in a row (e.g., test..email@example.com should not be valid)?
# 2.	What changes would you make to support top-level domains (TLDs) that are shorter or longer (e.g., .io, .online)?



