# Write a method that takes two strings as arguments
#
# determines the longest of the two strings
# then returns the result of concatenating the
# shorter string + longer string + shorter string

def word_sizes(str)
  words_by_sizes = Hash.new(0)
  str.gsub!(/[^a-z ]/i, '')
  p str
  str.split.each do |word|
    words_by_sizes[word.size] += 1
  end
  words_by_sizes
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}

# or
clean_word = word.delete('^A-Za-z')
