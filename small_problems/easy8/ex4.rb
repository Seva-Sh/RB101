=begin

Create a loop
  Build a list of strings using made method
  delete the first char
  Repeat

=end

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

def substrings(str)
  arr = []
  loop do
    break if str.empty?
    arr << leading_substrings(str)
    str.delete!(str[0])
  end
  arr.flatten
end

# def substrings(string)
#   results = []
#   (0..string.size).each do |start_index|
#     this_substring = string[start_index..-1]
#     results.concat(leading_substrings(this_substring))
#   end
#   results
# end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
