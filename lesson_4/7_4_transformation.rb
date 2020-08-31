def multiply(array, multiplier)
  multiplied = []
  counter = 0

  loop do
    break if counter == array.size

    multiplied << array[counter] * multiplier

    counter += 1
  end

  multiplied
end

my_numbers = [1, 4, 3, 7, 2, 6]
p multiply(my_numbers, 3)
