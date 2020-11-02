=begin 

Problem:
- equilateral -> all 3 sides are of equal length
  isosceles -> 2 sides are of equal length, while 3rd is differetn
  scalene -> all 3 sides are of different length
- To have a valid triangle, the sum of the lengths of the two shortest sides
  must be greater than the length of the longest side
  All sides must have lengths greater than 0!
- Method should take the lengths of the 3 sides of a triangle as arguments
  Returns a symbol depending on the case

Input: 3 integers
Output: symbol

Algorithm:
- Initialize an empty array arr and add all the sides to it, sort them
- Make sure that the arr does not include 0,
  sum two shortest and check if it is greater than the longest
  return :invalid if any fail
- Check if last and middle elements are equal 
    if yes, check if first and middle elements are equal
      if yes, return equilateral
      if no, isosceles
    if no, scalene

=end

def valid?(arr)
  return false if arr.include?(0)
  return false if (arr[0] + arr[1]) < arr[-1]
  true
end

def triangle(side1, side2, side3)
  arr = [side1, side2, side3].sort 
  return :invalid if !valid?(arr)

  if arr[2] == arr[1]
    return arr[0] == arr[1] ? :equilateral : :isosceles
  else  
    return :scalene
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid