# The maximum sum subarray problem consists in findign the maximum sum of a
# contiguous sibsequence in an array of integers:

# maxseq [-2, 1, -3, 4, -1, 2, 1, -5,4]
# should be 6: [4, -1, 2, 1]
# Ease ccase is when the array is made up of only positive numbers and the maximum 
# sum is the sum of the whole array. If the array is made up of only negative
# numbers, return 0 instead

# Empty array is considered to have zero greatest sum. Note that the mpty array is
# also a valid subarray

=begin 

Build all the possible contiguous subarrays and assign the result to a local 
variable `subs`
this will be done by a helper method `get_subarrays`
To get all the possible subarrays I will perform a nested iteration
`0.upto(array.size-1)` and the argument that we will be passing to the 
`do..end` block would be a starting index, I will a similar line of code
representing the nested iteration
`start_idx.upto(array.size-1)`. However in this case we would be passing 
the end index to the inner `do..end` block

Sort `subs` by the sum of the numbers included in each subarray

return 0 if sorted array only includes negative numbers
or if it is an empty array
Grab the last subarray from our sorted array and return the sum of it

=end

def get_subs(arr)
  subs = []
  0.upto(arr.size - 1) do |idx1|
    idx1.upto(arr.size - 1) do |idx2|
      subs << arr[idx1..idx2]
    end
  end
  subs
end

def maxseq(arr)
  subs = get_subs(arr)

  sorted_subs = subs.sort_by { |sub| sub.sum }

  if  sorted_subs.empty? || sorted_subs[-1].all? { |n| n < 0 }
    0
  else
    sorted_subs[-1].sum
  end
end

p maxseq([]) == 0
p maxseq([-2, 1, -3, 4, -1, 2, 1, -5, 4]) == 6
p maxseq([11]) == 11
p maxseq([-32]) == 0
p maxseq([-2, 1, -7, 4, -10, 2, 1, 5, 4]) == 12



# Write a method to find the longest common prefix string amongst an array of 
# strings 

# If there is no common prefix, return an empty string "".

=begin

Initialize a local variable prefix, assign it to an empty string object
Perform iteration using method `each` on the first element of the given array,
passing each letter of the word to the `do..end` block
Upon each iteration, check if other word/words include the same letter.
Add it to prefix local variable if yes, exit the iteration if false

In order to check if multiple words include the same letter, we will have to 
perform a nested iteration using `each`. We will have a local variable count
to count the number of words that include this letter.
After completing this nested iteration we will check if count equals
to the size of the array of remaining words
If yes, then add to the prefix, no then break out of the loop 


=end

def solve(arr)
  prefix = ''
  0.upto(arr[0].size - 1) do |idx|
    if arr.all? { |word| word[idx] == arr[0][idx] }
      prefix += arr[0][idx]
    else 
      break
    end
  end
  prefix
end

p solve(['flower', 'flow', 'flight']) == 'fl'
p solve(['dog', 'racecar', 'car']) == ''
p solve(['interspecies', 'interstellar', 'interstate']) == 'inters'
p solve(['throne', 'dungeon']) == ''
p solve(['throne', 'throne']) == 'throne'


















