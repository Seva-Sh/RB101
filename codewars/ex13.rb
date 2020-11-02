# Modify the kebabize function so that it converts a camel case string into a 
#   kebab case.

#   kebabize('camelsHaveThreeHumps') // camels-have-three-humps
#   kebabize('camelsHave3Humps') // camels-have-humps
#   Notes:
  
#   the returned string should only contain lowercase letters

=begin 

Problem:
- Convert a camel case string into a kebab
- Return should only contain lowercase letters, everything else delete
- 

Input: str
Output: str

Algorithm:
- Initialize a local variable new_str and assign it to an empty string object

- Iterate over each letter of the string and add lower letters to the new string
    if encounter Upcase string, insert - in new_str and lowecased letter
    if any non-alphs, go next

- 

=end

ALPH = ('a'..'z').to_a

def kebabize(str)
  new_str = ''
  str.each_char do |char|
    if !ALPH.include?(char.downcase)
      next
    elsif char.downcase == char
      new_str += char
    else  
      new_str.empty? ? new_str += char.downcase : new_str += '-' + char.downcase
    end
  end
  new_str
end

p kebabize('myCamelCasedString') == 'my-camel-cased-string'
p kebabize('myCamelHas3Humps') == 'my-camel-has-humps'