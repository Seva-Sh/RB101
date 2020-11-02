=begin 

Problem:
- Sort the given string in an alphabetical order,
- where capital letter will be followed by the same downcased letter

Input: str
Output: str

Algorithm:
- Iterate over each character in the string and build two array objects
- One will have all the capital letters, other will have all lowercase letters
    Sort both arrays in an alphabetical order
- Add both array objects, and then sort the added array by downcased alphabets

=end

def find_children(str)
  mothers = []
  children = []
  str.chars.each do |char|
    char.downcase == char ? children << char : mothers << char 
  end
  all = mothers.sort + children.sort
  all.sort_by { |el| el.downcase }.join
end

p find_children("abBA") == "AaBb"
p find_children("AaaaaZazzz") == "AaaaaaZzzz"
p find_children("CbcBcbaA") == "AaBbbCcc"
p find_children("xXfuUuuF") == "FfUuuuXx"
p find_children("") == ""
