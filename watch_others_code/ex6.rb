=begin 

Problem:
- Given an array of integers, find an index N where the sum of the integers
  to the left of N is equal to the sum of the integers to the right of N
- If no index that passes this condition, return -1
- Empty arrays are equal to 0

Input: arr
Output: int

Algorithm:
- Iterate over each elementh of the array using indexing and each time check,
  if the sum of the left side of that index might be equal to the sum of the right
  slice
- Account for empty arrays when iterating (idx 0 and idx -1)
- 

=end

def find_even_index(arr)
  return 0 if arr.empty?
  
  0.upto(arr.size - 1) do |idx|
    idx == 0 ? left_slice = [] : left_slice = arr[0...idx]
    idx == (arr.size - 1) ? right_slice = [] : right_slice = arr[(idx + 1)..-1]
    
    return idx if left_slice.sum == right_slice.sum
  end

  -1
end

p find_even_index([]) == 0
p find_even_index([1, 2, 3, 4, 3, 2, 1]) == 3
p find_even_index([1, 100, 50, -51, 1, 1]) == 1
p find_even_index([1, 2, 3, 4, 5, 6]) == -1
p find_even_index([20, 10, 30, 10, 10, 15, 35]) == 3
p find_even_index([10, -80, 10, 10, 15, 35, 20]) == 6
p find_even_index([-1, -2, -3, -4, -3, -2, -1]) == 3
