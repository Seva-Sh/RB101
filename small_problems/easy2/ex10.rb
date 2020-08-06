# Method takes 2 arguments(a positive integer, boolean)
#
# Returns a calculated bonus for a given salary.
# If boolean is true, bonus will be half of the salary, if false then 0
#

array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
p array1.object_id
p array2.object_id
