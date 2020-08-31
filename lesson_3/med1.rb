1)
text = "The Flintstones Rock!"
10.times do
  puts text.insert(0, " ")
end
or
10.times { |number| puts (" " * number) + "The Flintstones Rock!"}

2)
puts "the value of 40 + 2 is " + (40 + 2).to_s
puts "the value of 40 + 2 is " + "#{(40 + 2)}"

3)
def factors(number)
  divisor = number
  factors = []
  begin
    factors << number / divisor if number % divisor == 0 # because it is an integer,
    divisor -= 1 #  we have to make sure division does not leave any remainders
  end until divisor == 0
  factors # returns the factors object
end

while divisor > 0 do
  factors << number / divisor if number % divisor == 0
  divisor -= 1
end

def factors(number)
  divisor = number
  factors = []
  loop do
    if divisor > 0
      factors << number / divisor if number % divisor == 0
      divisor -= 1
    else
      break
    end
  end
  factors
end

4)
def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end
this will edit the original buffer variable, input argument called "buffer"

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end
this will return a new array

5)
limit = 15

def fib(first_num, second_num, limit)
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1, limit)
puts "result is #{result}"

6)
answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8
34

7) !!!
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}
p munsters.object_id
def mess_with_demographics(demo_hash)
  demo_hash.values.each do |family_member|
    family_member["age"] += 42
    family_member["gender"] = "other"
  end
end

mess_with_demographics(munsters)

p munsters.object_id

8)
def rps(fist1, fist2)
  if fist1 == "rock"
    (fist2 == "paper") ? "paper" : "rock"
  elsif fist1 == "paper"
    (fist2 == "scissors") ? "scissors" : "paper"
  else
    (fist2 == "rock") ? "rock" : "scissors"
  end
end

puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")

9)
def foo(param = "no")
  "no"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

p bar(foo)
foo WAS CALLED
