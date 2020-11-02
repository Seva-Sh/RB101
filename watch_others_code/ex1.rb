# Given a non-empty string check if it can be constructed by taking a 
# substring of it and appending multiple copies of hte substring together.
# You may assume the given string consists of lowercase English letters only

# Input: 'abab'
# output: true
# explanation: it's a substring 'ab' twice
# 'aba'
# false

=begin 

Problem:
- Given a non-empty string, check if it can be constructed by taking a subs
  of it, and appending multiple copies of the subs together
- 
- 

Input: str
Output: boolean

Algorithm:
- starting from 1 and going upto str.size / 2,
  perform iteration, passing the mentioend numbers as end indexes,
  check if by multiplying the slices of str by the requried number
  (calculated using string size) we can construct the same original string
- 
- 

=end

def test(str)
  1.upto(str.size / 2) do |end_idx|
    slice = str[0..end_idx]
    repeat_nums = str.size / slice.size
    return true if slice * repeat_nums == str
  end
  false
end

p test('abab') == true
p test('aba') == false
