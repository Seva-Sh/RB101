=begin 

Problem:
- Method accepts a string and returns the same string with all even
- indexed chars in each word uppercasedm and all odd indexed chars
- in each word lowercased
- 
- 

Input: str
Output: str

Algorithm:
- Split the string str into an rray of words arr
- Iterate over each element of the array arr
    Iterate over each letter of the word, using indexing (upto)
    if idx even -> upcase, if idx odd -> downcase
- Join the edited words back into a sentence with spaces

=end

def weirdcase(str)
  arr = str.split 
  arr.each do |word|
    0.upto(word.size - 1) do |idx|
      if idx.even?
        word[idx] = word[idx].upcase 
      else
        word[idx] = word[idx].downcase
      end
    end
  end
  arr.join(' ')
end

p weirdcase('This') == 'ThIs'
p weirdcase('is') == 'Is'
p weirdcase('This is a test') == 'ThIs Is A TeSt'
