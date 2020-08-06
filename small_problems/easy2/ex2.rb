# Method takes 2 arguments length and width of the room(positive integer,positive integer)
#
# Displays the area of the room in both squar meters and square feet
#

SQMETERS_TO_SQFEET = 10.7639

puts "Enter the length of the room in meters:"
length = gets.chomp.to_f

puts "Enter the width of the room in meters:"
width = gets.chomp.to_f

area_square_m = length * width.round(2)
area_square_f = (area_square_m * SQMETERS_TO_SQFEET).round(2)

puts "The area of the room is #{area_square_m} " + \
      "square meters (#{area_square_f} square feet)."

# Further Exploration
# Ask input in feet
# Display result in square feet, square inches, square centimeters

SQFEET_TO_SQINCHES = 144
SQFEET_TO_SQCMETERS = 929.0304

puts 'Enter the length of the room in feets:'
length = gets.chomp.to_f

puts 'Enter the width of the room in feets:'
width = gets.chomp.to_f

area_square_f = (length * width).round(2)
area_square_in = (area_square_f * SQFEET_TO_SQINCHES).round(2)
area_square_cm = (area_square_f * SQFEET_TO_SQCMETERS).round(2)

puts "The area of the room is #{area_square_f} \
square feet, #{area_square_in} square inches \
and #{area_square_cm} square centimeters."
