=begin 

Problem:
- Given an integer n find the maximal number you can obtain by deleting
- exactly one digit of the given number
- 
- 
- 

Input: int
Output: int

Algorithm:
- Find all the possible answer integers and choose the largest
- Break the integer into an array of digits(digits.reverse)
- Build an array of subarrays of length (int.length - 1) 
- Sort the subarrays by the value they carry (join the digits and convert to_i)
- 

=end

def get_subs(arr)
  result = []
  0.upto(arr.size - 1) do |idx|
    result << (arr[0...idx] + arr[(idx + 1)..-1])
  end
  result
end

def delete_digit(int)
  arr_digits = int.digits.reverse
  subarrays = get_subs(arr_digits)
  subarrays = (subarrays.map { |sub| sub.join.to_i }).max
end

p delete_digit(152) == 52
p delete_digit(1001) == 101
p delete_digit(10) == 1