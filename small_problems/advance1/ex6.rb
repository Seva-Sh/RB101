=begin

:right - one angle is 90 degrees
:acute - all 3 angles are less than 90 degrees
:obtuse - one angle is greater than 90 degrees

to be valid, sum of all angles must be 180 deg && all angles > 0
if either one is not satisfied then :invalid

method takes 3 angles and return symbol

=end

def invalid?(arr)
  if arr.include?(0) || arr.sum != 180
    return true
  end 
  false
end

def triangle(side1, side2, side3)
  arr = [side1, side2, side3].sort
  return :invalid if invalid?(arr)
  if arr[2] == 90 
    return :right 
  elsif arr[2] > 90 
    return :obtuse
  end 
  :acute
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid