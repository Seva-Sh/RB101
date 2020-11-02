=begin 

Problem:
- Given two array 'a' and 'b' , write a method that checks whether the two arrays 
- have the same elements, with the same multiplicities
- 'same' means, that the elements in `b` are the elements in `a` squared, regardsless 
- of the order
- 

Input: arr, arr
Output: boolean

Algorithm:
- Reassign both arrays to their ordered versions
- Iterate over each element of arr1 (using indexes (upto)), and check if 
  element with the same index in arr2 is equal to the square of the one in arr1
  If all true, return true, if not, false
- 

=end

def comp(arr1, arr2)
  arr1 = arr1.sort
  arr2 = arr2.sort
  
  0.upto(arr1.size - 1) do |idx|
    return false if arr2[idx] != arr1[idx] ** 2
  end

  true
end

p comp( [121, 144, 19, 161, 19, 144, 19, 11], 
  [11*11, 121*121, 144*144, 19*19, 161*161, 19*19, 144*144, 19*19]) == true