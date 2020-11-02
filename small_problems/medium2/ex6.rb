=begin 

Problem:
- right -> one angle of the trianlge is a right angle (90 deg)
  acute -> all 3 angles of the triangle are less than 90 degrees
  obtuse -> 1 angle is greater than 90 degrees
- To be valid, sum of all angles must be 180 deg
  All angles must be greater than 0
  If any fail return :invalid
- Method takes 3 angles as arguments and returns a symbol as an answer

Input: 3 integers
Output: symbol

Algorithm:
- Check if any angle is less or equal to 0
  Make sure they sum up to 180
- If all less than 90, return acute
  if one equal to 90, return right
  else return obtuse
- 

=end

def triangle(ang1, ang2, ang3)
  arr = [ang1, ang2, ang3]
  if arr.include?(0) || arr.sum != 180
    return :invalid 
  end

  if arr.all? { |el| el < 90 }
    return :acute 
  elsif arr.any? { |el| el == 90 }
    return :right  
  else  
    return :obtuse
  end
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid