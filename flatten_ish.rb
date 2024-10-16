# Can you implement flatten without using, uhm, Array#flatten? It should be able to handle nested arrays infinitely deep.

#    * If you did it without monkey patching `Array`, can you do it with monkey patching? (And vice versa, of course.)

array = [[1,2,3], [4,5,6]]

def flatten(array)
  string = array.to_s
  string.gsub("[", "]").to_a

end