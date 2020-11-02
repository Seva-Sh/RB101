# For a given nonempty string s find a minimum substring t and the maximum 
# number k, such that the entire string s is equal to t repeated k times. 
# The input string consists of lowercase latin letters. Your function should 
# return an array (in Ruby and JavaScript) [t, k]

# Example #1:

# for string

# s = "ababab"
# the answer is

# ["ab", 3]
# Example #2:

# for string

# s = "abcde"
# the answer is

# because for this string "abcde" the minimum substring t, such that s is t 
# repeated k times, is itself.

=begin 

Input:
Output:

Data types:

Algorithm:
Starting with index 0 and going up to half size of the string
check if the string can be built with a str slice [0..idx]
as soon as you receive true, return that substring and the number of multiplications 
required
if no, then at the end of the program return the whole string and 1

=end

def f(str)
  1.upto(str.size / 2) do |idx|
    number_of_subs = str.size / idx
    if str[0...idx] * number_of_subs == str
      return [str[0...idx], number_of_subs]
    end
  end
  [str, 1]
end

p f("ababab") ==  ["ab", 3]
p f("abcde") == ["abcde", 1]