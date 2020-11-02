# The vowel substrings in the word codewarriors are o,e,a,io. 
# The longest of these has a length of 2. Given a lowercase string that 
# has alphabetic characters only (both vowels and consonants) and no spaces, 
# return the length of the longest vowel substring. Vowels are any of aeiou.

=begin 

Input: string
Output: integer

Data types:

Algorithm:
Have an arrays of vowels

Build an array of all possible substrings

Select the ones that consist of only vowels

Sort and choose the largest

=end

VOWELS = ['a', 'o', 'i', 'e', 'u']

# def get_subs(str)
#   arr = []
#   0.upto(str.size - 1) do |idx1|
#     (idx1+1).upto(str.size - 1) do |idx2|
#       arr << str[idx1..idx2] if vowels?(str[idx1..idx2])
#     end
#   end
#   arr
# end

# def vowels?(str)
#   str.each_char do |char|
#     return false if !VOWELS.include?(char)
#   end

#   true
# end

# def solve(str)
#   subs = get_subs(str)
#   # subs.select! { |sub| vowels?(sub) }

#   if subs.empty?
#     return str.chars.any? { |char| VOWELS.include?(char) } ? 1 : 0
#   end

#   sorted_subs = subs.sort_by { |sub| sub.size }

#   sorted_subs[-1].size
# end

def solve(str)
  new_str = ''
  temp = ''
  0.upto(str.size - 1) do |idx|
    if VOWELS.include?(str[idx])
      temp += str[idx]
      new_str = temp if temp.size > new_str.size
    else  
      temp = ''
    end
  end
  new_str.size
end

p solve("codewarriors") == 2
p solve("suoidea") == 3
p solve("iuuvgheaae") == 4
p solve("ultrarevolutionariees") == 3
p solve("strengthlessnesses") == 1
p solve("cuboideonavicuare") == 2
p solve("chrononhotonthuooaos") == 5
p solve("iiihoovaeaaaoougjyaw") == 8
