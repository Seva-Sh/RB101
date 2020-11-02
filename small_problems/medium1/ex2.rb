=begin 

Problem:
- Method can rotate the last n digits of a number
- 
- 
- 
- 

Input: int, int
Output: int

Algorithm:
- In order to get the right integer
- We will convert the integer into a string object and break it into
- an array of chars
- In order to get the required construction of elements
- arr[0...n] + arr[n+1..-1] + arr[-n]

=end

def rotate_rightmost_digits(int, n)
  arr_nums = int.to_s.chars
  rotate_array(arr_nums, n).join.to_i
end

def rotate_array(arr, n)
  return arr if n == 1
  arr[0...-n] + arr[(-n + 1)..-1] + [arr[-n]]
end

# def rotate_rightmost_digits(number, n)
#   all_digits = number.to_s.chars
#   all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
#   all_digits.join.to_i
# end

# def rotate_array(arr)
#   arr[1..-1] + [arr[0]]
# end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917