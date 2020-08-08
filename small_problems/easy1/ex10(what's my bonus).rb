# Method takes 2 arguments(a positive integer, boolean)
#
# Returns a calculated bonus for a given salary.
# If boolean is true, bonus will be half of the salary, if false then 0
#

def calculate_bonus(salary, apply)
  apply ? salary / 2 : 0 
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000
