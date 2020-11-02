=begin

:equilateral - all 3 sides are of equal length
:isoscelec - 2 sides equal, 3rd different
:scalene - all 3 sides different

sum of the lengths of the two shortest sides must be greater than 
lenght of the longest
all sides must have lengths greater than 0

method takes lengths of the 3 sides of a triangle 
returns simbol of three mentioned or invalid 

=end

def invalid?(arr)
  sum = arr[0] + arr[1]
  return true if arr.include?(0) || sum < arr[2]
  false
end

def two_equal_sides?(arr)
  return true if arr[0] == arr[1] || arr[0] == arr[2] || arr[1] == arr[2]
  false
end

def triangle(l1, l2, l3)
  arr = [l1, l2, l3].sort
  return :invalid if invalid?(arr)
  if ((arr[0] + arr[1]) / 2) == arr[2]
    return :equilateral
  elsif two_equal_sides?(arr)
    return :isosceles 
  end 
  :scalene
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid