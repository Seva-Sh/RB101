# Given an array of integers
# Take that array and find an index N where the sum of the integers to the left 
# of N is equal to the sum of the integers to the right of N
# If not possible then return -1 
# Empty array = to 0

=begin 

Iterate over each element of an array using index position
During each iteration, get sum of all numbers of the left slice of the array
and right slice using indexes.
Compare and if equal return the current index
(Empty array equals to zero)

If there no equals return -1 

=end

def solve(arr)
  0.upto(arr.size - 1) do |idx|
    left_slice = arr[0...idx]
    right_slice = arr[(idx + 1)..-1]

    if left_slice == []
      left_slice = [0]
    elsif right_slice == []
      right_slice = [0]
    end

    return idx if left_slice.sum == right_slice.sum
  end

  -1
end

p solve([1, 2, 3, 4, 3, 2, 1]) == 3
p solve([1, 100, 50, -51, 1, 1]) == 1
p solve([1, 2, 3, 4, 5, 6]) == -1
p solve([20, 10, 30, 10, 10, 15, 35]) == 3
p solve([20, 10, -80, 10, 10, 15, 35]) == 0
p solve([-1, -2, -3, -4, -3, -2, -1]) == 3