# In this kata, you've to count lowercase letters in a given 
# string and return the letter count in a hash with 'letter' 
# as key and count as 'value'. The key must be 'symbol' instead 
# of string in Ruby and 'char' instead of string in Crystal.

# Example:

# letterCount('arithmetics') #=> {:a=>1, :c=>1, :e=>1, :h=>1, 
#   :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}

=begin 

Input: string
Output: hash

Data types:

Algorithm:

Count lowercase letters in a string 
Return the letter count in a hash with 'letter' as key and count value

Initilialize local varaible count and assign it to an empty hash object
Iterate over each character of the string and count their occurences, append
each into the hash where key will be a symbol and value the count

=end

def letter_count(str)
  count = Hash.new(0)
  str.chars.each do |char|
    count[char.to_sym] += 1
  end
  count
end

p letter_count('codewars') == {:a=>1, :c=>1, :d=>1, :e=>1, :o=>1, :r=>1, :s=>1, :w=>1}
p letter_count('activity') == {:a=>1, :c=>1, :i=>2, :t=>2, :v=>1, :y=>1}
p letter_count('arithmetics') == {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}
