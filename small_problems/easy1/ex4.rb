# Method counts number of occurences of each element in an array (1 array)
#
# Make a hash and save key value pairs in it, incrementing the number of
# occurences every time the same key appears in an array
#
# Iterate over the hash and print each element with the value.

def count_occurrences(array)
  occurences = {}

  array.each do |vehicle|
    if occurences.include?(vehicle.downcase)
      occurences[vehicle.downcase] += 1
    else
      occurences[vehicle.downcase] = 1
    end
  end

  occurences.each do |type, number|
    puts "#{type} => #{number}"
  end
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)
