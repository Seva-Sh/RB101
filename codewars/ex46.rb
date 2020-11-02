=begin 

Problem:
- 
- 
- 
- 
- 

Input: int
Output: int

Algorithm:
- Break the given integer into an array of numbers
- Reassign the integer to the sum of all the numbers in the array
  if the result integer has only one digit -> return it
  if not, repeat the process
- 

=end

def digital_root(int)
  loop do
    return int if int.to_s.size == 1
    int = int.digits.sum
  end
end

p digital_root(16) == 7
p digital_root(942) == 6
p digital_root(132189) == 6
p digital_root(493193) == 2