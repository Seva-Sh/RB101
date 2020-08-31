def select_letter(text, letter)
  letters = ''
  counter = 0

  loop do
    break if counter == text.size

    letters << text[counter] if text[counter] == letter

    counter += 1
  end
  letters
end

question = 'How many times does a particular character appear in this sentence?'
p select_letter(question, 'a') # => "aaaaaaaa"
p select_letter(question, 't') # => "ttttt"
p select_letter(question, 'z') # => ""
