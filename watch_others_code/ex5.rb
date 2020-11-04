=begin 

Problem:
- Find the length of the longest substring in the given string that is the same
  in reverse

Input: str
Output: int

Algorithm:
- Initialize a local var size, that will keep track of the longest substring
- Iterate over every possible contiguous string, using nested iteration
  Start from 0 index and go upto str.size - 1, each time passing a starting 
  index as an argument.
  In the inner iteration, start from the starting index and go upto str.size - 1
  each time passing an end index as an argument
- Check if the current substring is equal to itself in reverse
    if yes, check if the size of the current sub is greater than the one assigned
    previously. If it is greater, then reassign size to a new size.
- Return size

=end

def longest_palindrome(str)
  return 0 if str.empty?
  size = 0
  0.upto(str.size - 1) do |idx1|
    idx1.upto(str.size - 1) do |idx2|
      if str[idx1..idx2] == str[idx1..idx2].reverse
        size = str[idx1..idx2].size if str[idx1..idx2].size > size
      end
    end
  end

  size
end

puts longest_palindrome('') == 0
puts longest_palindrome('a') == 1
puts longest_palindrome('aa') == 2
puts longest_palindrome('baa') == 2
puts longest_palindrome('aab') == 2
puts longest_palindrome('baabcd') == 4
puts longest_palindrome('baab1kj12345432133d') == 9
puts longest_palindrome("I like racecars that go fast") == 7
