=begin 

Problem:
- Method takes an array of consecutive letters as input 
- Returns the missing letter in the array
- 
- 
- 

Input: arr
Output: str

Algorithm:
- Construct an alphabet (array of all letters) and assign it to a constant
- In the given array the first letter will be the strat of a slice of alph
  last element will be the end of a slice. We need to compare the given letters
  to an actual slice of alphabet from the constant.
  Get the missing element and return it
- To consruct the right slice of letters from the alphabet,
  Start from the index of the first letter and go upto the index of the last 
  letter.
  Iterate over the resulted slice and check if that letter is included in the
  provided array. If not, return that letter
=end

ALPH = ('A'..'Z').to_a + ('a'..'z').to_a

def find_missing_letter(arr)
  start_slice = ALPH.index(arr[0])
  end_slice = ALPH.index(arr[-1])
  alph_slice = ALPH[start_slice..end_slice]
  alph_slice.each do |el|
    return el if !arr.include?(el)
  end
end

p find_missing_letter(["a","b","c","d","f"]) #== "e"
p find_missing_letter(["O","Q","R","S"]) == "P"
p find_missing_letter(["b","d"]) == "c"
p find_missing_letter(["a","b","d"]) == "c"
p find_missing_letter(["b","d","e"]) == "c"
