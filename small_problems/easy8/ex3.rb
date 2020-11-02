# Write a method that returns a list of all substrings of a string
# that start at the beginnning of the original string
# arranged from shortest to longest

def leading_substrings(str)
  index = 1
  arr = []
  loop do
    break if index > str.length
    arr << str[0, index]
    index += 1
  end
  arr
end

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
