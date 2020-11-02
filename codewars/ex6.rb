# Given a string of integers, return the number of odd-numbered substrings 
# that can be formed.

# For example, in the case of "1341", they are 1, 1, 3, 13, 41, 341, 1341, 
#   a total of 7 numbers.

# solve("1341") = 7. See test cases for more examples.

=begin 

Input: string
Output: integer

Data types:

Algorithm:



=end

def get_subs(str)
  arr = []
  0.upto(str.size - 1) do |idx1|
    idx1.upto(str.size - 1) do |idx2|
      arr << str[idx1..idx2]
    end 
  end 
  arr
end

def solve(str)
  subs = get_subs(str)
  subs.select! { |sub| sub.to_i.odd? }
  subs.size
end

p solve("1341") == 7
p solve("1357") == 10
p solve("13471") == 12
p solve("134721") == 13
p solve("1347231") == 20
p solve("13472315") == 28
