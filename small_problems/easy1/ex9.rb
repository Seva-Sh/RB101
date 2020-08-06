# Method takes 1 arguments(positive integer)
#
# Returns a sum of the integers digits
#
#Turn into an array of digits, sum them up

# def sum(integer)
#   integer.digits.sum
# end

def sum(number)
  p number.to_s.chars.map { |element| element.to_i }.reduce(:+)
end


puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
