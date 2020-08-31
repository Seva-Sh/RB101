# Write a method takes an array of numbers
#
# Returns an array with the same number of elements
# and each element has the running total from the original array

def running_total(array)
  sum = 0
  new_array = []
  array.each do |num|
    sum += num
    new_array << sum
  end
  new_array
end

# or

# def running_total(array)
#   sum = 0
#   array.each_with_object([]) { |i, a| a << sum += i }
# end

def running_total(array)
  arr = []
  array.reduce(0) do |sum, i|
    arr << (sum + i)
    sum + i
  end
  arr
end

# def running_total(array)
#   sum = 0
#   array.map { |value| sum += value }
# end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []
