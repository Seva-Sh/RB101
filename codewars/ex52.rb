=begin 

Problem:
- Given a secret message, decipher
- Second and last letters are switched 
- First letter is replaced by its char code .chr
- 
- 

Input: 
Output: 

Algorithm:
- Split the given string into an array of words
- Iterate over each word 
    inititalize local var str and assign it to an empty string
    get the number (to retirieve the first letter) -> do it by using a help meth
    
- get_let, iterate over each char, if char is a number, add it to a local var
    num

=end

def get_let(word)
  num = ''
  word.chars.each do |char|
    num += char if char.to_i.to_s == char
  end
  num
end

def decipher_this(str)
  words = str.split
  modified = []
  words.each do |word|
    str = ''
    first_let = get_let(word)
    word.delete!(first_let)
    str += first_let.to_i.chr

    if word.length == 1
      modified << str + word[-1]
      next
    elsif word.empty?
      modified << str
      next
    end

    word[0], word[-1] = word[-1], word[0]
    str += word
    modified << str
  end
  modified.join(' ')
end

p decipher_this("65 119esi 111dl 111lw 108dvei 105n 97n 111ka") == "A wise old owl lived in an oak"
p decipher_this("84eh 109ero 104e 115wa 116eh 108sse 104e 115eokp") == "The more he saw the less he spoke"
p decipher_this("84eh 108sse 104e 115eokp 116eh 109ero 104e 104dare") == "The less he spoke the more he heard"
p decipher_this("87yh 99na 119e 110to 97ll 98e 108eki 116tah 119esi 111dl 98dri") == "Why can we not all be like that wise old bird"
p decipher_this("84kanh 121uo 80roti 102ro 97ll 121ruo 104ple") == "Thank you Piotr for all your help"
