=begin 

Problem:
- Task is to reverse and combine words
- String of words separated by spaces
- More than one word? reverse each and combine 1 with 2, 3 with 4
  Odd num of words? -> last one stays alone but also reversed
- Start process again until theres only one word left
- Return that

Input: str
Output: str

Algorithm:
- Split the string into an array of words and assign it to arr
- Iterate over each element using indexes (using general loop method, and a local
  var as idx counter),
  if arr size is an odd num, append last element alone reversed
  otherwise, add current element with the next (both reversed) and skip one index
- 

=end

def reverse_and_combine_text(str)
  arr = str.split 
  new_arr = nil
  idx = nil
  loop do
    break if arr.size == 1
    new_arr = []
    idx = 0
    loop do
      break if arr.size == idx
  
      if arr.size.odd? && arr[idx] == arr[-1]
        new_arr << arr[idx].reverse 
        break
      end
  
      new_arr << (arr[idx].reverse + arr[idx + 1].reverse)
      idx += 2 
    end
    arr = new_arr
  end
  arr[0]
end

# p reverse_and_combine_text("abc def") == "cbafed"
p reverse_and_combine_text("abc def ghi jkl") == "defabcjklghi"
p reverse_and_combine_text("dfghrtcbafed") == "dfghrtcbafed"
p reverse_and_combine_text("234hh54 53455 sdfqwzrt rtteetrt hjhjh lllll12  44") == "trzwqfdstrteettr45hh4325543544hjhjh21lllll"
p reverse_and_combine_text("sdfsdf wee sdffg 342234 ftt") == "gffds432243fdsfdseewttf"
