# Complete the solution so that it returns the number of times the 
# search_text is found within the full_text.

# Usage example:

# solution('aa_bb_cc_dd_bb_e', 'bb') # should return 2 since bb shows up twice
# solution('aaabbbcccc', 'bbb') # should return 1


=begin 

Input:
Output:

Data types:

Algorithm:

=end

def substr(str)
  arr = []
  0.upto(str.size - 1) do |idx1|
    idx1.upto(str.size - 1) do |idx2|
      arr << str[idx1..idx2]
    end
  end
  arr
end

def solution(str1, str2)
  subs = substr(str1)
  count = 0
  subs.each do |sub|
    count += 1 if sub == str2
  end
  count 
end

p solution('abcdeb','b') == 2
p solution('abcdeb', 'a') == 1
p solution('abbc', 'bb') == 1