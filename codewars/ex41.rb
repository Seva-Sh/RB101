=begin 

Problem:
- If '#' is a backspace in string
- Process a string with '#' symbol
- 
- 
- 

Input: 
Output: 

Algorithm:
- Initiailize a new_str and assign it to str
- Iterate over each char of the original string
    if the char is not # then add that char to new_str
    if the char is #, then delete new_str char at index -1
- 

=end

def clean_string(str)
  new_str = []
  str.each_char do |char|
    char == '#' ? new_str.delete_at(-1) : new_str += [char]
  end
  new_str.join
end

p clean_string('abc#d##c') #== "ac"
p clean_string('abc####d##c#') #== "" 
