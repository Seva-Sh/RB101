=begin
Write a method that takes an Arrray of integers
Multiplies all the numbers together, divide the result by the number of entries in the array
Print the result rounded to 3 decimal places
=end

def show_multiplicative_average(arr)
  num = ((arr.inject(:*)) / arr.length.to_f)
  "The result is #{format('%.3f', num)}"
end

p show_multiplicative_average([3, 5])                # => The result is 7.500
p show_multiplicative_average([6])                   # => The result is 6.000
p show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667
