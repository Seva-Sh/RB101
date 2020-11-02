=begin 

Problem:
- Given two words find how many letters you have to remove from both
- to make them anagrams
- 
- 
- 

Input: 
Output: 

Algorithm:
- Iterate over each UNIQUE characters of string 1
  if str 2 does not include this character, then skip to next
  if it does include, 
    check the count of that char in str1 and str2, select the least and 
    add that char*min count to answer_arr
- To calculate result -> (str1.size - answer_arr.join.size) + (str2.size - answer_arr.join.size) 

=end

def anagram_difference(str1, str2)
  answer_arr = []
  str1.chars.uniq.each do |char|
    if str2.include?(char)
      if str1.count(char) > str2.count(char)
        answer_arr << (char * str2.count(char))
      else  
        answer_arr << (char * str1.count(char))
      end
    end
  end
  p answer_arr
  result = (str1.size - answer_arr.join.size) + (str2.size - answer_arr.join.size)
end

# p anagram_difference('', '') == 0
# p anagram_difference('a', '') == 1
# p anagram_difference('', 'a') == 1
# p anagram_difference('ab', 'a') == 1
# p anagram_difference('ab', 'ba') == 0
# p anagram_difference('ab', 'cd') == 4
p anagram_difference('aab', 'a') #== 2
# p anagram_difference('a', 'aab') == 2
# p anagram_difference('codewars', 'hackerrank') == 10
