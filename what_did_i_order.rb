# In this challenge you are given a menu and a list of receipt values. 
# Write a method/function to find the first combination of food that adds up to the receipt total. 
# Return a print out of only one combination for that receipt, and move on to the next receipt. 
# How the print out looks is up to you, but here are some examples:

#Example 1
#4.85:
#3 items, extra veggies, chips, cheese

#Example 2
#13.75:
#3 items, {'veggie sandwich': 1, 'nachos': 2}

#Constraints:

#you must use 100% of the receipt value, we don’t want any money left over
#you can order any quantity of any menu item
#none of the receipt values are “tricks”, they all have answers
#Tip:

#Doing subtraction and addition on money values CAN lead to “floating point precision” problems. 
# For example, 4.85 - 1.25 might give you 3.599999996. Round values to two decimal places to make sure you’re finding answers.

menu = {
  'veggie sandwich' => 6.85,
  'extra veggies' => 2.20,
  'chicken sandwich' => 7.85,
  'extra chicken' => 3.20,
  'cheese' => 1.25,
  'chips' => 1.40,
  'nachos' => 3.45,
  'soda' => 2.05,
}

receipts = [4.85, 11.05, 13.75, 17.75, 18.25, 19.40, 28.25, 40.30, 75.00]

# def receipt_details(receipts)
#   receipts.each_with_index do |receipt_total, index|
#     #receipt_total 4.85 = look through the menu hash. omit anything larger than the receipt? 
#     #Pick the largest number that is less than the receipt_total 
#       #subtract it from the receipt total (round to two decimal places). check if any other numbers match the difference. if yes, return those items.
#       #if no, remove that largest number from the menu hash for this example. check next largest menu item. subtract it from the receipt total and check if any other numbers match. 
#       #this seems silly. Lots of logic that doesn't take into account the possibility of having the same item more than once. 
#   end
# end

# GPT "give me language agnostic hint"
# 1.	Break the Problem into Two Main Tasks:
	# •	Generate combinations of menu items and their quantities.
	# •	Find the combination(s) that add up to the exact receipt value.

