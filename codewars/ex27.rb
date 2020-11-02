=begin 

Problem:
- Method takes two integers and returns the value of th efirst argument
- raised to the power of the second
- Return nil if the second argument is negative
- Can't use **
- 

Input: 
Output: 

Algorithm:
- Initialize a local variable total and assign it to the first integers value
- Perform iteration 
- 

=end

def power(num, pow)
  if pow == 0
    return 1
  elsif pow < 0
    return nil
  end 

  total = num 
  2.upto(pow) do 
    total = total * num
  end
  total
end

p power(2, 3) # 8
p power(10, 0) # 1
p power(-5, 3) # -125
p power(-4, 2) # 16