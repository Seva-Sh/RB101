1)
if false
  greeting = “hello world”
end

greeting
greeting is initialized as nil, even tho if block never gets executed

2)
greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings # same hash
# String#<< modifies the object that called it
# Could you string concatenation or cloning instead

3)
def mess_with_vars(one, two, three)
  one = two
  two = three
  three = one
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}" # one
puts "two is: #{two}" # two
puts "three is: #{three}" # three

def mess_with_vars(one, two, three)
  one = "two"
  two = "three"
  three = "one"
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}" # same
puts "two is: #{two}" # same
puts "three is: #{three}" # same

def mess_with_vars(one, two, three)
  one.gsub!("one","two")
  two.gsub!("two","three")
  three.gsub!("three","one")
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}" # 2
puts "two is: #{two}" # 3
puts "three is: #{three}" # 1

4)
def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false unless dot_separated_words == 4

  while dot_separated_words > 0 do
    word = dot_separated_words.pop
    return false unless is_an_ip_number?(word)
  end
  true
end
