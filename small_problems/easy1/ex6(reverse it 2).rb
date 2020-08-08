# frozen_string_literal: true

# Method takes 1 arguments(string with one or more words)
#
# Returns same string with words that contain >= 5 characters reversed
# others stay same.

# Convert into array via split, itterate over this array:
# if word length is >= 5 then reverse

def reverse_words(string)
  reversed = string.split.each do |word|
    word.reverse! if word.length >= 5
  end
  reversed.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
