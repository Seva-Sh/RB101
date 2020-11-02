=begin 

Problem:
- An anagram is result of rearranging the letters of a word to produce 
- another word
- Case insensitive!
- Return true if two arguments given are anagrams of each other
- false otherwise

Input: str1 str2
Output: boolean

Algorithm:
- Each letter and their count in both strings should be equal
- Break str1 into an array of unique characters
  iterate over each and check if all characters are included in str2
  as well as their counts in both
- 

=end

def is_anagram(str1, str2)
  chars1 = str1.downcase.chars.sort
  chars2 = str2.downcase.chars.sort
  chars1 == chars2 ? true : false
end

p is_anagram('Creative', 'Reactive') == true #'The word Creative is an anagram of Reactive')
p is_anagram("foefet", "toffee") == true #'The word foefet is an anagram of toffee')
p is_anagram("Buckethead", "DeathCubeK") == true #'The word Buckethead is an anagram of DeathCubeK')
p is_anagram("Twoo", "WooT") == true #'The word Twoo is an anagram of WooT')
p is_anagram("dumble", "bumble") == false #'Characters do not match for test case dumble, bumble')
p is_anagram("ound", "round") == false #'Missing characters for test case ound, round')
p is_anagram("apple", "pale") == false #'Same letters, but different count')