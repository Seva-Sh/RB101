# Given a non-empty string check if it can be constructed by taking a 
# substring of it and appending multiple copies of hte substring together.
# You may assume the given string consists of lowercase English letters only

# Input: 'abab'
# output: true
# explanation: it's a substring 'ab' twice
# 'aba'
# false

=begin 

Problem:
- Given a non-empty string, check if it can be constructed by taking a subs
  of it, and appending multiple copies of the subs together
- 
- 

Input: str
Output: boolean

Algorithm:
- starting from 1 and going upto str.size / 2,
  perform iteration, passing the mentioend numbers as end indexes,
  check if by multiplying the slices of str by the requried number
  (calculated using string size) we can construct the same original string
- 
- 

=end

def repeated_substring(str)
  0.upto(str.size / 2) do |end_idx|
    slice = str[0..end_idx]
    repeat_nums = str.size / slice.size
    return true if slice * repeat_nums == str
  end
  false
end

p repeated_substring('abab') == true
p repeated_substring('aba') == false
p repeated_substring('aabaaba') == false
p repeated_substring('abaababaab') == true
p repeated_substring('abcabcabcabc') == true
p repeated_substring('aaaaa') == true


=begin 

Problem:
- We are given an array of strings made only from lowercase letters
- Return an array of all characters that show up in all strings within the
  given array (including duplicates)
- 

Input: arr of words
Output: arr of letters

Algorithm:
- First element of the array would be our test string, and we will convert
  it into an array of unique chars -> 
- Iterating over each uniq character, 
    iterate over the remaining word (.each). Upon each iteration,
    count the number of occurences of that letter, and reassign if needed
    (to the lowest count out of all words)
    Append the [current letter] * count to the returning new_arr

- 

=end

def common_chars(arr)
  new_arr = []
  test_letters = arr[0].chars.uniq
  test_letters.each do |letter|
    count = arr[0].count(letter)
    arr.each do |word|
      temp_count = word.count(letter)
      count = temp_count if temp_count < count 
    end
    new_arr += [letter] * count 
  end
  new_arr
end

p common_chars(['bella', 'label', 'roller']) == ['e', 'l', 'l']
p common_chars(['cool', 'lock', 'cook']) == ['c', 'o']
p common_chars(['aabbaa', 'cccdddd', 'eeffee', 'ggrrrr']) == []
