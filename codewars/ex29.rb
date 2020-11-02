=begin 

Problem:
- Mehtod should split the string into pairs of two chars
- If string contains an odd num of chars
  then replace the missing second char of the last par with '_'

Input: str
Output: arr

Algorithm:
- Iterate over the given string using indexes 0.upto(str.size - 1)
  Upon each iteration, build a temp_str with characters of the string
    if temp_str is of length 2 then append that to the local variable arr
    and reassign temp_str to an empty string ''
    if temp_str is of length 1 then proceed to next iteration
- Once hit the last index, 
  if str length is an odd num then add char and '_' and append that to the arr

=end

def solution(str)
  arr = []
  temp_str = ''
  0.upto(str.size - 1) do |idx|
    temp_str += str[idx]

    if idx == (str.size - 1) && str.size.odd?
      temp_str += '_'
      arr << temp_str
    elsif temp_str.size == 2
      arr << temp_str 
      temp_str = ''
    end
  end

  arr
end

p solution("abcdef") == ["ab", "cd", "ef"]
p solution("abcdefg") == ["ab", "cd", "ef", "g_"]
p solution("") == []