# Write a method that combines two Arrays passed in as arguments
# Returns a new array that contains all elements from both array arguments
# with the elements taken in alternation

def interleave(arr1, arr2)
  new_arr = []
  arr1.length.times do |ind|
    new_arr << arr1[ind]
    new_arr << arr2[ind]
  end
  new_arr
end

def interleave(arr1, arr2)
  arr1.zip(arr2).flatten
end

p interleave([1, 2, 3], ['a', 'b', 'c'])
