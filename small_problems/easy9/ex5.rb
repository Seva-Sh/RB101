=begin

Write a method takes a string argument
Retuns true if all of the alphabetic chars are uppercase 
False otherwise

=end

ALPHABETS = ("A".."Z").to_a
ALPHABETS_LOW = ("a".."z").to_a

def uppercase?(str)
  # str.gsub(/^[0-9a-z]/i, '')
  str.chars do |char|
    if (ALPHABETS + ALPHABETS_LOW).include?(char)
      if ALPHABETS_LOW.include?(char)
        return false
      end
    end
  end
  true
end

def uppercase?(str)
  str == str.upcase
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true