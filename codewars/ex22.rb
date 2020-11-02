=begin 

Problem:
- Method scramble(str1, str2) returns true
  if a portion of str1 characters can be rearranged to match str2
  otherwise false
- Used are only lowercase letters, nothing else
- 
- 
- 

Input: str
Output: boolean

Algorithm:
- Check if each character of str2 is available in str1
  if character count is more than 1 then those should match too
- 
- 

=end

def scramble(str1, str2)
  str2.each_char do |char|
    if str2.count(char) > 1
      return false if str2.count(char) > str1.count(char)
    end
    return false if !str1.include?(char)
  end

  true
end

p scramble('rkqodlw','world') #== true
p scramble('cedewaraaossoqqyt','codewars') ==true
p scramble('katas','steak') == false
p scramble('scriptjava','javascript') == true
p scramble('scriptingjava','javascript') == true