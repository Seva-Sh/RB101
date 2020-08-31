# Write a method that takes a string with one or more space separated words
#
# Returns a hash that shows the number of words of different sizes
# Create a hash
# Split string into array, count length, insert length and initialize a count

def word_sizes(str)
  words_by_sizes = {}

  str.split.each do |word|
    if words_by_sizes.key?(word.size)
      words_by_sizes[word.size] += 1
    else
      words_by_sizes[word.size] = 1
    end
  end
  words_by_sizes
end

p word_sizes('Four score and seven.')
p word_sizes('Hey diddle diddle, the cat and the fiddle!')
p word_sizes("What's up doc?")
p word_sizes('') 
