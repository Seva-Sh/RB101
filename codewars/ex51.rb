=begin 

Problem:
- Input is a string of digits
-  Return '' if sz <= 0 or if str empty
  If sz is > than length of str then also return ''
- 
- 
- 

Input: 
Output: 

Algorithm:
- Cover edge cases at the beginning
- Slpit the string intp substrings of size 'sz', ignoring the last chunk if its
  size is less than 'sz'
- If a chunk represents an int such that -> sum of the cubes of its digits is
  divisible by 2 -> Reverse that chunk
  Otherwise, roate it to the left by one position 

=end

def get_sum(arr)
  sum = 0
  arr.each do |num|
    sum += num ** 3
  end
  sum 
end

def revrot(str, sz)
  return '' if sz <= 0 || str.empty? || sz > str.size
  chunks = []

  loop do
    break if str.size < sz
    chunks << str.slice!(0..(sz-1))
  end

  chunks.map! do |chunk|
    sum = get_sum(chunk.to_i.digits)
    if sum % 2 == 0
      chunk.chars.reverse.join
    else 
      chunk[1..-1] + chunk[0]
    end
  end
  chunks.join
end

p revrot("123456987654", 6) == "234561876549"

p revrot("123456987653", 6) == "234561356789"

p revrot("66443875", 4) == "44668753"

p revrot("66443875", 8) == "64438756"

p revrot("664438769", 8) == "67834466"

p revrot("123456779", 8) == "23456771"

p revrot("", 8) == ""

p revrot("123456779", 0) == ""

p revrot("563000655734469485", 4) == "0365065073456944"



p revrot("1234", 0) == ""

p revrot("", 0) == ""

p revrot("1234", 5) == ""

p revrot("733049910872815764", 5) == "330479108928157"

p revrot("123456987654", 6) == "234561876549"

p revrot("123456987653", 6) == "234561356789"

p revrot("66443875", 4) == "44668753"

p revrot("66443875", 8) == "64438756"

p revrot("664438769", 8) == "67834466"

p revrot("123456779", 8) == "23456771"

p revrot("", 8) == ""

p revrot("123456779", 0) == ""

p revrot("563000655734469485", 4) == "0365065073456944"


