=begin 

Problem:
- Sort the given strings in alph order, case insensitive
- 
- 
- 
- 

Input: arr
Output: arr

Algorithm:
- 
- 
- 

=end

def sortme(arr)
  arr.sort_by { |str| str.downcase }
end

p sortme(["Hello", "there", "I'm", "fine"]) #== ["fine", "Hello", "I'm", "there"]
p sortme(["C", "d", "a", "B"]) == ["a", "B", "C", "d"]
p sortme(["CodeWars"]) == ["CodeWars"]