=begin 

Problem:
- Given 2 strings, your job is to find out if there is a substring that appears
  in both strings 
- You will return true if you find a substring that appears in both strigns 
  and false if not
- A substring is longer than 1 character

Input: str, str
Output: boolean

Algorithm:
- Build an array that will include all the subarray of string2 that are longer
  than 1 char
  To do that, create a helper method get_subs. Within it
  Perform a nested iteration.
  In the outer iteration, iterate using indexes starting from 0 upto (str.size - 1)
  and pass starting index as an argument.
  In the inner iteration, start from the starting index and go upto (str.size - 1)
  and pass an end index as an argument. Only select and append subs that are of
  size 2 and greater.
- Check if any of subs are included in string1,
  If eys, return true; if no, return false
- 

=end

def get_subs(str)
  subs = []
  0.upto(str.size - 1) do |idx1|
    idx1.upto(str.size - 1) do |idx2|
      subs << str[idx1..idx2] if str[idx1..idx2].size >= 2
    end
  end
  subs
end

def substring_test(str1, str2)
  subs = get_subs(str2.downcase)
  p subs
  subs.each do |sub|
    return true if str1.downcase.include?(sub)
  end

  false
end

puts substring_test('Something', 'Fun') == false
puts substring_test('Something', 'Home') == true
puts substring_test('Something', ' ') == false
puts substring_test('BANANA', 'banana') == true
puts substring_test('test', 'llt') == false
puts substring_test(' ', ' ') == false
puts substring_test('1234567', '541265') == true

=begin 

Problem:
- Write a method that returns true if a portion of str1 characters can be rearranged
  to match str2, otherwise, return false
- 
- 

Input: str1, str2
Output: boolean

Algorithm:
- Select unique characters of str2, and iterate over them.
  Check if each char is available in str1
    if yes, check if the count of that char in str2 is equal to the count in str1
      if yes, for all, then return true
- If any return false, return false

=end

def scramble(str1, str2)
  str2.chars.uniq.each do |char|
    if str1.include?(char)
      return false if str2.count(char) > str1.count(char)
    else  
      return false
    end
  end

  true
end

p scramble('javaass', 'jjss') == false
p scramble('rkqodlw', 'world') == true
p scramble('cedewaraaossoqqyt', 'codewars') == true
p scramble('katas', 'steak') == false
p scramble('scriptjava', 'javascript') == true
p scramble('scriptingjava', 'javascript') == true
