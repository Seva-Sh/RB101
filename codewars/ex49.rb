=begin 

Problem:
- Find if the given integer can be reconstructed to fit it the given formula
- 
- 
- 
- 

Input: int, int
Output: int

Algorithm:
- Given integer and a starting power, we want to break down the given integer
  into an array of nums
- Iterate over this array of nums and upon each iteration increment the power
  that each number needs to be raised, by 1. Sum the result
- See If the sum is divisible by the original num, and return the result if yes
  return -1 if no

=end

def dig_pow(int, power)
  p int 
  p power
  sum = 0
  int.digits.reverse.each do |num|
    sum += (num ** power)
    power += 1
  end

  sum % int != 0 || sum < int ? -1 : sum / int
end

p dig_pow(89, 1) == 1
p dig_pow(92, 1) == -1
p dig_pow(46288, 3) #== 51