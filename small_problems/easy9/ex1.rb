=begin

Create a method takes 2 arguments (array, hash)
Array will contain 2 or more elements combined make up a name
Hash contain two keys 
Retunr a greeting

Just use string interpolation
=end

def greetings(arr, hsh)
  "Hello, #{arr.join(' ')}! Nice to have a #{hsh[:title]} "\
  "#{hsh[:occupation]} around."
end

p greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
