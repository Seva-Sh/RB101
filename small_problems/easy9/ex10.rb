=begin

Write a method which takes a grocery list array of fruits with quantities
converts it inti an array of correct number of each fruit 

=end

3.times { |num| p num}

def buy_fruit(array)
  new_arr = []
  array.each do |arr|
    1.upto(arr[1]) { |_| new_arr << arr[0] }
  end
  new_arr
end

def buy_fruit(array)
  array.map { |fruit, quantity| [fruit] * quantity }.flatten
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]