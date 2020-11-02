=begin

Create a method takes two integers as arguments
First arg is count and second is first num of sequence 
Return an array that contains same num of elements as the count arg
where values will be multiples of the starting num

Use the count variable with some method to control the number of iterations
needed to build the answer Array
Upon each iteration double the value, append new value to new array 

=end

def sequence(count, seq_num)
  arr = []
  1.upto(count) do |num|
    arr << (seq_num * num)
  end
  arr
end

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []