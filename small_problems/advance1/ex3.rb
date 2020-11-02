=begin

First, we will initialize two constant variable 
arr1 => all lowercase alphabets
arr2 => all uppercase alphabets

within the method 
initialize three varaible to count each entry
Iterate over every character adding up to the initialized vars

initialize the result hash and insert 
key/value pairs where value will be a calculated percentage out of all the 
elements

=end

LOWER_LETTERS = ('a'..'z').to_a
UPPER_LETTERS = ('A'..'Z').to_a

def letter_percentages(str)
  lowercase = 0
  uppercase = 0
  neither = 0
  str.chars.each do |char|
    if LOWER_LETTERS.include?(char)
      lowercase += 1
    elsif UPPER_LETTERS.include?(char)
      uppercase += 1
    else 
      neither += 1
    end
  end
  total_chars = lowercase + uppercase + neither
  hsh = {}
  hsh[:lowercase] = ((lowercase.to_f / total_chars) * 100).round(2)
  hsh[:uppercase] = ((uppercase.to_f / total_chars) * 100).round(2)
  hsh[:neither] = ((neither.to_f / total_chars) * 100).round(2)
  hsh
end

p letter_percentages('abcdefGHI') == {:lowercase=>66.67, :uppercase=>33.33, :neither=>0.0}
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }