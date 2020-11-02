# Write a function that, given a string of text (possibly with punctuation 
#   and line-breaks), returns an array of the top-3 most occurring words, in 
#   descending order of the number of occurrences.

# Assumptions:
# A word is a string of letters (A to Z) optionally containing one or more 
# apostrophes (') in ASCII. (No need to handle fancy punctuation.)
# Matches should be case-insensitive, and the words in the result should be 
# lowercased.
# Ties may be broken arbitrarily.
# If a text contains fewer than three unique words, then either the top-2 or 
# top-1 words should be returned, or an empty array if a text contains no words.
# Examples:
# top_3_words("In a village of La Mancha, the name of which I have no desire to 
# call to
# mind, there lived not long since one of those gentlemen that keep a lance
# in the lance-rack, an old buckler, a lean hack, and a greyhound for
# coursing. An olla of rather more beef than mutton, a salad on most
# nights, scraps on Saturdays, lentils on Fridays, and a pigeon or so extra
# on Sundays, made away with three-quarters of his income.")
# # => ["a", "of", "on"]

# top_3_words("e e e e DDD ddd DdD: ddd ddd aa aA Aa, bb cc cC e e e")
# # => ["e", "ddd", "aa"]

# top_3_words("  //wont won't won't")
# # => ["won't", "wont"]

=begin 

Input:
Output:

Data types:

Algorithm:

=end

ALPH = ('a'..'z').to_a
ALLOWED = ('a'..'z').to_a + ["'"]

def clean_word(str)
  new_str = ''
  0.upto(str.size - 1) do |idx|
    if ALLOWED.include?(str[idx])
      new_str += str[idx]
      next 
    else  
      new_str += ''
    end
    
  end

  return '' if !new_str.chars.any? { |char| ALPH.include?(char) }
  new_str
end

def top_3_words(str)
  hsh = Hash.new(0)

  words = str.split
  words.map! { |word| word.delete('//') }
  words.map! { |word| clean_word(word.downcase) }
  words.delete('')

  words.each do |word|
    hsh[word] += 1
  end

  hsh = hsh.sort_by { |_,val| val }

  if hsh.size == 1
    [hsh[0][0]]
  elsif hsh.size == 2
    [hsh[1][0], hsh[0][0]]
  elsif hsh.size >= 3 
    [hsh[-1][0], hsh[-2][0], hsh[-3][0]]
  else  
    []
  end
end

# p top_3_words("a a a  b  c c  d d d d  e e e e e") == ["e", "d", "a"]
# p top_3_words("e e e e DDD ddd DdD: ddd ddd aa aA Aa, bb cc cC e e e") == ["e", "ddd", "aa"]
# p top_3_words("  //wont won't won't ") == ["won't", "wont"]
# p top_3_words("  , e   .. ") == ["e"]
# p top_3_words("  ...  ") == []
p top_3_words("  '  ") == []
p top_3_words("  '''  ") == []
# p top_3_words("""In a village of La Mancha, the name of which I have no desire to call to
# mind, there lived not long since one of those gentlemen that keep a lance
# in the lance-rack, an old buckler, a lean hack, and a greyhound for
# coursing. An olla of rather more beef than mutton, a salad on most
# nights, scraps on Saturdays, lentils on Fridays, and a pigeon or so extra
# on Sundays, made away with three-quarters of his income.""") == ["a", "of", "on"]
