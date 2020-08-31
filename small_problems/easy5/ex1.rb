# Write a method that determines and returns the ascii string value of a string
# that is passed in as an argument
#
# ASCII string value is the sum of values of all ascii characters

def ascii_value(str)
  value = 0
  str.each_char { |char| value += char.ord }
  value
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0

char = 'a'
puts char.ord.chr == char

# will not work on strings longer than a single character because #ord
# only works on a one character string and will ignore the rest of the
# string called by it
