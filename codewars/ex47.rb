=begin 

Problem:
- SUbtract one list from another and return the result
- Remove all values from list a which are present in list b
- 
- 
- 

Input: 
Output: 

Algorithm:
- 
- 
- 

=end

def array_diff(arr1, arr2)
  arr2.each do |el|
    arr1.delete(el) if arr1.include?(el)
  end
  arr1
end

p array_diff([1,2], [1]) == [2] #"a was [1,2], b was [1], expected [2]")
p array_diff([1,2,2], [1]) == [2,2] #"a was [1,2,2], b was [1], expected [2,2]")
p array_diff([1,2,2], [2]) == [1] #"a was [1,2,2], b was [2], expected [1]")
p array_diff([1,2,2], []) == [1,2,2] #"a was [1,2,2], b was [], expected [1,2,2]")
p array_diff([], [1,2]) == [] #"a was [], b was [1,2], expected []")
