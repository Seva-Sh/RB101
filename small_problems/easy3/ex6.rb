# Exclusive OR
# XOR function takes 2 arguments
#
# Returns true if exactly one argument is truthy, false otherwise
#

def xor?(num1, num2)
  if num1 == false && num2 == false
    false
  elsif num1 == true && num2 == true
    false
  else
    true
  end
end

# def xor?(value1, value2)
#   return true if value1 && !value2
#   return true if !value1 && value2
#   false
# end
#
# def xor?(value1, value2)
#   !!((value1 && !value2) || (!value1 && value2))
# end

p xor?(5.even?, 4.even?)
p xor?(5.odd?, 4.odd?)
p xor?(5.odd?, 4.even?)
p xor?(5.even?, 4.odd?)
