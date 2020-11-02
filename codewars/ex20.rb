=begin 

Problem:
- take as string as an argument
- group the num of time each char appears in the string 
- as a hash sorted by the highest num of occurences
- chars sort alphabetically
- ignore eveything apart from alphs, upcase count as lowercase

Input: 
Output: 

Algorithm:
- Downcase given string
- Initialize empty hash with count as 0
- iterate over each char and count occurences of each

=end

ALLOWED = ('a'..'z').to_a + ('0'..'9').to_a
p ALLOWED
def get_char_count(str)

  hsh = Hash.new(0)
  str.downcase.each_char do |char|
    hsh[char] += 1 if ALLOWED.include?(char)
  end

  answer = Hash.new([])
  hsh.each do |key, value|
    answer[value] += [key]
  end

  answer.each_value do |val|
    val.sort!
  end
  answer
end

# p get_char_count("Mississippi") == {4=>["i", "s"], 2=>["p"], 1=>["m"]}
p get_char_count("Hello. Hello? HELLO!") == {6=>["l"], 3=>["e", "h", "o"]}
p get_char_count("aaa...bb...c!") == {3=>["a"], 2=>["b"], 1=>["c"]}
p get_char_count("abc123") == {1=>["1", "2", "3", "a", "b", "c"]}
p get_char_count("aaabbbccc") ==  {3=>["a", "b", "c"]}