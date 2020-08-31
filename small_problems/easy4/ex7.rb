# Write a method that takes a string of digits
#
# Returns the appropriate number as an integer

# def string_to_integer(str)
#   nums_array = str.split(//)
#   total = 0
#   power = 1
#   nums_array.reverse.each do |num|
#     total += (num.ord - 48) * power
#     power *= 10
#   end
#   return total
# end

# DIGITS = {
#   '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
#   '5'  => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
# }
#
# def string_to_integer(str)
#   digits = str.chars.map { |char| DIGITS[char]}
#
#   value = 0
#   digits.each { |digit| value = 10 * value + digit }
#   value
# end
#
# p string_to_integer('4321')
# p string_to_integer('570')

HEXA = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9,
  'A' => 10, 'B' => 11, 'C' => 12, 'D' => 13, 'E' => 14,
  'F' => 15
}

def hexadecimal_to_integer(str)
  digits = str.chars.map { |char| HEXA[char.capitalize]}
  power = 1
  value = 0
  digits.reverse.each do |num|
    value += num * power
    power *= 16
  end
  p value
end

p hexadecimal_to_integer('4D9f') == 19871
