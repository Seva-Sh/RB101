1.
flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
hash = {}

flintstones.each_with_index do |item, index|
  hash[item] = index
end
p hash

2.
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
sum = 0

ages.each do |name, age|
  age
end

ages.each { |_, age| sum += age }
p sum

ages.values.inject(:+)

3.
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages.delete_if { |name, age| age > 100 }

ages.each do |name, age|
  ages.delete(name) if age > 100
end

p ages

4.
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
minimum = ages.values.min
minimum = ages.values.sort[0]

p minimum

5.
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
ind = 0

flintstones.each_with_index do |name, index|
  ind = index if name.start_with?('Be')
end

p flintstones.index { |name| name[0, 2] == 'Be' }

p ind

6.
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

edited = flintstones.map { |name| name[0,3] }

p edited

7.
statement = "The Flintstones Rock"
chars = {}

statement.each_char do |char|
  if chars.has_key?(char)
    chars[char] += 1
  else
    chars[char] = 1
  end
end

p chars

result = {}
letters = ("A"..'Z').to_a + ('a'..'z').to_a
letters.each do |letter|
  letter_frequency = statement.scan(letter).count
  result[letter] = letter_frequency if letter_frequency > 0
end

8.
numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end
p numbers

9.
words = "the flintstones rock"
p words.split.each { |word| word.capitalize! }.join(' ')
words.split.map { |word| word.capitalize }.join(' ')

10.
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

age_range = {
  'kid' => (0..17), 'adult' => (18..64), 'senior' => (65..)
}

munsters.each do |name, details|
  age = details['age']
  age_name = nil
  age_range.each do |group, number|
    age_name = group if number.include?(age)
  end
  details['age_group'] = age_name
end

munsters.each do |name, details|
  case details['age']
  when 0..17
    details['age_group'] = 'kid'
  when 18..64
    details['age_group'] = 'adult'
  else
    details['age_group'] = 'senior'
  end
end

p munsters
