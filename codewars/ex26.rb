=begin 

Problem:
- Get two integer arrays of eqaul length
- Compare value of each member in one array to another
- square absolute value diffrence between those two values
- return average of squared abs value difference
- 

Input: 
Output: 

Algorithm:
- initialize a local variable diff and assign it to an empty array
- iterate over both arrys using indexes (0.upto(arr1. size - 1))
- calculate abs difference and add it to an empty array
- Sum all the values in diff array and divide by diff.size 

=end

def solution(arr1, arr2)
  diff = []
  0.upto(arr1.size - 1) do |idx|
    diff << (arr1[idx] - arr2[idx]) ** 2
  end
  (diff.sum) / diff.size.to_f
end

p solution([1, 2, 3], [4, 5, 6]) == 9
p solution([10, 20, 10, 2], [10, 25, 5, -2]) == 16.5
p solution([-1, 0], [0, -1]) == 1