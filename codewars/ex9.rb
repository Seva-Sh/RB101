# Background
# There is a message that is circulating via public media that claims a reader 
# can easily read a message where the inner letters of each words is scrambled, 
# as long as the first and last letters remain the same and the word contains
# all letters.

# Another example shows that it is quite difficult to read the text where all 
# the letters are reversed rather than scrambled.

# In this kata we will make a generator that generates text in a similar pattern, 
# but instead of scrambled or reversed, ours will be sorted alphabetically

# Requirement
# return a string where:

# 1) the first and last characters remain in original place for each word
# 2) characters between the first and last characters must be sorted alphabetically
# 3) punctuation should remain at the same place as it started, for example: 
# shan't -> sahn't

# Assumptions

# 1) words are seperated by single spaces
# 2) only spaces separate words, special characters do not, for example: 
#   tik-tak -> tai-ktk
# 3) special characters do not take the position of the non special characters, 
#   for example: -dcba -> -dbca
# 4) for this kata puctuation is limited to 4 characters: 
# hyphen(-), apostrophe('), comma(,) and period(.)
# 5) ignore capitalisation

=begin 

Input:
Output:

Data types:

Algorithm:
Split all words by split(' ')
if str is 0..2 size then return same

Iterate

=end

# 'professionals'.chars.sort { |a,b| a <=> b }

ALPH = ('a'..'z').to_a

def arrange_word(arr)
  arranged_ones = arr[1..-2].sort { |a, b| a <=> b }

  [arr[0]] + arranged_ones + [arr[-1]]
end

def build_str(make_word, arr_letters)
  0.upto(make_word.size - 1) do |idx|
    next if make_word[idx] != '_'

    make_word[idx] = arr_letters.shift
  end
  make_word
end

def scramble_words(str)
  answer = []
  str.split.each do |word|
    return_word = ''
    temp_str = []
    0.upto(word.size - 1) do |idx|

      if !ALPH.include?(word[idx])
        return_word += word[idx]
      elsif ALPH.include?(word[idx])
        temp_str << word[idx]
        return_word += '_'
      end
    end
    temp_str = arrange_word(temp_str)
    ready_str = build_str(return_word, temp_str)
    answer << ready_str
  end
  answer.join(' ')
end

p scramble_words('professionals') == 'paefilnoorsss' #'The first and last letters of a word should reamin in place with the inner letters sorted'
p scramble_words('i') == 'i' #'Must handle single charater words'
p scramble_words('') == '' #'Must handle empty strings'
p scramble_words('me') == 'me' #'Must handle 2 charater words'
p scramble_words('you') == 'you' #'Must handle 3 charater words'
p scramble_words('card-carrying') == 'caac-dinrrryg' #'Only spaces separate words and punctuation should remain at the same place as it started'
p scramble_words("shan't") == "sahn't" #'Punctuation should remain at the same place as it started'
p scramble_words('-dcba') == '-dbca' #'Must handle special character at the start'
p scramble_words('dcba.') == 'dbca.' #'Must handle special character at the end'
p scramble_words("you've gotta dance like there's nobody watching, love like you'll never be hurt, sing like there's nobody listening, and live like it's heaven on earth.") == "you've gotta dacne like teehr's nbdooy wachintg, love like ylo'ul neevr be hrut, sing like teehr's nbdooy leiinnstg, and live like it's haeevn on earth." #'Must handle a full sentence'
