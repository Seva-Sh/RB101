=begin 

Problem:
- 
- 
- 
- 
- 

Input: 
Output: 

Algorithm:
- Create an array containing alphabets
- Iterate over each element if the given string and build an array of 
  alphabetical chars
- Sort the array by the downcased letters, join chars into a single string object

=end

ALPH = ('a'..'z').to_a

def alphabetized(str)
  chars = str.chars.select { |char| ALPH.include?(char.downcase) }
  chars.sort_by { |char| char.downcase }.join
end

p alphabetized("") == ""
p alphabetized(" ") == ""
p alphabetized(" a") == "a"
p alphabetized("a ") == "a"
p alphabetized(" a ") == "a"
p alphabetized("A b B a") == "AabB"
p alphabetized(" a b c d e f g h i j k l m n o p q r s t u v w x y z A B C D E F G H I J K L M N O P Q R S T U V W X Y Z") == "aAbBcCdDeEfFgGhHiIjJkKlLmMnNoOpPqQrRsStTuUvVwWxXyYzZ"
p alphabetized("!@$%^&*()_+=-`,") == ""
p alphabetized("The Holy Bible") == "BbeehHilloTy"
p alphabetized("CodeWars can't Load Today") == "aaaaCcdddeLnooorstTWy"
