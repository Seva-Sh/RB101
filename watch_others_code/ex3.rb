=begin 

Problem:
- The max sum subarray problem consists of finding the maximum sum of a 
  contiguous subs in an array of ints
- If array consists of only negative nums return 0!
  Empty array -> 0!
- 

Input: arr of integers
Output: int

Algorithm:
- Check if we have an empty array or an array that only includes negatives
  Return 0 , if yes
- Iterate over every possible contiguous subarray 
  Outer iteration, starting from index 0 and going upto index arr.size - 1
  (this index would represent the start of our arr slice)
    inner iteration, starting from index 0 and going upto arr.size -1 
    (this index would represent the end of our arr slice)
    calculate the current sum , reassign the final sum, if current is greater,
    proceed to the next
- Return the sum

=end

def max_sequence(arr)
  return 0 if arr.empty? || arr.all? { |num| num.negative? }

  sum = 0
  0.upto(arr.size - 1) do |idx1|
    idx1.upto(arr.size - 1) do |idx2|
      sum = arr[idx1..idx2].sum if arr[idx1..idx2].sum > sum
    end
  end
  sum
end

p max_sequence([]) == 0
p max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) == 6
p max_sequence([11]) == 11
p max_sequence([-32]) == 0
p max_sequence([-2, 1, -7, 4, -10, 2, 1, 5, 4]) == 12


=begin 

Problem:
- Write a method to find the longest common prefix string amongst an array
  of strings. If there is no common prefix, return an empty string
- 
- 

Input: array of words
Output: str

Algorithm:
- Initialize a local var prefix = '' ; idx = 0
- Convert the first element of the array into an array of letter and start
  iterating over each letter. Upon each iteration
  Iterate over each word in the original array,
  If the letter occurs in every word, then by the end of iteration add the current
  letter to the prefix local var 
  If the letter does not occur, return prefix
  Increment idx by 1
- Return prefix

=end

def common_prefix(arr)
  prefix = ''
  idx = 0
  arr[0].chars.each do |char|
    arr.each do |word|
      return prefix if char != word[idx]
    end
    prefix += char
    idx += 1
  end
  prefix
end

puts common_prefix(["flower", "flow", "fliwht"]) == "fl"
puts common_prefix(["dog", "racecar", "car"]) == ""
puts common_prefix(["interspecies", "interstellar", "interstate"]) == "inters"
puts common_prefix(["throne", "dungeon"]) == ""
puts common_prefix(["throne", "throne"]) == "throne"

