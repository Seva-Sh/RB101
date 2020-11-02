=begin 

Problem:
- Empty arrays are equal to 0
- Return the first correct index
- Find the index where the sum of the integers to the left of n is equal to
  the sum of the integers to the right of n
- 
- 

Input: array
Output: integer

Algorithm:
- Starting from index 0, compare the sum values of the remaining elements to 
  the right and left. If they are equal then return the index
  If not, increase index by 1 and repeat the step.
- 
- 

=end

def find_even_index(arr)
  0.upto(arr.size - 1) do |idx|
    left = arr[0...idx] 
    left = [0] if left.empty?

    if idx == (arr.size - 1)
      right = [0] 
    else 
      right = arr[(idx + 1)..-1]
    end

    return idx if left.sum == right.sum 
  end

  -1 
end

p find_even_index([1,2,3,4,3,2,1]) == 3
p find_even_index([1,100,50,-51,1,1]) == 1
p find_even_index([1,2,3,4,5,6]) == -1
p find_even_index([20,10,30,10,10,15,35]) == 3
p find_even_index([20,10,-80,10,10,15,35]) == 0
p find_even_index([10,-80,10,10,15,35,20]) == 6
p find_even_index(Array(1..100)) == -1
p find_even_index([0,0,0,0,0]) == 0 #"Should pick the first index if more cases are valid"
p find_even_index([-1,-2,-3,-4,-3,-2,-1]) == 3
p find_even_index(Array(-100..-1)) == -1