# Write a program that soliccits 6 nums from the user
#
# Prints a message that says if the 6th number appears amongst the first 5 nums
# Collect 5 nums in an array - do value check and push in separate method
# Just do the check with 6th num

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

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'
