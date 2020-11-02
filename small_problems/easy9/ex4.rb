=begin

Write a method that takes an integer argument 
Returns an array of integers in sequence
between 1 and the argument 

=end

def sequence(num)
  arr = []
  if num > 0
    1.upto(num) { |int| arr << int }
  else 
    num.upto(0) { |int| arr << int }
  end
  arr
end

def sequnce(num)
  (1..num).to_a
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(-5)