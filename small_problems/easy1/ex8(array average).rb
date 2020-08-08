# Method takes 1 arguments(array containing integers)
#
# Returns the average of all numbers in the array
# (never empty, always positive, ALWAYS CHECK!)
#
# How to: iterate through array and add all integers / number of integers in array
#
# Including further ixploration

def average(array)
  puts array.sum.to_f / array.length
end

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

# def average(numbers)
#   sum = numbers.reduce { |sum, number| sum + number }
#   sum / numbers.count
# end
