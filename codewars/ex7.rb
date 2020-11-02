# Complete the function that takes an array of words.

# You must concatenate the nth letter from each word to construct a new word 
# which should be returned as a string, where n is the position of the word in 
# the list.

# For example:

# ["yoda", "best", "has"]  -->  "yes"
#   ^        ^        ^
#   n=0     n=1     n=2
# Note: Test cases contain valid input only - i.e. a string array or an empty 
# array; and each word will have enough letters.

=begin 

Input:
Output:

Data types:

Algorithm:
Take an array of words
Iterate over an array of words using indexes
  using the same index grab letter from word and add it to the result string

=end

def nth_char(arr)
  str = ''
  0.upto(arr.size - 1) do |idx|
    str += arr[idx][idx]
  end
  str
end

p nth_char(['yoda', 'best', 'has']) == 'yes'
p nth_char([]) == ''
p nth_char(['X-ray']) == 'X'
p nth_char(['No', 'No']) == 'No'
p nth_char(['Chad', 'Morocco', 'India', 'Algeria', 'Botswana', 'Bahamas', 'Ecuador', 'Micronesia']) == 'Codewars'
