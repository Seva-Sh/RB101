=begin 

Problem:
- Method should take a string adn return a hash that contains 3 entries
- percentage of chars that are lowercase, uppercase, and neither
- 

Input: str
Output: hsh

Algorithm:
- Initialize 3 counts for each case
- Iterate over each char in the string and increment count of lowcase/upcase/other
  (to do that build array of lowercase letters and an array of uppercase letters)
- Calculate the percentage of each and build the required hash

=end

LOWER_ALPH = ('a'..'z').to_a
UPPER_ALPH = ('A'..'Z').to_a

def letter_percentages(str)
  lower_count = 0.0
  upper_count = 0.0
  other = 0.0

  str.each_char do |char|
    if LOWER_ALPH.include?(char)
      lower_count += 1
    elsif UPPER_ALPH.include?(char)
      upper_count += 1
    else  
      other += 1
    end
  end

  hsh = {}
  lower_perc = (lower_count / str.size) * 100
  hsh[:lowercase] = lower_perc

  upper_perc = (upper_count / str.size) * 100 
  hsh[:uppercase] = upper_perc

  other_perc = (other / str.size) * 100
  hsh[:neither] = other_perc

  hsh
end

p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }