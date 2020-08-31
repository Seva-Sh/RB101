# Write a method that takes a short line of text and prints it in a box

def text_line(text)
  if text.size <= 76
    puts '| ' + text + ' |'
  else
    while text.size > 76
      puts '| ' + text[0, 76] + ' |'
      text.slice!(0..75)
    end

    puts '| ' + text + (' ' * (76 - text.size)) + ' |'
  end
end

def box_print(text)
  length = text.length

  outer_line = length > 76 ? '+-' + ('-' * 76) + '-+' : '+-' + ('-' * length) + '-+'
  empty_line = length > 76 ? '| ' + (' ' * 76) + ' |' : '| ' + (' ' * length) + ' |'
  puts outer_line
  puts empty_line
  text_line(text)
  puts empty_line
  puts outer_line
end

puts box_print('To boldly go where no one has gone before.')
