1) [1, 2, 3]

numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers

2)
  1. != means not equals
  2. !user_name reverse the value of the object
  3. words.uniq! it will mutate the caller, destructible method
  4. ? : ternary operator for if..else
  5. returns a boolean result
  6. reverses the result twice

3)
advice = "Few things in life are as important as house training your pet dinosaur."
p advice.gsub!(/\bimportant\b/, 'urgent')

4)
numbers = [1, 2, 3, 4, 5]
numbers.delete_at(1)
p numbers
# [1,3,4,5]
numbers = [1, 2, 3, 4, 5]
numbers.delete(1)
p numbers
# [2, 3, 4, 5]

5)
(10..100).each { |num| puts num}
p (10..100).cover?(42)

6)
famous_words = "seven years ago..."
p "Four score and " + famous_words
p "Four score and ".concat(famous_words)
p famous_words.prepend("Four score and ")

7)
flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]
flintstones.flatten!
p flintstones

8)
flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
p flintstones.assoc('Barney')
