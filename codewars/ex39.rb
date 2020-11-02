=begin 

Problem:
- Find the greatest product of five consecutive digits in 
- the given string of digits
- 
- 
- 
- 

Input: str
Output: int

Algorithm:
- Convert the given string into an array of digits (string turned to integers)
- Iterate using indexes from 0 to str.size - 6
    upon each iteration select first five nums, calculate their product 
- Initialize two lcoal vars one will store the current product and one will
  store the highest product    
=end

def calculate_product(arr)
  arr.inject(:*)
end

def greatest_product(str)
  current_product = 0
  final_product = 0
  p str[16]
  nums = str.chars.map { |num| num.to_i }
  0.upto(str.size - 5) do |idx|
    
    current_product = calculate_product(nums[idx..(idx + 4)])

    if current_product > final_product
      final_product = current_product
    end
  end
  final_product
end

p greatest_product("123834539327238239583") #== 3240
# p greatest_product("395831238345393272382") == 3240
# p greatest_product("92494737828244222221111111532909999") == 5292
# p greatest_product("92494737828244222221111111532909999") == 5292
# p greatest_product("02494037820244202221011110532909999") == 0
