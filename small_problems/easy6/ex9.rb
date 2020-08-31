# Write a method that takes a string argument
#
# Returns a new string that contains
# the value of the original string with all consecutive duplicate characters
# collapsed into a single character

# def crunch(str)
#   result_array = []
#   str.chars do |char|
#     result_array << char unless result_array.last == char
#   end
#   result_array.join
# end

def crunch(text)
  index = 0
  crunch_text = ''
  while index <= text.length - 1
    crunch_text << text[index] unless text[index] == text[index + 1]
    index += 1
  end
  crunch_text
end

p crunch('ddaaiillyy ddoouubbllee')
p crunch('4444abcabccba')
p crunch('ggggggggggggggg')
p crunch('a')
p crunch('')
