# Write a method that takes a string of digits
#
# Returns the number as an integer, the string may have a leading + or - sign
# Collect 5 nums in an array - do value check and push in separate method
# if + then return positive num, if - then return negative num, if no sign then positive

DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9,
  '-' => '-', '+' => '+'
}

def string_to_signed_integer(str)
  new_str = str.delete("+-")
  p str
  digits = str.chars.map { |char|  DIGITS[char] }
  optional_sign = get_optionals_sign(digits)
  power = 1
  value = 0
  digits.reverse.each do |num|
    value += num * power
    power *= 10
  end
  str.include?('-') ? -value : value
end

# def string_to_integer(str)
#   digits = str.chars.map { |char| DIGITS[char]}
#
#   value = 0
#   digits.each { |digit| value = 10 * value + digit }
#   value
# end
#
# def string_to_signed_integer(string)
#   signed_string = string_to_integer(string[1..-1])
#   case string[0]
#   when '-' then -signed_string
#   when '+' then signed_string
#   else          string_to_integer(string)
#   end
# end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100
