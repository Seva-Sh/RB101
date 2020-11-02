=begin 

Problem:
- Find the longest substring in alphabtical order
- Only consists of lowercase chars
- 
- 
- 

Input: 
Output: 

Algorithm:
- Initialize two local variable with empty strings
  one for the final answer and one as a temporary answer = to the first char of the str
- Iterate over each char of the string using indexes, from 1 to str.size - 1 
  if char is greater than the previous char, then add it to temporary str
  if no, then reassign the temporary str to the current char
- Check if size of the temp_str is greater than the size of the final_str
    if yes then reassign final_str to the temp_str
- When 

=end

def longest(str)
  final_str = str[0]
  temp_str = str[0]

  return str if str.size == 1

  1.upto(str.size - 1) do |idx|
    if str[idx] >= str[idx - 1]
      temp_str += str[idx]
      final_str = temp_str if temp_str.size > final_str.size
    else  
      temp_str = str[idx]
    end
  end
  final_str
end

p longest('asd') == 'as'
p longest('nab') == 'ab'
p longest('abcdeapbcdef') == 'abcde'
p longest('asdfaaaabbbbcttavvfffffdf') == 'aaaabbbbctt'
p longest('asdfbyfgiklag') == 'fgikl'
p longest('z') == 'z'
p longest('zyba') == 'z'