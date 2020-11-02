=begin 

Problem:
- Method should receive an array as unique parameter and return a hash
- EMpty or nil input must return NIL
- Hash must contain as keys the unique values of the array
  and as values the count of each value

Input: arr
Output: hsh

Algorithm:
- Create a guard against empty or nil imput
- Initialize a hash object Hash.new(0)
- Iterate over each element in the array and count the occurence of each
  unique element

=end

def group_and_count(arr)
  return nil if arr == nil || arr.empty?
  hsh = Hash.new(0)
  arr.each do |el|
    hsh[el] += 1
  end

  hsh
end

p group_and_count([0,1,1,0]) == {0=>2, 1=>2}