=begin

input: positive integer
output: integer

algo:
Reverse digits of the integer
Take the first digit and miltiply it by 10 ** (length - 1)
Repeat till no digits left


=end

def reversed_number(int)
  new_int = 0
  num_length = int.to_s.length
  power = num_length - 1
  num_length.times do
    int, number = int.divmod(10)
    new_int += number * (10 ** power)
    power -= 1
  end
  new_int
end

def reversed_number(int)
  int.to_s.reverse.to_i
end

p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # No leading zeros in return value!
p reversed_number(12003) == 30021
p reversed_number(1) == 1
