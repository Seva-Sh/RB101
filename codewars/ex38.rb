=begin 

Problem:
- Change case of every char, lower tp upper and vice versa
- Reverse the order of  words from the input
- 
- 
- 

Input: str
Output: str

Algorithm:
- Break the given string into an array of words, and reverse the position of the words
- Iterate over each word 
    each iteration, iterate over each letter of the word, changing cases within it 
- 

=end

def count_spaces(str)
  spaces = []
  count = 0
  0.upto(str.size - 1) do |idx|
    if str[0] != ' ' && idx == 0
      spaces << 0 
    elsif str[str.size - 1] != ' ' && idx == str.size - 1
      spaces << 0
      break
    end
    
    if idx == str.size - 1
      count += 1
      spaces << count
    elsif str[idx] == ' ' && str[idx + 1] == ' '
      count += 1
    elsif str[idx] == ' ' && str[idx + 1] != ' '
      count += 1
      spaces << count 
      count = 0
    end
  end
  spaces 
end

def join_words(arr, str)
  idx = 0
  new_str = ''
  iterations = (arr.size + str.size) - 1
  loop do
    break if idx > iterations
    if idx.even?
      new_str += ' ' * arr.shift 
    elsif idx.odd?
      new_str += str.shift
    end
    idx += 1
  end
  new_str
end

def string_transformer(str)
  arr = str.split.reverse
  sp_count = count_spaces(str).reverse

  arr.each do |word|
    0.upto(word.size - 1) do |idx|
      if word[idx].downcase == word[idx]
        word[idx] = word[idx].upcase
      else  
        word[idx] = word[idx].downcase
      end
    end
  end
  join_words(sp_count, arr)
end

p string_transformer(' A b C d E f G ') 
# p string_transformer('You Know When  THAT Hotline Bling')