=begin 

Problem:
- Given an array of a length of at least 3, containing integers
  They are all either odd or even nums, except for a single int
- Method should take an array as an argument and return this outlier int

Input: arr
Output: int

Algorithm:
- We will have two counters, one will count even nums and one odd nums
- As soon as one counter reaches count of two, start checking the other
  counter, until it hits one, then return that 'odd' num
- To do it, we will iterate over each element in the array and count each num
  as mentioned above

=end

def find_outlier(arr)
  evens = []
  odds = []
  arr.each do |num|
    num.even? ? evens << num : odds << num

    if evens.size >= 2 && odds.size == 1
      return odds[0] 
    elsif evens.size ==1 && odds.size >= 2
      return evens[0] 
    end
  end
end

p find_outlier([0, 1, 2]) == 1
p find_outlier([1, 2, 3]) == 2
p find_outlier([2,6,8,10,3]) == 3
