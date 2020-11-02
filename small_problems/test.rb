=begin



=end

ALPHS = ('a'..'z').to_a

def get_value(word)
  value = 0
  word.chars.each do |char|
    value += ALPHS.index(char) + 1
  end
  value
end

def high(x)
  words_arr = x.split
  answer = words_arr[0]
  words_arr.each do |word|
    if get_value(answer) < get_value(word)
      answer = word 
    end
  end
  answer
end

p high('man i need a taxi up to ubud') == 'taxi'
p high('what time are we climbing up the volcano') == 'volcano'
p high('take me to semynak') == 'semynak'
p high('aaa b') == 'aaa'