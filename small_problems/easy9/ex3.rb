=begin

Write a method that takes a number
If number is positive return negative
If 0 or negative return original

=end

def negative(num)
  if num > 0
    -num
  else
    num
  end
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0      # There's no such thing as -0 in ruby