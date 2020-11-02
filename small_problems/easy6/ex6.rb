# Write a method that takes two arrays as arguments
#
# Returns an array that contains all of the values from the argument arrays
# No duplicates

def merge(arr1, arr2)
  return (arr1 + arr2).uniq
end

def merge_two(arr1, arr2)
  arr2.each do |el|
    arr1.include?(el) ? next : arr1 << el
  end
  arr1
end

def merge(array_1, array_2)
  array_1 | array_2
end

p merge([1, 3, 5], [3, 6, 9])
