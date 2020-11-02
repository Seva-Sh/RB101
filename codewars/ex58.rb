=begin 

Problem:
- Count lowercase letters in a given str
- Return the letter count in a hash with letter as key and count as value
- Key must be symbol 
- 
- 

Input: str
Output: hsh

Algorithm:
- Build a constant array that will include all lowercase alphabets
- Initialize a new hsh object Hash.new(0)
- Iterate over each letter in the str,
  if ALPH includes the current char, then add it to our hsh
- Return the result hsh

=end

ALPH = ('a'..'z').to_a

def letter_count(str)
  hsh = Hash.new(0)
  str.each_char do |char|
    hsh[char.to_sym] += 1 if ALPH.include?(char)
  end
  hsh
end

p letter_count('codewars') == {:a=>1, :c=>1, :d=>1, :e=>1, :o=>1, :r=>1, :s=>1, :w=>1}
p letter_count('activity') == {:a=>1, :c=>1, :i=>2, :t=>2, :v=>1, :y=>1}
p letter_count('arithmetics') == {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}
