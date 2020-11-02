=begin 

Problem:
- Method accepts a 2d array and returns the lcoation of the mine
- The mine is represented as the integer 1 in the 2d array,
  areas that are not mines are 0's
- Location returned should be an array with first element being the row index
  second element being the column index of the bomb location 
- 
- 

Input: 
Output: 

Algorithm:
- We have to find which array carries 1, and which element within that array
  carries one, those indexes will be our answers
- Assign a new local variable to an empty array 
- Iterate over element of the given array and check which nested array includes
1,
  once found, get the index of the object 1

=end

def mineLocation(arr)
  row = 0
  column = 0
  arr.each do |r|
    if r.include?(1)
      row = arr.index(r)
      column = r.index(1)
    end
  end

  [row, column]
end

p mineLocation([ [1, 0], [0, 0] ]) == [0, 0]
p mineLocation([ [1, 0, 0], [0, 0, 0], [0, 0, 0] ]) == [0, 0]
p mineLocation([ [0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 1, 0], [0, 0, 0, 0] ]) == [2, 2]
