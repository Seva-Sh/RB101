# Write a method that takes an array as an argument
# Returns two arrays (as a pair of nested arrays)
# that contain the first half and second half of the original array
# if odd num of elements middle element should be in the first array

def halvsies(arr)
  new_arr = [[], []]
  if arr.size.odd?
    new_arr[0] = arr[0..(arr.size / 2)]
    new_arr[1] = arr[(arr.size / 2) + 1..-1]
    p new_arr
  else
    new_arr[0] = arr[0..(arr.size / 2) - 1]
    new_arr[1] = arr[(arr.size / 2)..-1]
    p new_arr
  end
end

def halvsies(array)
  middle = (array.size / 2.0).ceil
  first_half = array.slice(0, middle)
  second_half = array.slice(middle, array.size - middle)
  [first_half, second_half]
end

p halvsies([1, 2, 3, 4])
p halvsies([1, 5, 2, 4, 3])
p halvsies([5])
p halvsies([])
