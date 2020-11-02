# Write a method that takes two array arguments in which each array contains
# a list of nums and returns a new array that contains
# the product of each pair of numbers from the arguments that have the same index

def multiply_list(arr1, arr2)
  new_arr = []
  arr1.size.times do |ind|
    new_arr << arr1[ind] * arr2[ind]
  end
  new_arr
end

def multiply_list(arr1, arr2)
  arr1.zip(arr2).map{ |arr| arr.inject(:*) }
end

p multiply_list([3, 5, 7], [9, 10, 11]) # == [27, 50, 77]
