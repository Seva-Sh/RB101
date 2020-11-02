# Write a function that takes in a string of one or more words, and returns the 
# same string, but with all five or more letter words reversed (Just like the 
#   name of this Kata). Strings passed in will consist of only letters and 
#   spaces. Spaces will be included only when more than one word is present.

# Examples: spinWords( "Hey fellow warriors" ) => returns "Hey wollef sroirraw" 
# spinWords( "This is a test") => returns "This is a test" spinWords( "This is 
#   another test" )=> returns "This is rehtona test"

=begin 

Problem:
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

def spinWords(str)
  words = str.split
  0.upto(words.size - 1) do |idx|
    words[idx] = words[idx].reverse if words[idx].size >= 5
  end
  words.join(' ')
end

p spinWords("Hey fellow warriors") == "Hey wollef sroirraw"