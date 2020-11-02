=begin 

Problem:
- Find anagrams of a word from a list 
- Return an array of all the anagrams or an empty array if there an none

Input: 
Output: 

Algorithm:
- Break the given string into characters and arrange it in an alphanbetical order
- Initialize a local variable new_arr that will carry all anagrams
- Itirate over the array of string
  upon each iteration, break the string into characters and arrange 
  alphabetically, check if equal to the first string
    if yes append to the new_str, if no skip

=end

def anagrams(str, arr)
  check_str = str.chars.sort
  new_arr = []
  arr.each do |word|
    new_arr << word if word.chars.sort == check_str
  end
  new_arr
end

p anagrams('abba', ['aabb', 'abcd', 'bbaa', 'dada']) == ['aabb', 'bbaa']

p anagrams('racer', ['crazer', 'carer', 'racar', 'caers', 'racer']) == ['carer', 'racer']

p anagrams('laser', ['lazing', 'lazy',  'lacer']) == []