def fizzbuzz(num1, num2)
  answer = []
  (num1..num2).each do |num|
    if num % 15 == 0
      answer << 'FizzBuzz'
    elsif num % 5 == 0
      answer << 'Buzz'
    elsif num % 3 == 0
      answer << 'Fizz'
    else
      answer << num
    end
  end
  answer.join(', ')
end

# def fizzbuzz(num1, num2)
#   num1.upto(num2) do |num|
#     if num % 15 == 0
#       puts 'FizzBuzz'
#     elsif num % 5 == 0
#       puts 'Buzz'
#     elsif num % 3 == 0
#       puts 'Fizz'
#     else
#       puts num
#     end
#   end
# end

p fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
