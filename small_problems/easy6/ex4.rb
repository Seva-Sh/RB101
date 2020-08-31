# Write a method that takes a string of words separated by spaces
#
# Returns a string in which the first and last letters of every word are swapped

def swap(str)
  array = str.split.map do |word|
    word[0], word[-1] = word[-1], word[0]
    word
  end
  array.join(' ')
end

# def swap(str)
#   answer = ''
#   str.split.each do |word|
#     if word.length > 1
#       first_letter = word[0]
#       last_letter = word[-1]
#       word.delete_suffix!(last_letter)
#       word.delete_prefix!(first_letter)
#       word = last_letter + word + first_letter
#     end
#     answer += word + ' '
#   end
#   answer.strip
# end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'
