=begin 

Problem:
- Given an array of int, find minimum num to be inserted in a list so that 
- sum of all elements of list should equal the closest prime number
- 
- 
- 

Input: 
Output: 

Algorithm:
- Create a helper method is_prime? that will check if the provided number
  is a prime number.
  Prime num is only divisible by itself and 1, so to check if it is a prime num
  iterate over numbers starting from 2 upto given num - 1 and see if our
  num is divisible by any. 
    If yes, then it is not a prime num, if no, then it is
- Assign a sum of the given array to a local var
  initialize local var add_num and assign it to 0, this will be the amount that
  needs to be added to the given array.
- Create a simple loop with a do..end block
    break if sum + add_num is a prime num
    add 1 to add_num
  Return add_num

=end

def is_prime?(num)
  2.upto(num - 1) do |n|
    return false if num % n == 0
  end
  true
end

def minimum_number(arr)
  sum = arr.sum
  add_num = 0
  loop do
    break if is_prime?((sum + add_num))
    add_num += 1
  end
  add_num
end

p minimum_number([3,1,2]) #== 1
p minimum_number([5,2]) == 0
p minimum_number([1,1,1]) == 0
p minimum_number([2,12,8,4,6]) == 5
p minimum_number([50,39,49,6,17,28]) == 2
