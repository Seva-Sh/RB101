=begin 

Problem:
- Given two arrays of strings, return a sorted array in lexicographical order
  of the strings of a1 which are subs of strs of a2
- No duplicates in the returned array and do not mutate the inputs
- 
- 
- 

Input: arr, arr
Output: arr

Algorithm:
- arr will include all the arr1 subs that are included in arr2
- Iterate over each word arr2
    Iterate over each word in arr1 and check if it is included in the current
    word of arr2
    If it is included, then append it to arr
- Delete all the duplicates from arr
- Sort arr alphabetically, return it

=end

def in_array(arr1, arr2)
  arr = []
  arr2.each do |word|
    arr1.each do |sub|
      arr << sub if word.include?(sub)
    end
  end
  arr.uniq.sort
end

a1 = ["arp", "live", "strong"]
a2 = ["lively", "alive", "harp", "sharp", "armstrong"]
p in_array(a1, a2) == ["arp", "live", "strong"]
a1 = ["tarp", "mice", "bull"]
p in_array(a1, a2) == []