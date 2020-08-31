1)
numbers = [1, 2, 3]
counter = 0

loop do
  break if counter == numbers.size
  puts numbers[counter]
  counter += 1
end

numbers.each do |num|
  puts num
end

2)
hash = { a: 1, b: 2, c: 3 }

hash.each do |key, value|
  puts "The key is #{key} and the value is #{value}"
end

3)
def a_method
  [1, 2 ,3].each do |num|
    puts num * 2
  end
  puts 'hi' # returns nil
end

p a_method
