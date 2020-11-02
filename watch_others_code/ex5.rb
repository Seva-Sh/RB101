# Find the length if the longest substtring in the given string that is the 
# same in reverse

# ! If the length of the input string is 0, return value must be 0

=begin 

First, get all the possible substrings with the given string and assign an
array of all the possible substrings to a local variable

Iterate over this array and select the substrings that are palindrome only 

sort the remaining substring in an ascending order 

return the length of the last element in the array 

=end

def get_subs(str)
  subs = []
  0.upto(str.length - 1) do |idx1|
    idx1.upto(str.length - 1) do |idx2|
      subs << str[idx1..idx2]
    end 
  end 
  subs
end

def solve(str)
  subs = get_subs(str)

  subs.select! { |sub| sub == sub.reverse }

  sorted_subs = subs.sort_by { |sub| sub.size }

  sorted_subs[-1].size
end

p solve('a') == 1
p solve('aa') == 2
p solve('baa') == 2
p solve('aab') == 2
p solve('baabcd') == 4
p solve('baablkj12345432133d') == 9