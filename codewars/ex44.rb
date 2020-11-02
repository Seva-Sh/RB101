=begin 

Problem:
- Method should return the count of distinct case-insensitive alph chars
- and numeric digits that occur more than once in the input string 
- 
- 
- 

Input: 
Output: 

Algorithm:
- Initialize a local var count and assign it to 0, this will count the number 
  of repeating chars and digits
- Split the given string into an array of chars and select only the uniq chars
- Iterate over every element in the array and check if that element
  occurs more than once in the string object
  if yes, add 1 to local var count
- Return count

=end

def duplicate_count(str)
  uniq_chars = str.chars.uniq
  count = 0 
  uniq_chars.each do |char|
    count += 1 if str.downcase.count(char) > 1
  end

  count 
end

p duplicate_count("") == 0
p duplicate_count("abcde") == 0
p duplicate_count("abcdeaa") == 1
p duplicate_count("abcdeaB") == 2
p duplicate_count("Indivisibilities") == 2