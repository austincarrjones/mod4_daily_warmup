# In this challenge, imagine you are given two sorted linked lists.

# Each linked list:
# has data sorted in ascending order
# will not be empty.

# Your goal is to write a method/function that will merge all data into a single linked list, 
# which should also be sorted in ascending order. 
# The method/function should return an array of all the elements of the merged linked list.


# Ruby Starter Code
require "pry"

class ListNode #the class manages the list it tracks the head and provides methods to add nodes and display values
  attr_accessor :val, :next

  def initialize(val)
    @val = val #the data stored in the node
    @next = nil #reference to the next node or nil if it's the last node
  end
end

def merge_two_sorted_linked_lists(list1, list2)
  result = []
  # start a new list with a nil value, which you'll need to skip later
  new_list = ListNode.new(nil)
  # we need to keep track of the start of this linked list for later, also
  head = new_list

  # Loop through both lists until one is exhausted
  while list1 && list2
    if list1.val < list2.val
      head.next = list1 #attach list1's node to head.next
      list1 = list1.next #move list1 forward
    else
      head.next = list2
      list2 = list2.next
    end
    head = head.next #move head to the next position in the new list
  end

  # Attach remaining nodes from list1 or list2
  head.next = list1 if list1
  head.next = list2 if list2

  #convert merged list into an array to return it
  result = []
  head = new_list.next #start from the first real node, not the placeholder
  while head
    result << head.val
    head = head.next
  end

  # puts "Result: #{result.inspect}"
  return result
end

# test cases:
list1 = ListNode.new(1)
list1.next = ListNode.new(3)
list1.next.next = ListNode.new(5)
list2 = ListNode.new(2)
list2.next = ListNode.new(4)
list2.next.next = ListNode.new(6)
          # binding.pry
          # #<ListNode:0x0000000103550150 
          # @next=#<ListNode:0x00000001035500d8 
          #   @next=#<ListNode:0x0000000103550038 
                # @next=nil, @val=5>, 
          #   @val=3>, 
          # @val=1>
puts 'test case 1 failed' if merge_two_sorted_linked_lists(list1, list2) != [1,2,3,4,5,6]


list1 = ListNode.new(1)
list1.next = ListNode.new(2)
list2 = ListNode.new(4)
list2.next = ListNode.new(5)
list2.next.next = ListNode.new(6)
puts 'test case 2 failed' if merge_two_sorted_linked_lists(list1, list2) != [1,2,4,5,6]

list1 = ListNode.new(10)
list1.next = ListNode.new(20)
list1.next.next = ListNode.new(40)
list2 = ListNode.new(0)
puts 'test case 3 failed' if merge_two_sorted_linked_lists(list1, list2) != [0, 10, 20, 40]

puts 'all done!'