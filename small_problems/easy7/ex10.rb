# Write a method that returns the next to last word in the string
# passed to it as an argument

def give_str
  str = ''
  loop do
    puts 'Please enter a string sentence: '
    str = gets.chomp
    return str if str =~ /[A-Za-z]/
    puts "Sorry, you can only enter a string here."
  end
end

def penultimate
  arr_str = give_str.split
  if arr_str.size == 1 || arr_str.size == 2
    arr_str[0]
  elsif arr_str.size.odd?
    arr_str[(arr_str.size / 2)]
  else
    arr_str[(arr_str.size / 2) - 1]
  end
end

p penultimate
