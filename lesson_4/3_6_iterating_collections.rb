alphabet = 'abcdefghijklmnopqrstuvwxyz'
counter = 0

loop do
  break if counter == alphabet.size
  puts alphabet[counter]
  counter += 1
end

colors= ['green', :key, 10, []]
counter = 0

loop do
  break if counter == colors.size
  puts colors[counter].class
  counter += 1
end

number_of_pets = {
  'dogs' => 2,
  'cats' => 4,
  'fish' => 1
}

pets = number_of_pets.keys
counter = 0

loop do
  break if counter == pets.size
  puts number_of_pets[pets[counter]]
  counter += 1
end
