=begin 

Problem:
- Convert a string to a new string where each char in the new string is
- ( if that char appears only once, or ) if that char appears more than once
- Ignore capital letters for determining duplicates
- 
- 

Input: str
Output: str

Algorithm:
- Lowercase the string
- Iterate over each char 
    check if the count of that char in the original str equals to 1 or greater
    if greater than 1 -> add ')' to the new_str
    if 1 -> add '(' to the new_str
- 

=end

def duplicate_encode(str)
  str = str.downcase 
  new_str = ''
  str.each_char do |char|
    str.count(char) == 1 ? new_str += '(' : new_str += ')'
  end
  new_str
end

p duplicate_encode("din") == "((("
p duplicate_encode("recede") == "()()()"
p duplicate_encode("Success") == ")())())" #"should ignore case"
p duplicate_encode("(( @") == "))(("