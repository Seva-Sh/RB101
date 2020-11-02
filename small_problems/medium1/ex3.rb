=begin 

Problem:
- Take an integer as an argument 
- Return the maximum rotation of that argument
- 
- 
- 

Input: int
Output: int

Algorithm:
- We can use our rightmost method
- Iterating over our array starting from index -arr.size upto -2
- 

=end

def max_rotation(int)
  new_int = int
  (-int.to_s.size).upto(-2) do |idx|
    new_int = rotate_rightmost_digits(new_int, -idx)
  end
  new_int
end

def rotate_rightmost_digits(int, n)
  arr_nums = int.to_s.chars
  rotate_array(arr_nums, n).join.to_i
end

def rotate_array(arr, n)
  return arr if n == 1
  arr[0...-n] + arr[(-n + 1)..-1] + [arr[-n]]
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845