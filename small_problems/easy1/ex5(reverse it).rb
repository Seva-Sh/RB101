# frozen_string_literal: true

# Method takes 1 arguments(string)
#
# Returns a new string with words in reverse order

def reverse_sentence(string)
  string.split.reverse.join(' ')
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
