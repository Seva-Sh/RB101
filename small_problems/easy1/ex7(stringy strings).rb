# Method takes 1 arguments(positive integer)
#
# Returns a string of alternating 1 and 0, always starts with 1,
# string length equals integer length

def stringy(integer, starts_with = 1)
  string = ''
  integer.times do |num|
    if starts_with == 1
      num.even? ? string << '1' : string << '0'
    else
      num.even? ? string << '0' : string << '1'
    end
  end
  return string
end

puts stringy(6) == '101010'
puts stringy(6, 0) == '010101'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
