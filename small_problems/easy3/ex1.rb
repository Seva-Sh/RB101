# Write a program that soliccits 6 nums from the user
#
# Prints a message that says if the 6th number appears amongst the first 5 nums
# Collect 5 nums in an array - do value check and push in separate method
# Just do the check with 6th num

five_numbers = []

def prompt(text)
  puts "==> " + text
end

def number_collection(count, five_numbers)
  prompt("Enter the #{count} number:")
  num = gets.to_i
  five_numbers << num
end

def display_number_check(array)
  prompt("Enter the last number:")
  last_num = gets.to_i
  if array.include?(last_num)
    puts "The number #{last_num} appears in #{array}."
  else
    puts "The number #{last_num} does not appear in #{array}."
  end
end

number_collection("1st", five_numbers)
number_collection("2nd", five_numbers)
number_collection("3rd", five_numbers)
number_collection("4th", five_numbers)
number_collection("5th", five_numbers)

display_number_check(five_numbers)
