=begin 

Problem:
- Given a string replace every letter with its position in the alphabet
- anything that is not alph, ignore and do not return
- 
- 
- 

Input: 
Output: 

Algorithm:
- 
- 
- 

=end

ALPH = ('a'..'z').to_a

def alphabet_position(str)
  arr = []
  str.downcase.each_char do |char|
    if ALPH.include?(char)
      arr << (ALPH.index(char) + 1)
    end
  end
  arr.join(' ')
end

p alphabet_position("The sunset sets at twelve o' clock.") == "20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11"
p alphabet_position("-.-'") == ""