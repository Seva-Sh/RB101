# A pangram is a sentence that contains every single letter of the alphabet at 
# least once. For example, the sentence "The quick brown fox jumps over the lazy 
# dog" is a pangram, because it uses the letters A-Z at least once (case is 
# irrelevant).

# Given a string, detect whether or not it is a pangram. Return True if it is, 
# False if not. Ignore numbers and punctuation.

=begin 

Problem:
- Check if a string contains all the letters of the alphabet
- 
- 

Input: str
Output: boolean

Algorithm:
- Create an array of all alphabets

- Iterate over each letter of the string
    if same letter is found in alph array
      delete that element from the array

- Check if alph array is empty, if yes then panagram
      no then false

=end

def panagram?(str)
  alph = ('a'..'z').to_a

  str.downcase.chars.each do |char|
    if alph.include?(char)
      alph.delete(char)
    end
  end

  alph.empty?
end

 # "The quick brown fox jumps over the lazy dog."
p panagram?("The quick brown fox jumps over the lazy dog.") == true
 # "This is not a pangram."
p panagram?("This is not a pangram.") == false
