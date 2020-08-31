
STRINGS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(int)
  str = ""
  while int >= 0
    array = int.divmod(10)
    str.prepend(STRINGS[array[1]])
    int = array[0]
    break if int == 0
  end
  str
end

def signed_integer_to_string(int)
  return '0' if int == 0
  int.abs != int ? '-' + integer_to_string(-int) : '+' + integer_to_string(int)
end

p  signed_integer_to_string(4321) == '+4321'
p  signed_integer_to_string(-123) == '-123'
p  signed_integer_to_string(0) == '0'
