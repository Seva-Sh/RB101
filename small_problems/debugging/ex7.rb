=begin

does not remove all the negative words

=end

def neutralize(sentence)
  words = sentence.split(' ')
  new_sent = []
  words.each do |word|
    next if negative?(word)
    new_sent << word
  end

  new_sent.join(' ')
end

def negative?(word)
  [ 'dull',
    'boring',
    'annoying',
    'chaotic'
  ].include?(word)
end

puts neutralize('These dull boring cards are part of a chaotic board game.')
# Expected: These cards are part of a board game.
# Actual: These boring cards are part of a board game.