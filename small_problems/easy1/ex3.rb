=begin

Method takes 1 arguments(positive integer)

Returns a list of the digits in the number

=end

def digit_list(integer)
  integer.digits.reverse
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true


# number.to_s.chars.map { |num| num.to_i }
