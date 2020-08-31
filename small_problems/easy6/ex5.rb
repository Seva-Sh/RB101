# String assortment of non-alphabetic characters
# Write a mehtod that returns string withh chars replaced by spaces
# if one or more chars repeat then only 1 space

# def clean(str)
#   word = str.split(//).map do |char|
#     if char =~ /\w/
#       char
#     else
#       char = ' '
#     end
#   end
#   word = word.join
#   # word = ' ' + word.lstrip if word[/\A */].size > 1
#   # word = word.rstrip + ' ' if word[/ *\z/].size > 1
#   # word.gsub!(/\s+/, "") if word == ' '
#   word
# end
#
# def cleanup(str)
#   words = str.split.map do |word|
#     clean(word)
#   end
#   # words.reject { |word| word.empty? }.join(' ')
#   words.join(' ').squeeze(' ')
# end



# their solution

ALPHABET = ('a'..'z').to_a

def cleanup(text)
  clean_chars = []

  text.chars.each do |char|
    if ALPHABET.include?(char)
      clean_chars << char
    else
      clean_chars << ' ' unless clean_chars.last == ' '
    end
  end
  clean_chars.join
end

def cleanup(text)
  text.gsub(/[^a-z]/i, ' ').squeeze(' ')
end

p cleanup("---what's my +*& line?")
