=begin 

Problem:
- Find the highest scoring word
- Each letter value equals to its position in alphabet
- Return the highest scoring word as a string
- If two words score the same return the word that appears earliest
- 

Input: str
Output: str

Algorithm:
- Initialize a local var highest assign it to an array [0, '']
  where el[0] would represetn the score value and el[1] would be the word
- Split the given string into an array of words
- Iterate over each word, calcualte its value using a helper method 
  check if value is greater than the value in an array
    if yes reassign the array element to a new value and a new string obj
    if no proceed to next

get_value(str)
  Iterate over each letter and sum all their values

=end

ALPH = ('a'..'z').to_a

def get_value(str)
  sum = 0
  str.each_char do |char|
    sum += (ALPH.index(char) + 1)
  end
  sum
end

def high(str)
  highest = [0, '']
  str.split.each do |word|
    value = get_value(word)
    if value > highest[0]
      highest[0] = value 
      highest[1] = word
    end
  end
  highest[1]
end

p high('man i need a taxi up to ubud') == 'taxi'
p high('what time are we climbing up the volcano') == 'volcano'
p high('take me to semynak') == 'semynak'
p high('aaa b') == 'aaa'
