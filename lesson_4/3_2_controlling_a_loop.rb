infinite
loop do
  puts 'Hello!'
end

once
loop do
  puts 'Hello!'
  break
end

condition
loop do
  number = rand(1..10)   # a random number between 1 and 10
  puts 'Hello!'
  if number == 5
    puts 'Exiting...'
    break
  end
end
