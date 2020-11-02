=begin

A featured number is an odd num that is a multiple of 7 and whose digits
occur eonly once
For examplem 49 is a featured one but 98is not (not odd)
97 is not (not a multiple of 7) 133 is not (digit 3 appears twice)

Call the method loop, pass a do..end as an argument
  within the block, check if featured? if yes return the num
  if no increment the int variable by 1 and repeat

featured? 
  if num.odd? && num % 7 == 0
    break our num into an array of digits and count the number of occurences
    of each digit
      if any are greater than 1 return false
      else return true

=end

def featured?(num)
  if num.odd? && num % 7 == 0
    num.digits.each do |digit|
      if num.digits.count(digit) > 1
        return false 
      end
    end
    return true
  end
  false
end

def featured(int)
  return "Error" if int >= 9_999_999_999
  loop do
    int += 1
    return int if featured?(int)
  end
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements
