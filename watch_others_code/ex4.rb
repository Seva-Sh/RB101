# Given 2 strings, your job is to find out if there is a substring
# that appears in both strings You will return true if you find a 
# substring that apepars in both strings, or false if not
# Substrings are longer than 1 letter

=begin 

Make a helper method that builds all the possible substrings with a given string
They should be of length greater than 1

Get all the subarrays for the second string
Check if first includes any of those subarrays,
ture if yes, false if no

=end

# def get_subs(str)
#   subs = []
#   0.upto(str.length - 1) do |idx1|
#     (idx1 + 1).upto(str.length - 1) do |idx2|
#       subs << str[idx1..idx2]
#     end 
#   end
#   subs
# end

# def solve(str1, str2)
#   subs = get_subs(str2.downcase)
#   subs.each do |sub|
#     return true if str1.downcase.include?(sub)
#   end
#   false
# end

# p solve('Something', 'Fun') == false
# p solve('Something', 'Home') == true
# p solve('Something', 'Fun') == false
# p solve('Something', '') == false 
# p solve('', 'Something') == false 
# p solve('BANANA', 'banana') == true 
# p solve('test', 'lllt') == false 
# p solve('','') == false 
# p solve('1234567', '541265') == true



# Write function scramble(str1, str2) that returns true if a portion of str1 
# characters can be rearranged to match str2, otherwise return false 

=begin 

Iterate over each letter of the str2
Upon each iteration, check if str1 includes that letter
if no, return false and exit 
if yes, delete 1 of that letter from str1 and continue iteration

return true if iteration is completed succesfully

=end

def solve(str1, str2)
  str2.chars.each do |char|
    if str1.include?(char)
      idx = str1.index(char)
      str1[idx] = ''
    else  
      return false 
    end
  end

  true
end

p solve('javaass', 'jjss') == false 
p solve('rkqodlw', 'world') == true 
p solve('cedewaraaossoqqyt', 'codewars') == true 
p solve('katas', 'steak') == false
p solve('scriptjava', 'javascript') == true 
p solve('scriptingjava', 'javascript') == true 