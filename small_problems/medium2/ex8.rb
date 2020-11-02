=begin 

Problem:
- A feat num, is an odd num that is a multiple of 7, and whose digits occur
  exactly once each
- Method should take a single integer as an argument,
  Return the net featured num that is greater than the argument
- Issue an error message if there is no next featured num

Input: int
Output: int, error message str

Algorithm:
- Starting from the given num + 1, upto 10_999_999_999
  perform iteration, each time passing a new num as an argument.
  Check if that num is a featured num? (call a helper method)
  If yes, return that num
  If no, proceed to next num
- is_featured? has to perform three checks
  the number is an odd number; it is a multiple of 7; its digits occur only once
  If all checks pass, return true
  else, return false

=end

def is_featured?(int)
  if int.odd? && int % 7 == 0 
    return true if int.digits.reverse.uniq.join.to_i == int 
  end
  false
end

def featured(int)
  (int + 1).upto(10_999_999_999) do |num|
    return num if is_featured?(num)
  end
  'There is no possible number that fulfills those requirements'
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements