# You are given array of integers, your task will be to count all pairs 
# in that array and return their count.

# Notes:

# Array can be empty or contain only one value; in this case return 0
# If there are more pairs of a certain number, count each pair only once. 
# E.g.: for [0, 0, 0, 0] the return value is 2 (= 2 pairs of 0s)
# Random tests: maximum array length is 1000, range of values in array is 
# between 0 and 1000
# Examples
# [1, 2, 5, 6, 5, 2]  -->  2
# ...because there are 2 pairs: 2 and 5

# [1, 2, 2, 20, 6, 20, 2, 6, 2]  -->  4
# ...because there are 4 pairs: 2, 20, 6 and 2 (again)

=begin 

Input:array
Output:integer

Data types:

Algorithm:

Sort the integers in an ascending order
Iterate over each element
  Check if the next element is the same as the current 
  if yes, count a pair and make sure to skip the following index
  if no, proceed to next index
    
  safeguard against the end of the array to not get nils

=end

def pairs(arr)
  pairs = 0
  idx = 0
  sorted_arr = arr.sort
  loop do
    break if sorted_arr[idx + 1] == nil
    if sorted_arr[idx] == sorted_arr[idx + 1]
      pairs += 1
      idx += 2
    else  
      idx += 1
    end
  end

  pairs
end

p pairs([1, 2, 5, 6, 5, 2]) == 2
p pairs([1, 2, 2, 20, 6, 20, 2, 6, 2]) == 4
p pairs([0, 0, 0, 0, 0, 0, 0]) == 3 
p pairs([1000, 1000]) == 1
p pairs([]) == 0
p pairs([54]) == 0